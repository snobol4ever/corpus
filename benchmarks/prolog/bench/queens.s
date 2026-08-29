                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1232
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sel$2F3_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_38_102
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_38_101
.Lcall_prolog_α_38_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_38_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_38_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_38_101
.Lcall_prolog_α_38_100: lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_38_101: mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   sel$2F3_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n2_lit_integer_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n3_lit_integer_α
.Llit_integer_α_41_0:   .quad            3
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_42_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n4_call_prolog_α
.Llit_integer_α_42_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_prolog_bx, @function
n4_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lcall_prolog_α_43_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_43_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_43_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_43_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_43_110
.Lcall_prolog_α_43_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_43_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_43_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_43_110
.Lcall_prolog_α_43_113: cmp              al, 72;                              jne   .Lcall_prolog_α_43_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_43_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_43_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_43_110
.Lcall_prolog_α_43_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_43_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_43_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_43_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_43_114
                                                                              jmp   .Lcall_prolog_α_43_118
.Lcall_prolog_α_43_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_43_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_43_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_43_115
                                                                              jmp   .Lcall_prolog_α_43_114
.Lcall_prolog_α_43_119: cmp              al, 3;                               jne   .Lcall_prolog_α_43_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_43_114
                                                                              jmp   .Lcall_prolog_α_43_115
.Lcall_prolog_α_43_120: cmp              al, 2;                               jne   .Lcall_prolog_α_43_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_43_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_43_114
                                                                              jmp   .Lcall_prolog_α_43_115
.Lcall_prolog_α_43_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_43_117
.Lcall_prolog_α_43_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_43_117
.Lcall_prolog_α_43_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_43_117: mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n17_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n17_var_ref_α
                        .size            n4_call_prolog_bx, .-n4_call_prolog_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n6_var_ref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n8_call_prolog_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_prolog_bx, @function
n8_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lcall_prolog_α_50_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_50_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_50_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_50_60
.Lcall_prolog_α_50_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_50_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_50_60
.Lcall_prolog_α_50_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_50_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_50_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_50_60
.Lcall_prolog_α_50_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_50_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_50_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_50_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_50_80
                                                                              jmp   .Lcall_prolog_α_50_74
.Lcall_prolog_α_50_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_50_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_50_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_50_73
                        lea              r9, [rsp + 944]
.Lcall_prolog_α_50_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_50_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_50_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_64
.Lcall_prolog_α_50_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_50_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_64
.Lcall_prolog_α_50_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_50_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_50_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_64
.Lcall_prolog_α_50_65:  lea              rcx, [rsp + 960]
.Lcall_prolog_α_50_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_50_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_50_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_68
.Lcall_prolog_α_50_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_50_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_68
.Lcall_prolog_α_50_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_50_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_50_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_68
.Lcall_prolog_α_50_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_50_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_50_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_50_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_50_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_50_75
                                                                              jmp   .Lcall_prolog_α_50_72
.Lcall_prolog_α_50_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_50_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_50_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_50_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_50_76
                                                                              jmp   .Lcall_prolog_α_50_72
.Lcall_prolog_α_50_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_50_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_50_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_50_77
.Lcall_prolog_α_50_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_50_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_50_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_50_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_50_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_50_72
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
                        lea              r9, [rsp + 944]
.Lcall_prolog_α_50_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_50_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_50_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_81
.Lcall_prolog_α_50_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_50_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_81
.Lcall_prolog_α_50_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_50_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_50_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_50_81
.Lcall_prolog_α_50_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_50_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_50_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_50_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_50_85
                                                                              jmp   .Lcall_prolog_α_50_86
.Lcall_prolog_α_50_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_50_87
.Lcall_prolog_α_50_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_50_87:  lea              rcx, [rsp + 960]
.Lcall_prolog_α_50_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_50_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_50_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_88
.Lcall_prolog_α_50_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_50_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_88
.Lcall_prolog_α_50_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_50_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_50_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_50_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_50_88
.Lcall_prolog_α_50_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_50_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_50_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_50_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_50_92
                                                                              jmp   .Lcall_prolog_α_50_93
.Lcall_prolog_α_50_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_50_94
.Lcall_prolog_α_50_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_50_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_50_77
.Lcall_prolog_α_50_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_50_77
.Lcall_prolog_α_50_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_50_77:  mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   n16_call_prolog_α
                        .size            n8_call_prolog_bx, .-n8_call_prolog_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_call_prolog_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_prolog_bx, @function
n11_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
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
.Lcall_prolog_α_55_41:  lea              r9, [rsp + 848]
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
.Lcall_prolog_α_55_54:  mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n16_call_prolog_α
                        .size            n11_call_prolog_bx, .-n11_call_prolog_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n14_call_prolog_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_prolog_bx, @function
n14_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
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
.Lcall_prolog_α_60_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_60_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_60_40
.Lcall_prolog_α_60_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_60_40
.Lcall_prolog_α_60_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_60_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_60_40
.Lcall_prolog_α_60_41:  lea              r9, [rsp + 768]
.Lcall_prolog_α_60_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_60_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_60_42
.Lcall_prolog_α_60_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_60_42
.Lcall_prolog_α_60_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_60_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_60_42
.Lcall_prolog_α_60_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_60_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_60_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_60_44
                                                                              jmp   .Lcall_prolog_α_60_45
.Lcall_prolog_α_60_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_60_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_60_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_60_53
                                                                              jmp   .Lcall_prolog_α_60_46
.Lcall_prolog_α_60_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_60_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_60_51
.Lcall_prolog_α_60_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_60_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_60_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_60_47
                                                                              jmp   .Lcall_prolog_α_60_48
.Lcall_prolog_α_60_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_60_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_60_51
.Lcall_prolog_α_60_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_60_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_60_53
                                                                              jmp   .Lcall_prolog_α_60_52
.Lcall_prolog_α_60_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_60_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_60_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_60_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_60_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_60_51
                                                                              jmp   .Lcall_prolog_α_60_52
.Lcall_prolog_α_60_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_60_53
.Lcall_prolog_α_60_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_60_54
.Lcall_prolog_α_60_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_60_54
.Lcall_prolog_α_60_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_60_54:  mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n15_suspend_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   n16_call_prolog_α
                        .size            n14_call_prolog_bx, .-n14_call_prolog_bx
                        .type            n15_suspend_bx, @function
n15_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_62_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lsuspend_α_62_61:      mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n15_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n15_suspend_β:          mov              r11, 16;                             jmp   n16_call_prolog_α
                        .size            n15_suspend_bx, .-n15_suspend_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
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
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n17_var_ref_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   sel$2F3_ω
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n18_lit_integer_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_66_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n19_lit_integer_α
.Llit_integer_α_66_0:   .quad            3
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_67_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n20_call_prolog_α
.Llit_integer_α_67_0:   .quad            0
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
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
.Lcall_prolog_α_68_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_68_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_68_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_110
.Lcall_prolog_α_68_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_68_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_110
.Lcall_prolog_α_68_113: cmp              al, 72;                              jne   .Lcall_prolog_α_68_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_68_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_110
.Lcall_prolog_α_68_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_68_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_68_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_68_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_68_114
                                                                              jmp   .Lcall_prolog_α_68_118
.Lcall_prolog_α_68_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_68_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_68_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_68_115
                                                                              jmp   .Lcall_prolog_α_68_114
.Lcall_prolog_α_68_119: cmp              al, 3;                               jne   .Lcall_prolog_α_68_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_68_114
                                                                              jmp   .Lcall_prolog_α_68_115
.Lcall_prolog_α_68_120: cmp              al, 2;                               jne   .Lcall_prolog_α_68_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_68_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_68_114
                                                                              jmp   .Lcall_prolog_α_68_115
.Lcall_prolog_α_68_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_68_117
.Lcall_prolog_α_68_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_68_117
.Lcall_prolog_α_68_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_68_117: mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   n37_call_prolog_α
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n23_var_ref_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n24_call_prolog_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_call_prolog_bx, @function
n24_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_prolog_α:      mov              r11, 25
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
.Lcall_prolog_α_75_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_75_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_75_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_75_60
.Lcall_prolog_α_75_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_75_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_75_60
.Lcall_prolog_α_75_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_75_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_75_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_75_60
.Lcall_prolog_α_75_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_75_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_75_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_75_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_75_80
                                                                              jmp   .Lcall_prolog_α_75_74
.Lcall_prolog_α_75_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_75_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_75_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_75_73
                        lea              r9, [rsp + 512]
.Lcall_prolog_α_75_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_75_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_75_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_64
.Lcall_prolog_α_75_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_75_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_64
.Lcall_prolog_α_75_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_75_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_75_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_64
.Lcall_prolog_α_75_65:  lea              rcx, [rsp + 528]
.Lcall_prolog_α_75_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_75_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_75_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_68
.Lcall_prolog_α_75_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_75_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_68
.Lcall_prolog_α_75_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_75_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_75_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_68
.Lcall_prolog_α_75_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_75_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_75_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_75_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_75_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_75_75
                                                                              jmp   .Lcall_prolog_α_75_72
.Lcall_prolog_α_75_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_75_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_75_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_75_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_75_76
                                                                              jmp   .Lcall_prolog_α_75_72
.Lcall_prolog_α_75_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_75_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_75_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_75_77
.Lcall_prolog_α_75_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_75_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_75_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_75_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_75_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_75_72
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
.Lcall_prolog_α_75_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_75_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_75_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_81
.Lcall_prolog_α_75_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_75_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_81
.Lcall_prolog_α_75_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_75_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_75_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_75_81
.Lcall_prolog_α_75_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_75_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_75_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_75_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_75_85
                                                                              jmp   .Lcall_prolog_α_75_86
.Lcall_prolog_α_75_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_75_87
.Lcall_prolog_α_75_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_75_87:  lea              rcx, [rsp + 528]
.Lcall_prolog_α_75_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_75_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_75_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_88
.Lcall_prolog_α_75_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_75_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_88
.Lcall_prolog_α_75_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_75_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_75_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_75_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_75_88
.Lcall_prolog_α_75_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_75_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_75_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_75_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_75_92
                                                                              jmp   .Lcall_prolog_α_75_93
.Lcall_prolog_α_75_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_75_94
.Lcall_prolog_α_75_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_75_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_75_77
.Lcall_prolog_α_75_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_75_77
.Lcall_prolog_α_75_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_75_77:  mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n25_var_ref_α
n24_call_prolog_β:      mov              r11, 25;                             jmp   n37_call_prolog_α
                        .size            n24_call_prolog_bx, .-n24_call_prolog_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n28_call_prolog_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lcall_prolog_α_82_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_60
.Lcall_prolog_α_82_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_82_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_60
.Lcall_prolog_α_82_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_82_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_82_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_60
.Lcall_prolog_α_82_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_82_80
                                                                              jmp   .Lcall_prolog_α_82_74
.Lcall_prolog_α_82_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_82_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_82_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_82_73
                        lea              r9, [rsp + 400]
.Lcall_prolog_α_82_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_64
.Lcall_prolog_α_82_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_82_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_64
.Lcall_prolog_α_82_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_82_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_82_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_64
.Lcall_prolog_α_82_65:  lea              rcx, [rsp + 416]
.Lcall_prolog_α_82_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_68
.Lcall_prolog_α_82_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_82_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_68
.Lcall_prolog_α_82_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_82_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_82_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_68
.Lcall_prolog_α_82_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_82_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_82_75
                                                                              jmp   .Lcall_prolog_α_82_72
.Lcall_prolog_α_82_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_82_76
                                                                              jmp   .Lcall_prolog_α_82_72
.Lcall_prolog_α_82_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_82_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_82_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_82_77
.Lcall_prolog_α_82_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_82_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_82_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_82_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_82_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_82_72
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
                        lea              r9, [rsp + 400]
.Lcall_prolog_α_82_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_81
.Lcall_prolog_α_82_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_82_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_81
.Lcall_prolog_α_82_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_82_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_82_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_82_81
.Lcall_prolog_α_82_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_82_85
                                                                              jmp   .Lcall_prolog_α_82_86
.Lcall_prolog_α_82_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_82_87
.Lcall_prolog_α_82_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_82_87:  lea              rcx, [rsp + 416]
.Lcall_prolog_α_82_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_88
.Lcall_prolog_α_82_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_82_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_88
.Lcall_prolog_α_82_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_82_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_82_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_82_88
.Lcall_prolog_α_82_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_82_92
                                                                              jmp   .Lcall_prolog_α_82_93
.Lcall_prolog_α_82_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_82_94
.Lcall_prolog_α_82_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_82_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_82_77
.Lcall_prolog_α_82_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_82_77
.Lcall_prolog_α_82_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_82_77:  mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n29_var_ref_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n37_call_prolog_α
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n30_var_ref_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n31_call_prolog_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_call_prolog_bx, @function
n31_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_prolog_α:      mov              r11, 32
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        lea              r8, [rsp + 288]
.Lcall_prolog_α_87_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_87_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_87_40
.Lcall_prolog_α_87_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_87_40
.Lcall_prolog_α_87_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_87_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_87_40
.Lcall_prolog_α_87_41:  lea              r9, [rsp + 304]
.Lcall_prolog_α_87_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_87_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_87_42
.Lcall_prolog_α_87_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_87_42
.Lcall_prolog_α_87_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_87_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_87_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_87_42
.Lcall_prolog_α_87_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_87_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_87_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_87_44
                                                                              jmp   .Lcall_prolog_α_87_45
.Lcall_prolog_α_87_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_87_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_87_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_87_53
                                                                              jmp   .Lcall_prolog_α_87_46
.Lcall_prolog_α_87_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_87_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_87_51
.Lcall_prolog_α_87_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_87_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_87_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_87_47
                                                                              jmp   .Lcall_prolog_α_87_48
.Lcall_prolog_α_87_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_87_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_87_51
.Lcall_prolog_α_87_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_87_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_87_53
                                                                              jmp   .Lcall_prolog_α_87_52
.Lcall_prolog_α_87_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_87_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_87_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_87_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_87_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_87_51
                                                                              jmp   .Lcall_prolog_α_87_52
.Lcall_prolog_α_87_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_87_53
.Lcall_prolog_α_87_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_87_54
.Lcall_prolog_α_87_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_87_54
.Lcall_prolog_α_87_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_87_54:  mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n32_var_ref_α
n31_call_prolog_β:      mov              r11, 32;                             jmp   n37_call_prolog_α
                        .size            n31_call_prolog_bx, .-n31_call_prolog_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n33_var_ref_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n34_var_ref_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n35_call_proc_staged_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_call_proc_staged_bx, @function
n35_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: mov              r11, 36
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_95_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_95_201
.Lcall_proc_staged_α_95_200:
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
.Lcall_proc_staged_α_95_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_95_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_95_203
.Lcall_proc_staged_α_95_202:
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
.Lcall_proc_staged_α_95_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_95_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_95_205
.Lcall_proc_staged_α_95_204:
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
.Lcall_proc_staged_α_95_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_95_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_95_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_95_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_95_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_95_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_95_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_95_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_95_2
.Lcall_proc_staged_α_95_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_95_2
.Lcall_proc_staged_α_95_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_95_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_95_2
.Lcall_proc_staged_α_95_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_95_2
.Lcall_proc_staged_α_95_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_95_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_call_prolog_α
.Lcall_proc_staged_α_95_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_95_29
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
.Lcall_proc_staged_α_95_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n36_suspend_α
n35_call_proc_staged_β: mov              r11, 36
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
                        test             rax, rax;                            je    n37_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1120
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
                        test             rax, rax;                            je    n37_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_95_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_95_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_95_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_95_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_95_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n36_suspend_α
.Lcall_proc_staged_α_95_0:
                        .quad            .Lcall_proc_staged_α_95_0_s
.Lcall_proc_staged_α_95_0_s:
                        .string          "sel/3"
                        .size            n35_call_proc_staged_bx, .-n35_call_proc_staged_bx
                        .type            n36_suspend_bx, @function
n36_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:          mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_97_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lsuspend_α_97_61:      mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n36_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n36_suspend_β:          mov              r11, 37;                             jmp   n35_call_proc_staged_β
                        .size            n36_suspend_bx, .-n36_suspend_bx
                        .type            n37_call_prolog_bx, @function
n37_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_prolog_α:      mov              r11, 38
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
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   sel$2F3_ω
n37_call_prolog_β:      mov              r11, 38;                             jmp   sel$2F3_ω
                        .size            n37_call_prolog_bx, .-n37_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_β:
                                                                              jmp   n15_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lsel$2F3_α_98_50
                        mov              qword ptr [rsp + 1120], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lsel$2F3_α_98_50:      mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F3:
                        sub              rsp, 1424
                        mov              qword ptr [rsp + 1400], rcx
                        mov              qword ptr [rsp + 1408], rdx
                        mov              qword ptr [rsp + 1416], rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F3_α_body:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        .type            n99_call_prolog_bx, @function
n99_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_prolog_α:      mov              r11, 39
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_140_102
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_140_101
.Lcall_prolog_α_140_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_140_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_140_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_140_101
.Lcall_prolog_α_140_100:
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
.Lcall_prolog_α_140_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   n100_var_ref_α
n99_call_prolog_β:      mov              r11, 39;                             jmp   queens$2F3_ω
                        .size            n99_call_prolog_bx, .-n99_call_prolog_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n101_lit_integer_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 41
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n102_lit_string_α
.Llit_integer_α_143_0:  .quad            2
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_lit_string_bx, @function
n102_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 42
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_144_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n103_call_prolog_α
.Llit_string_α_144_0:   .quad            .Llit_string_α_144_0_s
.Llit_string_α_144_0_s: .string          "[]"
                        .size            n102_lit_string_bx, .-n102_lit_string_bx
                        .type            n103_call_prolog_bx, @function
n103_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_prolog_α:     mov              r11, 43
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        lea              r8, [rsp + 1184]
.Lcall_prolog_α_145_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_145_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_145_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_145_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_145_110
.Lcall_prolog_α_145_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_145_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_145_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_145_110
.Lcall_prolog_α_145_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_145_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_145_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_145_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_145_110
.Lcall_prolog_α_145_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_145_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_145_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_145_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_145_114
                                                                              jmp   .Lcall_prolog_α_145_118
.Lcall_prolog_α_145_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_145_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_145_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_145_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_145_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_145_114
                                                                              jmp   .Lcall_prolog_α_145_116
.Lcall_prolog_α_145_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_145_117
.Lcall_prolog_α_145_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_145_117
.Lcall_prolog_α_145_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_145_117:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n115_var_ref_α
                                                                              jmp   n104_var_ref_α
n103_call_prolog_β:     mov              r11, 43;                             jmp   n115_var_ref_α
                        .size            n103_call_prolog_bx, .-n103_call_prolog_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n105_lit_string_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_lit_string_bx, @function
n105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_148_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n106_call_prolog_α
.Llit_string_α_148_0:   .quad            .Llit_string_α_148_0_s
.Llit_string_α_148_0_s: .string          "[]"
                        .size            n105_lit_string_bx, .-n105_lit_string_bx
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 46
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_149_2]
                                                                              jmp   .Lcall_prolog_α_149_3
.Lcall_prolog_α_149_2:  .quad            .Lcall_prolog_α_149_2_s
.Lcall_prolog_α_149_2_s:
                        .string          "[]"
.Lcall_prolog_α_149_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 46;                             jmp   n114_call_prolog_α
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n109_call_prolog_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 49
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lcall_prolog_α_154_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_154_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_154_40
.Lcall_prolog_α_154_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_154_40
.Lcall_prolog_α_154_56: cmp              al, 72;                              jne   .Lcall_prolog_α_154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_154_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_154_40
.Lcall_prolog_α_154_41: lea              r9, [rsp + 1040]
.Lcall_prolog_α_154_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_154_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_154_42
.Lcall_prolog_α_154_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_154_42
.Lcall_prolog_α_154_58: cmp              al, 72;                              jne   .Lcall_prolog_α_154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_154_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_154_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_154_42
.Lcall_prolog_α_154_43: cmp              r8, r9;                              je    .Lcall_prolog_α_154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_154_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_154_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_154_44
                                                                              jmp   .Lcall_prolog_α_154_45
.Lcall_prolog_α_154_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_154_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_154_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_154_53
                                                                              jmp   .Lcall_prolog_α_154_46
.Lcall_prolog_α_154_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_154_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_154_51
.Lcall_prolog_α_154_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_154_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_154_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_154_47
                                                                              jmp   .Lcall_prolog_α_154_48
.Lcall_prolog_α_154_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_154_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_154_51
.Lcall_prolog_α_154_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_154_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_154_53
                                                                              jmp   .Lcall_prolog_α_154_52
.Lcall_prolog_α_154_49: cmp              dl, 80;                              je    .Lcall_prolog_α_154_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_154_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_154_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_154_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_154_51
                                                                              jmp   .Lcall_prolog_α_154_52
.Lcall_prolog_α_154_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_154_53
.Lcall_prolog_α_154_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_154_54
.Lcall_prolog_α_154_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_154_54
.Lcall_prolog_α_154_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_154_54: mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n110_var_ref_α
n109_call_prolog_β:     mov              r11, 49;                             jmp   n114_call_prolog_α
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n111_var_ref_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n112_call_prolog_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_call_prolog_bx, @function
n112_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_prolog_α:     mov              r11, 52
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        lea              r8, [rsp + 944]
.Lcall_prolog_α_159_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_159_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_159_40
.Lcall_prolog_α_159_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_159_40
.Lcall_prolog_α_159_56: cmp              al, 72;                              jne   .Lcall_prolog_α_159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_159_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_159_40
.Lcall_prolog_α_159_41: lea              r9, [rsp + 960]
.Lcall_prolog_α_159_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_159_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_159_42
.Lcall_prolog_α_159_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_159_42
.Lcall_prolog_α_159_58: cmp              al, 72;                              jne   .Lcall_prolog_α_159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_159_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_159_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_159_42
.Lcall_prolog_α_159_43: cmp              r8, r9;                              je    .Lcall_prolog_α_159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_159_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_159_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_159_44
                                                                              jmp   .Lcall_prolog_α_159_45
.Lcall_prolog_α_159_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_159_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_159_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_159_53
                                                                              jmp   .Lcall_prolog_α_159_46
.Lcall_prolog_α_159_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_159_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_159_51
.Lcall_prolog_α_159_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_159_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_159_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_159_47
                                                                              jmp   .Lcall_prolog_α_159_48
.Lcall_prolog_α_159_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_159_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_159_51
.Lcall_prolog_α_159_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_159_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_159_53
                                                                              jmp   .Lcall_prolog_α_159_52
.Lcall_prolog_α_159_49: cmp              dl, 80;                              je    .Lcall_prolog_α_159_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_159_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_159_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_159_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_159_51
                                                                              jmp   .Lcall_prolog_α_159_52
.Lcall_prolog_α_159_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_159_53
.Lcall_prolog_α_159_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_159_54
.Lcall_prolog_α_159_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_159_54
.Lcall_prolog_α_159_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_159_54: mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n113_suspend_α
n112_call_prolog_β:     mov              r11, 52;                             jmp   n114_call_prolog_α
                        .size            n112_call_prolog_bx, .-n112_call_prolog_bx
                        .type            n113_suspend_bx, @function
n113_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_suspend_α:         mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_161_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lsuspend_α_161_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n113_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F3_γ
n113_suspend_β:         mov              r11, 53;                             jmp   n114_call_prolog_α
                        .size            n113_suspend_bx, .-n113_suspend_bx
                        .type            n114_call_prolog_bx, @function
n114_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_prolog_α:     mov              r11, 54
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   n115_var_ref_α
n114_call_prolog_β:     mov              r11, 54;                             jmp   queens$2F3_ω
                        .size            n114_call_prolog_bx, .-n114_call_prolog_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n116_var_ref_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n117_call_prolog_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_call_prolog_bx, @function
n117_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        lea              r8, [rsp + 816]
.Lcall_prolog_α_167_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_167_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_167_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_167_40
.Lcall_prolog_α_167_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_167_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_167_40
.Lcall_prolog_α_167_56: cmp              al, 72;                              jne   .Lcall_prolog_α_167_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_167_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_167_40
.Lcall_prolog_α_167_41: lea              r9, [rsp + 832]
.Lcall_prolog_α_167_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_167_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_167_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_167_42
.Lcall_prolog_α_167_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_167_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_167_42
.Lcall_prolog_α_167_58: cmp              al, 72;                              jne   .Lcall_prolog_α_167_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_167_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_167_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_167_42
.Lcall_prolog_α_167_43: cmp              r8, r9;                              je    .Lcall_prolog_α_167_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_167_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_167_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_167_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_167_44
                                                                              jmp   .Lcall_prolog_α_167_45
.Lcall_prolog_α_167_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_167_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_167_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_167_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_167_53
                                                                              jmp   .Lcall_prolog_α_167_46
.Lcall_prolog_α_167_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_167_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_167_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_167_51
.Lcall_prolog_α_167_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_167_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_167_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_167_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_167_47
                                                                              jmp   .Lcall_prolog_α_167_48
.Lcall_prolog_α_167_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_167_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_167_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_167_51
.Lcall_prolog_α_167_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_167_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_167_53
                                                                              jmp   .Lcall_prolog_α_167_52
.Lcall_prolog_α_167_49: cmp              dl, 80;                              je    .Lcall_prolog_α_167_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_167_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_167_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_167_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_167_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_167_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_167_51
                                                                              jmp   .Lcall_prolog_α_167_52
.Lcall_prolog_α_167_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_167_53
.Lcall_prolog_α_167_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_167_54
.Lcall_prolog_α_167_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_167_54
.Lcall_prolog_α_167_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_167_54: mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n118_var_ref_α
n117_call_prolog_β:     mov              r11, 57;                             jmp   n139_call_prolog_α
                        .size            n117_call_prolog_bx, .-n117_call_prolog_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n119_var_ref_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n120_call_prolog_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_call_prolog_bx, @function
n120_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lcall_prolog_α_172_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_172_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_172_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_172_40
.Lcall_prolog_α_172_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_172_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_172_40
.Lcall_prolog_α_172_56: cmp              al, 72;                              jne   .Lcall_prolog_α_172_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_172_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_172_40
.Lcall_prolog_α_172_41: lea              r9, [rsp + 752]
.Lcall_prolog_α_172_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_172_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_172_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_172_42
.Lcall_prolog_α_172_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_172_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_172_42
.Lcall_prolog_α_172_58: cmp              al, 72;                              jne   .Lcall_prolog_α_172_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_172_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_172_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_172_42
.Lcall_prolog_α_172_43: cmp              r8, r9;                              je    .Lcall_prolog_α_172_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_172_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_172_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_172_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_172_44
                                                                              jmp   .Lcall_prolog_α_172_45
.Lcall_prolog_α_172_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_172_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_172_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_172_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_172_53
                                                                              jmp   .Lcall_prolog_α_172_46
.Lcall_prolog_α_172_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_172_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_172_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_172_51
.Lcall_prolog_α_172_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_172_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_172_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_172_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_172_47
                                                                              jmp   .Lcall_prolog_α_172_48
.Lcall_prolog_α_172_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_172_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_172_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_172_51
.Lcall_prolog_α_172_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_172_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_172_53
                                                                              jmp   .Lcall_prolog_α_172_52
.Lcall_prolog_α_172_49: cmp              dl, 80;                              je    .Lcall_prolog_α_172_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_172_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_172_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_172_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_172_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_172_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_172_51
                                                                              jmp   .Lcall_prolog_α_172_52
.Lcall_prolog_α_172_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_172_53
.Lcall_prolog_α_172_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_172_54
.Lcall_prolog_α_172_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_172_54
.Lcall_prolog_α_172_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_172_54: mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n121_var_ref_α
n120_call_prolog_β:     mov              r11, 60;                             jmp   n139_call_prolog_α
                        .size            n120_call_prolog_bx, .-n120_call_prolog_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n122_var_ref_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n123_call_prolog_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_call_prolog_bx, @function
n123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 63
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lcall_prolog_α_177_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_177_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_56: cmp              al, 72;                              jne   .Lcall_prolog_α_177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_177_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_41: lea              r9, [rsp + 672]
.Lcall_prolog_α_177_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_177_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_58: cmp              al, 72;                              jne   .Lcall_prolog_α_177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_43: cmp              r8, r9;                              je    .Lcall_prolog_α_177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_177_44
                                                                              jmp   .Lcall_prolog_α_177_45
.Lcall_prolog_α_177_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_53
                                                                              jmp   .Lcall_prolog_α_177_46
.Lcall_prolog_α_177_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_177_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_177_51
.Lcall_prolog_α_177_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_47
                                                                              jmp   .Lcall_prolog_α_177_48
.Lcall_prolog_α_177_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_177_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_177_51
.Lcall_prolog_α_177_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_177_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_177_53
                                                                              jmp   .Lcall_prolog_α_177_52
.Lcall_prolog_α_177_49: cmp              dl, 80;                              je    .Lcall_prolog_α_177_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_177_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_177_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_177_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_177_51
                                                                              jmp   .Lcall_prolog_α_177_52
.Lcall_prolog_α_177_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_177_53
.Lcall_prolog_α_177_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_177_54
.Lcall_prolog_α_177_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_177_54
.Lcall_prolog_α_177_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_177_54: mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n124_var_ref_α
n123_call_prolog_β:     mov              r11, 63;                             jmp   n139_call_prolog_α
                        .size            n123_call_prolog_bx, .-n123_call_prolog_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n125_var_ref_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n126_var_ref_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n127_call_proc_staged_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_call_proc_staged_bx, @function
n127_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 67
                        mov              qword ptr [rsp + 560], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_200
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_185_201
.Lcall_proc_staged_α_185_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_202
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_185_203
.Lcall_proc_staged_α_185_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_204
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_185_205
.Lcall_proc_staged_α_185_204:
                        mov              edi, 2
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
.Lcall_proc_staged_α_185_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_185_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_185_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_185_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_185_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 568], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_185_5
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_185_6
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_185_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_call_prolog_α
.Lcall_proc_staged_α_185_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_185_29
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
.Lcall_proc_staged_α_185_29:
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n128_var_ref_α
n127_call_proc_staged_β:
                        mov              r11, 67
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 560], 0
                        lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n139_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              ecx, 64
                        mov              r8d, 1120
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        test             rax, rax;                            je    n139_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_185_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_185_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_185_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n128_var_ref_α
.Lcall_proc_staged_α_185_0:
                        .quad            .Lcall_proc_staged_α_185_0_s
.Lcall_proc_staged_α_185_0_s:
                        .string          "sel/3"
                        .size            n127_call_proc_staged_bx, .-n127_call_proc_staged_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n129_var_ref_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n130_call_proc_staged_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_call_proc_staged_bx, @function
n130_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              r11, 70
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_191_200
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_191_201
.Lcall_proc_staged_α_191_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_191_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_191_202
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_191_203
.Lcall_proc_staged_α_191_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_191_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_191_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_191_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_191_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_191_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_191_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_191_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 440], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_191_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_191_2
.Lcall_proc_staged_α_191_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_191_2
.Lcall_proc_staged_α_191_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_191_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_191_2
.Lcall_proc_staged_α_191_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_191_2
.Lcall_proc_staged_α_191_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_191_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_call_proc_staged_β
.Lcall_proc_staged_α_191_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_191_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lcall_proc_staged_α_191_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n127_call_proc_staged_β
                                                                              jmp   n131_var_ref_α
n130_call_proc_staged_β:
                        mov              r11, 70
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 432], 0
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n127_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
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
                        test             rax, rax;                            je    n127_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_191_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_191_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_191_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_191_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_191_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n127_call_proc_staged_β
                                                                              jmp   n131_var_ref_α
.Lcall_proc_staged_α_191_0:
                        .quad            .Lcall_proc_staged_α_191_0_s
.Lcall_proc_staged_α_191_0_s:
                        .string          "not_attack/2"
                        .size            n130_call_proc_staged_bx, .-n130_call_proc_staged_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n132_lit_string_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_lit_string_bx, @function
n132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n133_var_ref_α
.Llit_string_α_194_0:   .quad            .Llit_string_α_194_0_s
.Llit_string_α_194_0_s: .string          "."
                        .size            n132_lit_string_bx, .-n132_lit_string_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n134_var_ref_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n135_call_prolog_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_call_prolog_bx, @function
n135_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_prolog_α:     mov              r11, 75
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
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n136_var_ref_α
n135_call_prolog_β:     mov              r11, 75;                             jmp   n139_call_prolog_α
                        .size            n135_call_prolog_bx, .-n135_call_prolog_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n137_call_proc_staged_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_call_proc_staged_bx, @function
n137_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_203_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_203_201
.Lcall_proc_staged_α_203_200:
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
.Lcall_proc_staged_α_203_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_203_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_203_203
.Lcall_proc_staged_α_203_202:
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
.Lcall_proc_staged_α_203_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_203_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_203_205
.Lcall_proc_staged_α_203_204:
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
.Lcall_proc_staged_α_203_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_203_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_203_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_203_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_203_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_203_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_203_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_203_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_call_proc_staged_β
.Lcall_proc_staged_α_203_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_203_29
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
.Lcall_proc_staged_α_203_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n130_call_proc_staged_β
                                                                              jmp   n138_suspend_α
n137_call_proc_staged_β:
                        mov              r11, 77
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
                        test             rax, rax;                            je    n130_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1280
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
                        test             rax, rax;                            je    n130_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_203_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_203_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_203_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n130_call_proc_staged_β
                                                                              jmp   n138_suspend_α
.Lcall_proc_staged_α_203_0:
                        .quad            .Lcall_proc_staged_α_203_0_s
.Lcall_proc_staged_α_203_0_s:
                        .string          "queens/3"
                        .size            n137_call_proc_staged_bx, .-n137_call_proc_staged_bx
                        .type            n138_suspend_bx, @function
n138_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:         mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_205_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lsuspend_α_205_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n138_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F3_γ
n138_suspend_β:         mov              r11, 78;                             jmp   n137_call_proc_staged_β
                        .size            n138_suspend_bx, .-n138_suspend_bx
                        .type            n139_call_prolog_bx, @function
n139_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 79
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
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   queens$2F3_ω
n139_call_prolog_β:     mov              r11, 79;                             jmp   queens$2F3_ω
                        .size            n139_call_prolog_bx, .-n139_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_β:
                                                                              jmp   n113_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lqueens$2F3_α_206_50
                        mov              qword ptr [rsp + 1280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lqueens$2F3_α_206_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1400]
                        add              rsp, 1424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1408]
                        add              rsp, 1424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F2:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F2_α_body:
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        .type            n207_call_prolog_bx, @function
n207_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_prolog_α:     mov              r11, 80
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_224_102
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_224_101
.Lcall_prolog_α_224_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_224_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_224_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_224_101
.Lcall_prolog_α_224_100:
                        lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_224_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   n208_var_ref_α
n207_call_prolog_β:     mov              r11, 80;                             jmp   queens$2F2_ω
                        .size            n207_call_prolog_bx, .-n207_call_prolog_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n210_call_prolog_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_prolog_bx, @function
n210_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_prolog_α:     mov              r11, 83
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
.Lcall_prolog_α_229_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_229_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_40
.Lcall_prolog_α_229_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_40
.Lcall_prolog_α_229_56: cmp              al, 72;                              jne   .Lcall_prolog_α_229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_229_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_40
.Lcall_prolog_α_229_41: lea              r9, [rsp + 496]
.Lcall_prolog_α_229_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_229_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_229_42
.Lcall_prolog_α_229_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_229_42
.Lcall_prolog_α_229_58: cmp              al, 72;                              jne   .Lcall_prolog_α_229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_229_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_229_42
.Lcall_prolog_α_229_43: cmp              r8, r9;                              je    .Lcall_prolog_α_229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_229_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_229_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_229_44
                                                                              jmp   .Lcall_prolog_α_229_45
.Lcall_prolog_α_229_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_229_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_229_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_229_53
                                                                              jmp   .Lcall_prolog_α_229_46
.Lcall_prolog_α_229_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_229_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_229_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_229_51
.Lcall_prolog_α_229_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_229_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_229_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_229_47
                                                                              jmp   .Lcall_prolog_α_229_48
.Lcall_prolog_α_229_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_229_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_229_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_229_51
.Lcall_prolog_α_229_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_229_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_229_53
                                                                              jmp   .Lcall_prolog_α_229_52
.Lcall_prolog_α_229_49: cmp              dl, 80;                              je    .Lcall_prolog_α_229_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_229_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_229_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_229_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_229_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_229_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_229_51
                                                                              jmp   .Lcall_prolog_α_229_52
.Lcall_prolog_α_229_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_229_53
.Lcall_prolog_α_229_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_229_54
.Lcall_prolog_α_229_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_229_54
.Lcall_prolog_α_229_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_229_54: mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n211_var_ref_α
n210_call_prolog_β:     mov              r11, 83;                             jmp   n223_call_prolog_α
                        .size            n210_call_prolog_bx, .-n210_call_prolog_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n212_var_ref_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n213_call_prolog_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_call_prolog_bx, @function
n213_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_prolog_α:     mov              r11, 86
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
.Lcall_prolog_α_234_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_234_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_40
.Lcall_prolog_α_234_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_40
.Lcall_prolog_α_234_56: cmp              al, 72;                              jne   .Lcall_prolog_α_234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_234_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_40
.Lcall_prolog_α_234_41: lea              r9, [rsp + 416]
.Lcall_prolog_α_234_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_234_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_234_42
.Lcall_prolog_α_234_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_234_42
.Lcall_prolog_α_234_58: cmp              al, 72;                              jne   .Lcall_prolog_α_234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_234_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_234_42
.Lcall_prolog_α_234_43: cmp              r8, r9;                              je    .Lcall_prolog_α_234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_234_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_234_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_234_44
                                                                              jmp   .Lcall_prolog_α_234_45
.Lcall_prolog_α_234_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_234_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_234_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_234_53
                                                                              jmp   .Lcall_prolog_α_234_46
.Lcall_prolog_α_234_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_234_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_234_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_234_51
.Lcall_prolog_α_234_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_234_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_234_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_234_47
                                                                              jmp   .Lcall_prolog_α_234_48
.Lcall_prolog_α_234_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_234_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_234_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_234_51
.Lcall_prolog_α_234_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_234_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_234_53
                                                                              jmp   .Lcall_prolog_α_234_52
.Lcall_prolog_α_234_49: cmp              dl, 80;                              je    .Lcall_prolog_α_234_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_234_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_234_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_234_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_234_51
                                                                              jmp   .Lcall_prolog_α_234_52
.Lcall_prolog_α_234_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_234_53
.Lcall_prolog_α_234_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_234_54
.Lcall_prolog_α_234_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_234_54
.Lcall_prolog_α_234_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_234_54: mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n214_lit_integer_α
n213_call_prolog_β:     mov              r11, 86;                             jmp   n223_call_prolog_α
                        .size            n213_call_prolog_bx, .-n213_call_prolog_bx
                        .type            n214_lit_integer_bx, @function
n214_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n215_var_ref_α
.Llit_integer_α_235_0:  .quad            1
                        .size            n214_lit_integer_bx, .-n214_lit_integer_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n216_var_ref_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n217_call_proc_staged_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_call_proc_staged_bx, @function
n217_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        mov              r11, 90
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 352]
                        lea              rcx, [rsp + 368]
                        call             range$2F3_dcα;                       jmp   .Lcall_proc_staged_α_241_2
.Lcall_proc_staged_α_241_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_241_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lcall_proc_staged_α_241_29:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n218_var_ref_α
n217_call_proc_staged_β:
                        mov              r11, 90;                             jmp   n223_call_prolog_α
.Lcall_proc_staged_β_241_0:
                        .quad            .Lcall_proc_staged_β_241_0_s
.Lcall_proc_staged_β_241_0_s:
                        .string          "range/3"
                        .size            n217_call_proc_staged_bx, .-n217_call_proc_staged_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n219_lit_string_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_244_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n220_var_ref_α
.Llit_string_α_244_0:   .quad            .Llit_string_α_244_0_s
.Llit_string_α_244_0_s: .string          "[]"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n221_call_proc_staged_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_call_proc_staged_bx, @function
n221_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              r11, 94
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_248_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_248_201
.Lcall_proc_staged_α_248_200:
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
.Lcall_proc_staged_α_248_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_248_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_248_203
.Lcall_proc_staged_α_248_202:
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
.Lcall_proc_staged_α_248_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_248_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_248_205
.Lcall_proc_staged_α_248_204:
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
.Lcall_proc_staged_α_248_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_248_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_248_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_248_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_248_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_248_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_248_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_248_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_248_2
.Lcall_proc_staged_α_248_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_248_2
.Lcall_proc_staged_α_248_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_248_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_248_2
.Lcall_proc_staged_α_248_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_248_2
.Lcall_proc_staged_α_248_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_248_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_call_proc_staged_β
.Lcall_proc_staged_α_248_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_248_29
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
.Lcall_proc_staged_α_248_29:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n217_call_proc_staged_β
                                                                              jmp   n222_suspend_α
n221_call_proc_staged_β:
                        mov              r11, 94
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
                        test             rax, rax;                            je    n217_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1280
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
                        test             rax, rax;                            je    n217_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_248_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_248_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_248_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_248_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_248_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n217_call_proc_staged_β
                                                                              jmp   n222_suspend_α
.Lcall_proc_staged_α_248_0:
                        .quad            .Lcall_proc_staged_α_248_0_s
.Lcall_proc_staged_α_248_0_s:
                        .string          "queens/3"
                        .size            n221_call_proc_staged_bx, .-n221_call_proc_staged_bx
                        .type            n222_suspend_bx, @function
n222_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_suspend_α:         mov              r11, 95
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_250_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lsuspend_α_250_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n222_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F2_γ
n222_suspend_β:         mov              r11, 95;                             jmp   n221_call_proc_staged_β
                        .size            n222_suspend_bx, .-n222_suspend_bx
                        .type            n223_call_prolog_bx, @function
n223_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_prolog_α:     mov              r11, 96
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
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   queens$2F2_ω
n223_call_prolog_β:     mov              r11, 96;                             jmp   queens$2F2_ω
                        .size            n223_call_prolog_bx, .-n223_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_β:
                                                                              jmp   n222_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lqueens$2F2_α_251_50
                        mov              qword ptr [rsp + 544], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lqueens$2F2_α_251_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 632]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ω:
                        mov              rcx, qword ptr [rsp + 640]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__range$2F3:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1264
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
range$2F3_α_body:
                        .type            n252_call_prolog_bx, @function
n252_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_prolog_α:     mov              r11, 97
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_293_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lcall_prolog_α_293_101
.Lcall_prolog_α_293_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_293_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_293_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_293_101
.Lcall_prolog_α_293_100:
                        lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_293_101:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   n253_var_ref_α
n252_call_prolog_β:     mov              r11, 97;                             jmp   range$2F3_ω
                        .size            n252_call_prolog_bx, .-n252_call_prolog_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n254_var_ref_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n255_call_prolog_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_call_prolog_bx, @function
n255_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lcall_prolog_α_298_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_298_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_298_40
.Lcall_prolog_α_298_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_298_40
.Lcall_prolog_α_298_56: cmp              al, 72;                              jne   .Lcall_prolog_α_298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_298_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_298_40
.Lcall_prolog_α_298_41: lea              r9, [rsp + 1136]
.Lcall_prolog_α_298_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_298_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_298_42
.Lcall_prolog_α_298_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_298_42
.Lcall_prolog_α_298_58: cmp              al, 72;                              jne   .Lcall_prolog_α_298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_298_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_298_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_298_42
.Lcall_prolog_α_298_43: cmp              r8, r9;                              je    .Lcall_prolog_α_298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_298_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_298_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_298_44
                                                                              jmp   .Lcall_prolog_α_298_45
.Lcall_prolog_α_298_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_298_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_298_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_298_53
                                                                              jmp   .Lcall_prolog_α_298_46
.Lcall_prolog_α_298_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_298_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_298_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_298_51
.Lcall_prolog_α_298_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_298_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_298_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_298_47
                                                                              jmp   .Lcall_prolog_α_298_48
.Lcall_prolog_α_298_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_298_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_298_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_298_51
.Lcall_prolog_α_298_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_298_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_298_53
                                                                              jmp   .Lcall_prolog_α_298_52
.Lcall_prolog_α_298_49: cmp              dl, 80;                              je    .Lcall_prolog_α_298_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_298_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_298_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_298_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_298_51
                                                                              jmp   .Lcall_prolog_α_298_52
.Lcall_prolog_α_298_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_298_53
.Lcall_prolog_α_298_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_298_54
.Lcall_prolog_α_298_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_298_54
.Lcall_prolog_α_298_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_298_54: mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n256_var_ref_α
n255_call_prolog_β:     mov              r11, 100;                            jmp   n267_call_prolog_α
                        .size            n255_call_prolog_bx, .-n255_call_prolog_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n257_var_ref_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n258_call_prolog_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_call_prolog_bx, @function
n258_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lcall_prolog_α_303_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_303_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_303_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_303_40
.Lcall_prolog_α_303_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_303_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_303_40
.Lcall_prolog_α_303_56: cmp              al, 72;                              jne   .Lcall_prolog_α_303_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_303_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_303_40
.Lcall_prolog_α_303_41: lea              r9, [rsp + 1056]
.Lcall_prolog_α_303_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_303_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_303_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_303_42
.Lcall_prolog_α_303_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_303_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_303_42
.Lcall_prolog_α_303_58: cmp              al, 72;                              jne   .Lcall_prolog_α_303_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_303_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_303_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_303_42
.Lcall_prolog_α_303_43: cmp              r8, r9;                              je    .Lcall_prolog_α_303_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_303_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_303_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_303_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_303_44
                                                                              jmp   .Lcall_prolog_α_303_45
.Lcall_prolog_α_303_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_303_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_303_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_303_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_303_53
                                                                              jmp   .Lcall_prolog_α_303_46
.Lcall_prolog_α_303_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_303_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_303_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_303_51
.Lcall_prolog_α_303_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_303_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_303_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_303_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_303_47
                                                                              jmp   .Lcall_prolog_α_303_48
.Lcall_prolog_α_303_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_303_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_303_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_303_51
.Lcall_prolog_α_303_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_303_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_303_53
                                                                              jmp   .Lcall_prolog_α_303_52
.Lcall_prolog_α_303_49: cmp              dl, 80;                              je    .Lcall_prolog_α_303_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_303_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_303_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_303_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_303_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_303_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_303_51
                                                                              jmp   .Lcall_prolog_α_303_52
.Lcall_prolog_α_303_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_303_53
.Lcall_prolog_α_303_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_303_54
.Lcall_prolog_α_303_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_303_54
.Lcall_prolog_α_303_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_303_54: mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n259_var_ref_α
n258_call_prolog_β:     mov              r11, 103;                            jmp   n267_call_prolog_α
                        .size            n258_call_prolog_bx, .-n258_call_prolog_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n260_lit_string_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_lit_string_bx, @function
n260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_306_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n261_var_ref_α
.Llit_string_α_306_0:   .quad            .Llit_string_α_306_0_s
.Llit_string_α_306_0_s: .string          "."
                        .size            n260_lit_string_bx, .-n260_lit_string_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n262_lit_string_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_lit_string_bx, @function
n262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_309_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n263_call_prolog_α
.Llit_string_α_309_0:   .quad            .Llit_string_α_309_0_s
.Llit_string_α_309_0_s: .string          "[]"
                        .size            n262_lit_string_bx, .-n262_lit_string_bx
                        .type            n263_call_prolog_bx, @function
n263_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n264_call_prolog_α
n263_call_prolog_β:     mov              r11, 108;                            jmp   n267_call_prolog_α
                        .size            n263_call_prolog_bx, .-n263_call_prolog_bx
                        .type            n264_call_prolog_bx, @function
n264_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_prolog_α:     mov              r11, 109
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lcall_prolog_α_311_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_311_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_56: cmp              al, 72;                              jne   .Lcall_prolog_α_311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_311_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_41: lea              r9, [rsp + 864]
.Lcall_prolog_α_311_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_311_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_58: cmp              al, 72;                              jne   .Lcall_prolog_α_311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_43: cmp              r8, r9;                              je    .Lcall_prolog_α_311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_311_44
                                                                              jmp   .Lcall_prolog_α_311_45
.Lcall_prolog_α_311_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_53
                                                                              jmp   .Lcall_prolog_α_311_46
.Lcall_prolog_α_311_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_311_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_311_51
.Lcall_prolog_α_311_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_47
                                                                              jmp   .Lcall_prolog_α_311_48
.Lcall_prolog_α_311_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_311_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_311_51
.Lcall_prolog_α_311_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_311_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_311_53
                                                                              jmp   .Lcall_prolog_α_311_52
.Lcall_prolog_α_311_49: cmp              dl, 80;                              je    .Lcall_prolog_α_311_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_311_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_311_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_311_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_311_51
                                                                              jmp   .Lcall_prolog_α_311_52
.Lcall_prolog_α_311_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_311_53
.Lcall_prolog_α_311_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_311_54
.Lcall_prolog_α_311_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_311_54
.Lcall_prolog_α_311_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_311_54: mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n265_cut_α
n264_call_prolog_β:     mov              r11, 109;                            jmp   n267_call_prolog_α
                        .size            n264_call_prolog_bx, .-n264_call_prolog_bx
                        .type            n265_cut_bx, @function
n265_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_cut_α:             mov              r11, 110;                            jmp   n266_move_label_α
                        .size            n265_cut_bx, .-n265_cut_bx
                        .type            n266_move_label_bx, @function
n266_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_move_label_α:      mov              r11, 111
                        lea              rax, [rip + n267_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   range$2F3_γ
                        .size            n266_move_label_bx, .-n266_move_label_bx
                        .type            n267_call_prolog_bx, @function
n267_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_prolog_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   n268_var_ref_α
n267_call_prolog_β:     mov              r11, 112;                            jmp   range$2F3_ω
                        .size            n267_call_prolog_bx, .-n267_call_prolog_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n269_var_ref_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n270_call_prolog_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_call_prolog_bx, @function
n270_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_prolog_α:     mov              r11, 115
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lcall_prolog_α_320_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_320_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_320_40
.Lcall_prolog_α_320_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_320_40
.Lcall_prolog_α_320_56: cmp              al, 72;                              jne   .Lcall_prolog_α_320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_320_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_320_40
.Lcall_prolog_α_320_41: lea              r9, [rsp + 752]
.Lcall_prolog_α_320_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_320_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_320_42
.Lcall_prolog_α_320_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_320_42
.Lcall_prolog_α_320_58: cmp              al, 72;                              jne   .Lcall_prolog_α_320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_320_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_320_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_320_42
.Lcall_prolog_α_320_43: cmp              r8, r9;                              je    .Lcall_prolog_α_320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_320_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_320_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_320_44
                                                                              jmp   .Lcall_prolog_α_320_45
.Lcall_prolog_α_320_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_320_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_320_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_320_53
                                                                              jmp   .Lcall_prolog_α_320_46
.Lcall_prolog_α_320_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_320_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_320_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_320_51
.Lcall_prolog_α_320_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_320_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_320_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_320_47
                                                                              jmp   .Lcall_prolog_α_320_48
.Lcall_prolog_α_320_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_320_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_320_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_320_51
.Lcall_prolog_α_320_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_320_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_320_53
                                                                              jmp   .Lcall_prolog_α_320_52
.Lcall_prolog_α_320_49: cmp              dl, 80;                              je    .Lcall_prolog_α_320_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_320_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_320_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_320_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_320_51
                                                                              jmp   .Lcall_prolog_α_320_52
.Lcall_prolog_α_320_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_320_53
.Lcall_prolog_α_320_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_320_54
.Lcall_prolog_α_320_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_320_54
.Lcall_prolog_α_320_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_320_54: mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n271_var_ref_α
n270_call_prolog_β:     mov              r11, 115;                            jmp   n292_call_prolog_α
                        .size            n270_call_prolog_bx, .-n270_call_prolog_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n272_var_ref_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n273_call_prolog_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_call_prolog_bx, @function
n273_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_prolog_α:     mov              r11, 118
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lcall_prolog_α_325_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_325_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_325_40
.Lcall_prolog_α_325_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_325_40
.Lcall_prolog_α_325_56: cmp              al, 72;                              jne   .Lcall_prolog_α_325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_325_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_325_40
.Lcall_prolog_α_325_41: lea              r9, [rsp + 672]
.Lcall_prolog_α_325_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_325_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_325_42
.Lcall_prolog_α_325_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_325_42
.Lcall_prolog_α_325_58: cmp              al, 72;                              jne   .Lcall_prolog_α_325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_325_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_325_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_325_42
.Lcall_prolog_α_325_43: cmp              r8, r9;                              je    .Lcall_prolog_α_325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_325_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_325_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_325_44
                                                                              jmp   .Lcall_prolog_α_325_45
.Lcall_prolog_α_325_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_325_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_325_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_325_53
                                                                              jmp   .Lcall_prolog_α_325_46
.Lcall_prolog_α_325_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_325_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_325_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_325_51
.Lcall_prolog_α_325_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_325_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_325_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_325_47
                                                                              jmp   .Lcall_prolog_α_325_48
.Lcall_prolog_α_325_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_325_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_325_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_325_51
.Lcall_prolog_α_325_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_325_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_325_53
                                                                              jmp   .Lcall_prolog_α_325_52
.Lcall_prolog_α_325_49: cmp              dl, 80;                              je    .Lcall_prolog_α_325_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_325_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_325_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_325_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_325_51
                                                                              jmp   .Lcall_prolog_α_325_52
.Lcall_prolog_α_325_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_325_53
.Lcall_prolog_α_325_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_325_54
.Lcall_prolog_α_325_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_325_54
.Lcall_prolog_α_325_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_325_54: mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n274_var_ref_α
n273_call_prolog_β:     mov              r11, 118;                            jmp   n292_call_prolog_α
                        .size            n273_call_prolog_bx, .-n273_call_prolog_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n275_var_ref_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n276_var_ref_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n277_call_prolog_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_call_prolog_bx, @function
n277_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_prolog_α:     mov              r11, 122
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        lea              r8, [rsp + 560]
.Lcall_prolog_α_332_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_332_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_332_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_332_60
.Lcall_prolog_α_332_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_332_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_332_60
.Lcall_prolog_α_332_63: cmp              al, 72;                              jne   .Lcall_prolog_α_332_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_332_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_332_60
.Lcall_prolog_α_332_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_332_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_332_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_332_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_332_80
                                                                              jmp   .Lcall_prolog_α_332_74
.Lcall_prolog_α_332_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_332_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_332_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_332_73
                        lea              r9, [rsp + 576]
.Lcall_prolog_α_332_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_332_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_332_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_64
.Lcall_prolog_α_332_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_332_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_64
.Lcall_prolog_α_332_67: cmp              al, 72;                              jne   .Lcall_prolog_α_332_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_332_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_64
.Lcall_prolog_α_332_65: lea              rcx, [rsp + 592]
.Lcall_prolog_α_332_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_332_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_332_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_68
.Lcall_prolog_α_332_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_332_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_68
.Lcall_prolog_α_332_71: cmp              al, 72;                              jne   .Lcall_prolog_α_332_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_332_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_68
.Lcall_prolog_α_332_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_332_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_332_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_332_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_332_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_332_75
                                                                              jmp   .Lcall_prolog_α_332_72
.Lcall_prolog_α_332_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_332_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_332_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_332_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_332_76
                                                                              jmp   .Lcall_prolog_α_332_72
.Lcall_prolog_α_332_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_332_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_332_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_332_77
.Lcall_prolog_α_332_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_332_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_332_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_332_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_332_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_332_72
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
                        lea              r9, [rsp + 576]
.Lcall_prolog_α_332_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_332_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_332_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_81
.Lcall_prolog_α_332_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_332_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_81
.Lcall_prolog_α_332_84: cmp              al, 72;                              jne   .Lcall_prolog_α_332_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_332_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_332_81
.Lcall_prolog_α_332_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_332_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_332_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_332_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_332_85
                                                                              jmp   .Lcall_prolog_α_332_86
.Lcall_prolog_α_332_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_332_87
.Lcall_prolog_α_332_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_332_87: lea              rcx, [rsp + 592]
.Lcall_prolog_α_332_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_332_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_332_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_88
.Lcall_prolog_α_332_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_332_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_88
.Lcall_prolog_α_332_91: cmp              al, 72;                              jne   .Lcall_prolog_α_332_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_332_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_332_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_332_88
.Lcall_prolog_α_332_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_332_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_332_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_332_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_332_92
                                                                              jmp   .Lcall_prolog_α_332_93
.Lcall_prolog_α_332_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_332_94
.Lcall_prolog_α_332_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_332_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_332_77
.Lcall_prolog_α_332_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_332_77
.Lcall_prolog_α_332_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_332_77: mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n278_var_α
n277_call_prolog_β:     mov              r11, 122;                            jmp   n292_call_prolog_α
                        .size            n277_call_prolog_bx, .-n277_call_prolog_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 504], rax;          jmp   n279_var_α
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_var_bx, @function
n279_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 520], rax;          jmp   n280_call_prolog_α
                        .size            n279_var_bx, .-n279_var_bx
                        .type            n280_call_prolog_bx, @function
n280_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_call_prolog_α:     mov              r11, 125
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n281_var_ref_α
n280_call_prolog_β:     mov              r11, 125;                            jmp   n292_call_prolog_α
                        .size            n280_call_prolog_bx, .-n280_call_prolog_bx
                        .type            n281_var_ref_bx, @function
n281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n282_var_α
                        .size            n281_var_ref_bx, .-n281_var_ref_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 424], rax;          jmp   n283_lit_integer_α
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_lit_integer_bx, @function
n283_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n284_call_prolog_α
.Llit_integer_α_342_0:  .quad            1
                        .size            n283_lit_integer_bx, .-n283_lit_integer_bx
                        .type            n284_call_prolog_bx, @function
n284_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_prolog_α:     mov              r11, 129
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n285_call_prolog_α
n284_call_prolog_β:     mov              r11, 129;                            jmp   n292_call_prolog_α
                        .size            n284_call_prolog_bx, .-n284_call_prolog_bx
                        .type            n285_call_prolog_bx, @function
n285_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_prolog_α:     mov              r11, 130
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n286_var_ref_α
n285_call_prolog_β:     mov              r11, 130;                            jmp   n292_call_prolog_α
                        .size            n285_call_prolog_bx, .-n285_call_prolog_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n288_var_ref_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n289_call_proc_staged_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_call_proc_staged_bx, @function
n289_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        mov              r11, 134
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 256]
                        lea              rcx, [rsp + 272]
                        call             range$2F3_dcα;                       jmp   .Lcall_proc_staged_α_352_2
.Lcall_proc_staged_α_352_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_352_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lcall_proc_staged_α_352_29:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n290_move_label_α
n289_call_proc_staged_β:
                        mov              r11, 134;                            jmp   n292_call_prolog_α
.Lcall_proc_staged_β_352_0:
                        .quad            .Lcall_proc_staged_β_352_0_s
.Lcall_proc_staged_β_352_0_s:
                        .string          "range/3"
                        .size            n289_call_proc_staged_bx, .-n289_call_proc_staged_bx
                        .type            n290_move_label_bx, @function
n290_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:      mov              r11, 135
                        lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   range$2F3_γ
                        .size            n290_move_label_bx, .-n290_move_label_bx
                        .type            n291_disjunction_bx, @function
n291_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:     mov              r11, 136
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    range$2F3_ω
                                                                              jmp   rax
n291_disjunction_β:     mov              r11, 136;                            jmp   range$2F3_ω
                        .size            n291_disjunction_bx, .-n291_disjunction_bx
                        .type            n292_call_prolog_bx, @function
n292_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_prolog_α:     mov              r11, 137
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   range$2F3_ω
n292_call_prolog_β:     mov              r11, 137;                            jmp   range$2F3_ω
                        .size            n292_call_prolog_bx, .-n292_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_β:
                                                                              jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_dcα:
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
                        lea              rcx, [rip + .Lrange$2F3_α_358_2]
                        lea              rdx, [rip + .Lrange$2F3_α_358_3];    jmp   FN__range$2F3
.Lrange$2F3_α_358_2:    pop              r12
                        pop              r12;                                 jmp   r12
.Lrange$2F3_α_358_3:    pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F2:
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
not_attack$2F2_α_body:
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        .type            n359_call_prolog_bx, @function
n359_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_prolog_α:     mov              r11, 138
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_102
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_372_101
.Lcall_prolog_α_372_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_372_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_372_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_372_101
.Lcall_prolog_α_372_100:
                        lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_372_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   n360_var_ref_α
n359_call_prolog_β:     mov              r11, 138;                            jmp   not_attack$2F2_ω
                        .size            n359_call_prolog_bx, .-n359_call_prolog_bx
                        .type            n360_var_ref_bx, @function
n360_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n361_var_ref_α
                        .size            n360_var_ref_bx, .-n360_var_ref_bx
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n362_call_prolog_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_call_prolog_bx, @function
n362_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_prolog_α:     mov              r11, 141
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
.Lcall_prolog_α_377_41: lea              r9, [rsp + 368]
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
.Lcall_prolog_α_377_54: mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n363_var_ref_α
n362_call_prolog_β:     mov              r11, 141;                            jmp   n371_call_prolog_α
                        .size            n362_call_prolog_bx, .-n362_call_prolog_bx
                        .type            n363_var_ref_bx, @function
n363_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n364_var_ref_α
                        .size            n363_var_ref_bx, .-n363_var_ref_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n365_call_prolog_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_call_prolog_bx, @function
n365_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_prolog_α:     mov              r11, 144
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
.Lcall_prolog_α_382_41: lea              r9, [rsp + 288]
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
.Lcall_prolog_α_382_54: mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n366_var_ref_α
n365_call_prolog_β:     mov              r11, 144;                            jmp   n371_call_prolog_α
                        .size            n365_call_prolog_bx, .-n365_call_prolog_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n367_var_ref_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n368_lit_integer_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_lit_integer_bx, @function
n368_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_387_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n369_call_proc_staged_α
.Llit_integer_α_387_0:  .quad            1
                        .size            n368_lit_integer_bx, .-n368_lit_integer_bx
                        .type            n369_call_proc_staged_bx, @function
n369_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        mov              r11, 148
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_389_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_389_201
.Lcall_proc_staged_α_389_200:
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
.Lcall_proc_staged_α_389_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_389_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_389_203
.Lcall_proc_staged_α_389_202:
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
.Lcall_proc_staged_α_389_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_389_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_389_205
.Lcall_proc_staged_α_389_204:
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
.Lcall_proc_staged_α_389_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_389_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_389_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_389_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_389_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_389_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_389_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_389_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_389_2
.Lcall_proc_staged_α_389_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_389_2
.Lcall_proc_staged_α_389_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_389_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_389_2
.Lcall_proc_staged_α_389_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_389_2
.Lcall_proc_staged_α_389_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_389_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_call_prolog_α
.Lcall_proc_staged_α_389_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_389_29
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
.Lcall_proc_staged_α_389_29:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n370_suspend_α
n369_call_proc_staged_β:
                        mov              r11, 148
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
                        test             rax, rax;                            je    n371_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1536
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
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n371_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_389_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_389_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_389_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_389_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_389_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n370_suspend_α
.Lcall_proc_staged_α_389_0:
                        .quad            .Lcall_proc_staged_α_389_0_s
.Lcall_proc_staged_α_389_0_s:
                        .string          "not_attack/3"
                        .size            n369_call_proc_staged_bx, .-n369_call_proc_staged_bx
                        .type            n370_suspend_bx, @function
n370_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_suspend_α:         mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_391_61
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
.Lsuspend_α_391_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n370_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F2_γ
n370_suspend_β:         mov              r11, 149;                            jmp   n369_call_proc_staged_β
                        .size            n370_suspend_bx, .-n370_suspend_bx
                        .type            n371_call_prolog_bx, @function
n371_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_prolog_α:     mov              r11, 150
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
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   not_attack$2F2_ω
n371_call_prolog_β:     mov              r11, 150;                            jmp   not_attack$2F2_ω
                        .size            n371_call_prolog_bx, .-n371_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_β:
                                                                              jmp   n370_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lnot_attack$2F2_α_392_50
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
.Lnot_attack$2F2_α_392_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F3:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
not_attack$2F3_α_body:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        .type            n393_call_prolog_bx, @function
n393_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_prolog_α:     mov              r11, 151
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_102
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_444_101
.Lcall_prolog_α_444_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_444_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_444_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_444_101
.Lcall_prolog_α_444_100:
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
.Lcall_prolog_α_444_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n394_var_ref_α
n393_call_prolog_β:     mov              r11, 151;                            jmp   not_attack$2F3_ω
                        .size            n393_call_prolog_bx, .-n393_call_prolog_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n395_lit_integer_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_lit_integer_bx, @function
n395_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_447_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n396_lit_string_α
.Llit_integer_α_447_0:  .quad            2
                        .size            n395_lit_integer_bx, .-n395_lit_integer_bx
                        .type            n396_lit_string_bx, @function
n396_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n397_call_prolog_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "[]"
                        .size            n396_lit_string_bx, .-n396_lit_string_bx
                        .type            n397_call_prolog_bx, @function
n397_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_call_prolog_α:     mov              r11, 155
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        lea              r8, [rsp + 1440]
.Lcall_prolog_α_449_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_449_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_449_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_110
.Lcall_prolog_α_449_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_449_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_110
.Lcall_prolog_α_449_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_110
.Lcall_prolog_α_449_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_114
                                                                              jmp   .Lcall_prolog_α_449_118
.Lcall_prolog_α_449_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_449_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_449_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_449_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_449_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_449_114
                                                                              jmp   .Lcall_prolog_α_449_116
.Lcall_prolog_α_449_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_449_117
.Lcall_prolog_α_449_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_449_117
.Lcall_prolog_α_449_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_449_117:
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n409_var_ref_α
                                                                              jmp   n398_var_ref_α
n397_call_prolog_β:     mov              r11, 155;                            jmp   n409_var_ref_α
                        .size            n397_call_prolog_bx, .-n397_call_prolog_bx
                        .type            n398_var_ref_bx, @function
n398_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n399_lit_string_α
                        .size            n398_var_ref_bx, .-n398_var_ref_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_452_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n400_call_prolog_α
.Llit_string_α_452_0:   .quad            .Llit_string_α_452_0_s
.Llit_string_α_452_0_s: .string          "[]"
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_call_prolog_bx, @function
n400_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 158
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_453_2]
                                                                              jmp   .Lcall_prolog_α_453_3
.Lcall_prolog_α_453_2:  .quad            .Lcall_prolog_α_453_2_s
.Lcall_prolog_α_453_2_s:
                        .string          "[]"
.Lcall_prolog_α_453_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n401_var_ref_α
n400_call_prolog_β:     mov              r11, 158;                            jmp   n408_call_prolog_α
                        .size            n400_call_prolog_bx, .-n400_call_prolog_bx
                        .type            n401_var_ref_bx, @function
n401_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n402_var_ref_α
                        .size            n401_var_ref_bx, .-n401_var_ref_bx
                        .type            n402_var_ref_bx, @function
n402_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n403_call_prolog_α
                        .size            n402_var_ref_bx, .-n402_var_ref_bx
                        .type            n403_call_prolog_bx, @function
n403_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_prolog_α:     mov              r11, 161
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        lea              r8, [rsp + 1280]
.Lcall_prolog_α_458_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_458_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_458_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_458_40
.Lcall_prolog_α_458_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_458_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_458_40
.Lcall_prolog_α_458_56: cmp              al, 72;                              jne   .Lcall_prolog_α_458_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_458_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_458_40
.Lcall_prolog_α_458_41: lea              r9, [rsp + 1296]
.Lcall_prolog_α_458_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_458_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_458_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_458_42
.Lcall_prolog_α_458_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_458_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_458_42
.Lcall_prolog_α_458_58: cmp              al, 72;                              jne   .Lcall_prolog_α_458_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_458_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_458_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_458_42
.Lcall_prolog_α_458_43: cmp              r8, r9;                              je    .Lcall_prolog_α_458_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_458_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_458_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_458_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_458_44
                                                                              jmp   .Lcall_prolog_α_458_45
.Lcall_prolog_α_458_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_458_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_458_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_458_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_458_53
                                                                              jmp   .Lcall_prolog_α_458_46
.Lcall_prolog_α_458_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_458_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_458_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_458_51
.Lcall_prolog_α_458_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_458_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_458_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_458_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_458_47
                                                                              jmp   .Lcall_prolog_α_458_48
.Lcall_prolog_α_458_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_458_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_458_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_458_51
.Lcall_prolog_α_458_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_458_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_458_53
                                                                              jmp   .Lcall_prolog_α_458_52
.Lcall_prolog_α_458_49: cmp              dl, 80;                              je    .Lcall_prolog_α_458_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_458_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_458_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_458_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_458_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_458_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_458_51
                                                                              jmp   .Lcall_prolog_α_458_52
.Lcall_prolog_α_458_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_458_53
.Lcall_prolog_α_458_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_458_54
.Lcall_prolog_α_458_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_458_54
.Lcall_prolog_α_458_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_458_54: mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n404_var_ref_α
n403_call_prolog_β:     mov              r11, 161;                            jmp   n408_call_prolog_α
                        .size            n403_call_prolog_bx, .-n403_call_prolog_bx
                        .type            n404_var_ref_bx, @function
n404_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n405_var_ref_α
                        .size            n404_var_ref_bx, .-n404_var_ref_bx
                        .type            n405_var_ref_bx, @function
n405_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n406_call_prolog_α
                        .size            n405_var_ref_bx, .-n405_var_ref_bx
                        .type            n406_call_prolog_bx, @function
n406_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_prolog_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        lea              r8, [rsp + 1200]
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
.Lcall_prolog_α_463_41: lea              r9, [rsp + 1216]
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
.Lcall_prolog_α_463_54: mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n407_suspend_α
n406_call_prolog_β:     mov              r11, 164;                            jmp   n408_call_prolog_α
                        .size            n406_call_prolog_bx, .-n406_call_prolog_bx
                        .type            n407_suspend_bx, @function
n407_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_suspend_α:         mov              r11, 165
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_465_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lsuspend_α_465_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n407_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F3_γ
n407_suspend_β:         mov              r11, 165;                            jmp   n408_call_prolog_α
                        .size            n407_suspend_bx, .-n407_suspend_bx
                        .type            n408_call_prolog_bx, @function
n408_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 166
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n409_var_ref_α
n408_call_prolog_β:     mov              r11, 166;                            jmp   not_attack$2F3_ω
                        .size            n408_call_prolog_bx, .-n408_call_prolog_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n410_lit_integer_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_lit_integer_bx, @function
n410_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_469_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n411_lit_integer_α
.Llit_integer_α_469_0:  .quad            3
                        .size            n410_lit_integer_bx, .-n410_lit_integer_bx
                        .type            n411_lit_integer_bx, @function
n411_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_470_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n412_call_prolog_α
.Llit_integer_α_470_0:  .quad            0
                        .size            n411_lit_integer_bx, .-n411_lit_integer_bx
                        .type            n412_call_prolog_bx, @function
n412_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_prolog_α:     mov              r11, 170
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lcall_prolog_α_471_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_471_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_471_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_110
.Lcall_prolog_α_471_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_471_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_110
.Lcall_prolog_α_471_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_471_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_471_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_110
.Lcall_prolog_α_471_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_471_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_471_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_471_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_471_114
                                                                              jmp   .Lcall_prolog_α_471_118
.Lcall_prolog_α_471_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_471_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_471_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_471_115
                                                                              jmp   .Lcall_prolog_α_471_114
.Lcall_prolog_α_471_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_471_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_471_114
                                                                              jmp   .Lcall_prolog_α_471_115
.Lcall_prolog_α_471_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_471_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_471_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_471_114
                                                                              jmp   .Lcall_prolog_α_471_115
.Lcall_prolog_α_471_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_471_117
.Lcall_prolog_α_471_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_471_117
.Lcall_prolog_α_471_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_471_117:
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n413_var_ref_α
n412_call_prolog_β:     mov              r11, 170;                            jmp   n443_call_prolog_α
                        .size            n412_call_prolog_bx, .-n412_call_prolog_bx
                        .type            n413_var_ref_bx, @function
n413_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n414_var_ref_α
                        .size            n413_var_ref_bx, .-n413_var_ref_bx
                        .type            n414_var_ref_bx, @function
n414_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n415_var_ref_α
                        .size            n414_var_ref_bx, .-n414_var_ref_bx
                        .type            n415_var_ref_bx, @function
n415_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n416_call_prolog_α
                        .size            n415_var_ref_bx, .-n415_var_ref_bx
                        .type            n416_call_prolog_bx, @function
n416_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_prolog_α:     mov              r11, 174
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        lea              r8, [rsp + 944]
.Lcall_prolog_α_478_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_478_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_478_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_478_60
.Lcall_prolog_α_478_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_478_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_478_60
.Lcall_prolog_α_478_63: cmp              al, 72;                              jne   .Lcall_prolog_α_478_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_478_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_478_60
.Lcall_prolog_α_478_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_478_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_478_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_478_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_478_80
                                                                              jmp   .Lcall_prolog_α_478_74
.Lcall_prolog_α_478_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_478_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_478_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_478_73
                        lea              r9, [rsp + 960]
.Lcall_prolog_α_478_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_478_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_478_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_64
.Lcall_prolog_α_478_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_478_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_64
.Lcall_prolog_α_478_67: cmp              al, 72;                              jne   .Lcall_prolog_α_478_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_478_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_64
.Lcall_prolog_α_478_65: lea              rcx, [rsp + 976]
.Lcall_prolog_α_478_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_478_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_478_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_68
.Lcall_prolog_α_478_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_478_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_68
.Lcall_prolog_α_478_71: cmp              al, 72;                              jne   .Lcall_prolog_α_478_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_478_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_68
.Lcall_prolog_α_478_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_478_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_478_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_478_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_478_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_478_75
                                                                              jmp   .Lcall_prolog_α_478_72
.Lcall_prolog_α_478_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_478_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_478_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_478_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_478_76
                                                                              jmp   .Lcall_prolog_α_478_72
.Lcall_prolog_α_478_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_478_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_478_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_478_77
.Lcall_prolog_α_478_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_478_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_478_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_478_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_478_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_478_72
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
                        lea              r9, [rsp + 960]
.Lcall_prolog_α_478_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_478_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_478_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_81
.Lcall_prolog_α_478_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_478_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_81
.Lcall_prolog_α_478_84: cmp              al, 72;                              jne   .Lcall_prolog_α_478_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_478_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_478_81
.Lcall_prolog_α_478_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_478_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_478_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_478_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_478_85
                                                                              jmp   .Lcall_prolog_α_478_86
.Lcall_prolog_α_478_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_478_87
.Lcall_prolog_α_478_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_478_87: lea              rcx, [rsp + 976]
.Lcall_prolog_α_478_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_478_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_478_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_88
.Lcall_prolog_α_478_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_478_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_88
.Lcall_prolog_α_478_91: cmp              al, 72;                              jne   .Lcall_prolog_α_478_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_478_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_478_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_478_88
.Lcall_prolog_α_478_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_478_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_478_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_478_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_478_92
                                                                              jmp   .Lcall_prolog_α_478_93
.Lcall_prolog_α_478_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_478_94
.Lcall_prolog_α_478_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_478_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_478_77
.Lcall_prolog_α_478_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_478_77
.Lcall_prolog_α_478_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_478_77: mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n417_var_ref_α
n416_call_prolog_β:     mov              r11, 174;                            jmp   n443_call_prolog_α
                        .size            n416_call_prolog_bx, .-n416_call_prolog_bx
                        .type            n417_var_ref_bx, @function
n417_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n418_var_ref_α
                        .size            n417_var_ref_bx, .-n417_var_ref_bx
                        .type            n418_var_ref_bx, @function
n418_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n419_call_prolog_α
                        .size            n418_var_ref_bx, .-n418_var_ref_bx
                        .type            n419_call_prolog_bx, @function
n419_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lcall_prolog_α_483_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_483_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_483_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_483_40
.Lcall_prolog_α_483_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_483_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_483_40
.Lcall_prolog_α_483_56: cmp              al, 72;                              jne   .Lcall_prolog_α_483_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_483_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_483_40
.Lcall_prolog_α_483_41: lea              r9, [rsp + 864]
.Lcall_prolog_α_483_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_483_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_483_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_483_42
.Lcall_prolog_α_483_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_483_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_483_42
.Lcall_prolog_α_483_58: cmp              al, 72;                              jne   .Lcall_prolog_α_483_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_483_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_483_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_483_42
.Lcall_prolog_α_483_43: cmp              r8, r9;                              je    .Lcall_prolog_α_483_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_483_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_483_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_483_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_483_44
                                                                              jmp   .Lcall_prolog_α_483_45
.Lcall_prolog_α_483_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_483_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_483_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_483_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_483_53
                                                                              jmp   .Lcall_prolog_α_483_46
.Lcall_prolog_α_483_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_483_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_483_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_483_51
.Lcall_prolog_α_483_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_483_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_483_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_483_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_483_47
                                                                              jmp   .Lcall_prolog_α_483_48
.Lcall_prolog_α_483_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_483_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_483_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_483_51
.Lcall_prolog_α_483_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_483_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_483_53
                                                                              jmp   .Lcall_prolog_α_483_52
.Lcall_prolog_α_483_49: cmp              dl, 80;                              je    .Lcall_prolog_α_483_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_483_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_483_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_483_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_483_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_483_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_483_51
                                                                              jmp   .Lcall_prolog_α_483_52
.Lcall_prolog_α_483_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_483_53
.Lcall_prolog_α_483_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_483_54
.Lcall_prolog_α_483_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_483_54
.Lcall_prolog_α_483_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_483_54: mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n420_var_ref_α
n419_call_prolog_β:     mov              r11, 177;                            jmp   n443_call_prolog_α
                        .size            n419_call_prolog_bx, .-n419_call_prolog_bx
                        .type            n420_var_ref_bx, @function
n420_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n421_var_ref_α
                        .size            n420_var_ref_bx, .-n420_var_ref_bx
                        .type            n421_var_ref_bx, @function
n421_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n422_call_prolog_α
                        .size            n421_var_ref_bx, .-n421_var_ref_bx
                        .type            n422_call_prolog_bx, @function
n422_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        lea              r8, [rsp + 768]
.Lcall_prolog_α_488_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_488_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_488_40
.Lcall_prolog_α_488_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_488_40
.Lcall_prolog_α_488_56: cmp              al, 72;                              jne   .Lcall_prolog_α_488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_488_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_488_40
.Lcall_prolog_α_488_41: lea              r9, [rsp + 784]
.Lcall_prolog_α_488_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_488_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_488_42
.Lcall_prolog_α_488_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_488_42
.Lcall_prolog_α_488_58: cmp              al, 72;                              jne   .Lcall_prolog_α_488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_488_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_488_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_488_42
.Lcall_prolog_α_488_43: cmp              r8, r9;                              je    .Lcall_prolog_α_488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_488_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_488_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_488_44
                                                                              jmp   .Lcall_prolog_α_488_45
.Lcall_prolog_α_488_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_488_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_488_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_488_53
                                                                              jmp   .Lcall_prolog_α_488_46
.Lcall_prolog_α_488_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_488_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_488_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_488_51
.Lcall_prolog_α_488_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_488_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_488_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_488_47
                                                                              jmp   .Lcall_prolog_α_488_48
.Lcall_prolog_α_488_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_488_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_488_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_488_51
.Lcall_prolog_α_488_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_488_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_488_53
                                                                              jmp   .Lcall_prolog_α_488_52
.Lcall_prolog_α_488_49: cmp              dl, 80;                              je    .Lcall_prolog_α_488_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_488_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_488_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_488_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_488_51
                                                                              jmp   .Lcall_prolog_α_488_52
.Lcall_prolog_α_488_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_488_53
.Lcall_prolog_α_488_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_488_54
.Lcall_prolog_α_488_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_488_54
.Lcall_prolog_α_488_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_488_54: mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n423_var_α
n422_call_prolog_β:     mov              r11, 180;                            jmp   n443_call_prolog_α
                        .size            n422_call_prolog_bx, .-n422_call_prolog_bx
                        .type            n423_var_bx, @function
n423_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 648], rax;          jmp   n424_var_α
                        .size            n423_var_bx, .-n423_var_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 728], rax;          jmp   n425_var_α
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_var_bx, @function
n425_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             mov              r11, 183
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 744], rax;          jmp   n426_call_prolog_α
                        .size            n425_var_bx, .-n425_var_bx
                        .type            n426_call_prolog_bx, @function
n426_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 184
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n427_call_prolog_α
n426_call_prolog_β:     mov              r11, 184;                            jmp   n443_call_prolog_α
                        .size            n426_call_prolog_bx, .-n426_call_prolog_bx
                        .type            n427_call_prolog_bx, @function
n427_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_prolog_α:     mov              r11, 185
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n428_var_α
n427_call_prolog_β:     mov              r11, 185;                            jmp   n443_call_prolog_α
                        .size            n427_call_prolog_bx, .-n427_call_prolog_bx
                        .type            n428_var_bx, @function
n428_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 488], rax;          jmp   n429_var_α
                        .size            n428_var_bx, .-n428_var_bx
                        .type            n429_var_bx, @function
n429_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 568], rax;          jmp   n430_var_α
                        .size            n429_var_bx, .-n429_var_bx
                        .type            n430_var_bx, @function
n430_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 584], rax;          jmp   n431_call_prolog_α
                        .size            n430_var_bx, .-n430_var_bx
                        .type            n431_call_prolog_bx, @function
n431_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 189
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n432_call_prolog_α
n431_call_prolog_β:     mov              r11, 189;                            jmp   n443_call_prolog_α
                        .size            n431_call_prolog_bx, .-n431_call_prolog_bx
                        .type            n432_call_prolog_bx, @function
n432_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n433_var_ref_α
n432_call_prolog_β:     mov              r11, 190;                            jmp   n443_call_prolog_α
                        .size            n432_call_prolog_bx, .-n432_call_prolog_bx
                        .type            n433_var_ref_bx, @function
n433_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n434_var_α
                        .size            n433_var_ref_bx, .-n433_var_ref_bx
                        .type            n434_var_bx, @function
n434_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 408], rax;          jmp   n435_lit_integer_α
                        .size            n434_var_bx, .-n434_var_bx
                        .type            n435_lit_integer_bx, @function
n435_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_509_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n436_call_prolog_α
.Llit_integer_α_509_0:  .quad            1
                        .size            n435_lit_integer_bx, .-n435_lit_integer_bx
                        .type            n436_call_prolog_bx, @function
n436_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 194
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n437_call_prolog_α
n436_call_prolog_β:     mov              r11, 194;                            jmp   n443_call_prolog_α
                        .size            n436_call_prolog_bx, .-n436_call_prolog_bx
                        .type            n437_call_prolog_bx, @function
n437_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 195
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n438_var_ref_α
n437_call_prolog_β:     mov              r11, 195;                            jmp   n443_call_prolog_α
                        .size            n437_call_prolog_bx, .-n437_call_prolog_bx
                        .type            n438_var_ref_bx, @function
n438_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n439_var_ref_α
                        .size            n438_var_ref_bx, .-n438_var_ref_bx
                        .type            n439_var_ref_bx, @function
n439_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n440_var_ref_α
                        .size            n439_var_ref_bx, .-n439_var_ref_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n441_call_proc_staged_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_call_proc_staged_bx, @function
n441_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        mov              r11, 199
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_519_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_519_201
.Lcall_proc_staged_α_519_200:
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
.Lcall_proc_staged_α_519_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_519_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_519_203
.Lcall_proc_staged_α_519_202:
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
.Lcall_proc_staged_α_519_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_519_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_519_205
.Lcall_proc_staged_α_519_204:
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
.Lcall_proc_staged_α_519_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_519_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_519_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_519_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_519_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_519_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_519_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_519_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_519_2
.Lcall_proc_staged_α_519_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_519_2
.Lcall_proc_staged_α_519_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_519_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_519_2
.Lcall_proc_staged_α_519_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_519_2
.Lcall_proc_staged_α_519_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_519_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n443_call_prolog_α
.Lcall_proc_staged_α_519_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_519_29
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
.Lcall_proc_staged_α_519_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n442_suspend_α
n441_call_proc_staged_β:
                        mov              r11, 199
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
                        test             rax, rax;                            je    n443_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1536
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
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n443_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_519_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_519_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_519_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_519_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_519_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n442_suspend_α
.Lcall_proc_staged_α_519_0:
                        .quad            .Lcall_proc_staged_α_519_0_s
.Lcall_proc_staged_α_519_0_s:
                        .string          "not_attack/3"
                        .size            n441_call_proc_staged_bx, .-n441_call_proc_staged_bx
                        .type            n442_suspend_bx, @function
n442_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_suspend_α:         mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_521_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lsuspend_α_521_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n442_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n442_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F3_γ
n442_suspend_β:         mov              r11, 200;                            jmp   n441_call_proc_staged_β
                        .size            n442_suspend_bx, .-n442_suspend_bx
                        .type            n443_call_prolog_bx, @function
n443_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 201
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
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   not_attack$2F3_ω
n443_call_prolog_β:     mov              r11, 201;                            jmp   not_attack$2F3_ω
                        .size            n443_call_prolog_bx, .-n443_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_β:
                                                                              jmp   n407_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lnot_attack$2F3_α_522_50
                        mov              qword ptr [rsp + 1536], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lnot_attack$2F3_α_522_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1656]
                        add              rsp, 1680;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1664]
                        add              rsp, 1680;                           jmp   rcx
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
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 320
                        rep              stosb
main_α_body:
                        .type            n523_lit_integer_bx, @function
n523_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_integer_α:     mov              r11, 202
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n524_var_ref_α
.Llit_integer_α_533_0:  .quad            16
                        .size            n523_lit_integer_bx, .-n523_lit_integer_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 288]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n525_call_proc_staged_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_call_proc_staged_bx, @function
n525_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_proc_staged_α:
                        mov              r11, 204
                        mov              qword ptr [rsp + 224], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_537_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_537_201
.Lcall_proc_staged_α_537_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_537_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_537_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_537_203
.Lcall_proc_staged_α_537_202:
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
.Lcall_proc_staged_α_537_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_537_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_537_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_537_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_537_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 232], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_537_5
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_537_6
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_537_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n530_lit_string_α
.Lcall_proc_staged_α_537_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_537_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lcall_proc_staged_α_537_29:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n530_lit_string_α
                                                                              jmp   n526_var_α
n525_call_proc_staged_β:
                        mov              r11, 204
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 224], 0
                        lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n530_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              ecx, 48
                        mov              r8d, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n530_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_537_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_537_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_537_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n530_lit_string_α
                                                                              jmp   n526_var_α
.Lcall_proc_staged_α_537_0:
                        .quad            .Lcall_proc_staged_α_537_0_s
.Lcall_proc_staged_α_537_0_s:
                        .string          "queens/2"
                        .size            n525_call_proc_staged_bx, .-n525_call_proc_staged_bx
                        .type            n526_var_bx, @function
n526_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 168], rax;          jmp   n527_call_prolog_α
                        .size            n526_var_bx, .-n526_var_bx
                        .type            n527_call_prolog_bx, @function
n527_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_call_prolog_α:     mov              r11, 206
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn541: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn541]
                        lea              rsi, [rsp + 144]
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
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n525_call_proc_staged_β
                                                                              jmp   n528_lit_string_α
n527_call_prolog_β:     mov              r11, 206;                            jmp   n525_call_proc_staged_β
                        .size            n527_call_prolog_bx, .-n527_call_prolog_bx
                        .type            n528_lit_string_bx, @function
n528_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n529_call_prolog_α
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          ""
                        .size            n528_lit_string_bx, .-n528_lit_string_bx
                        .type            n529_call_prolog_bx, @function
n529_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_call_prolog_α:     mov              r11, 208
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn544: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn544]
                        lea              rsi, [rsp + 96]
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
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n525_call_proc_staged_β
                                                                              jmp   main_γ
n529_call_prolog_β:     mov              r11, 208;                            jmp   n525_call_proc_staged_β
                        .size            n529_call_prolog_bx, .-n529_call_prolog_bx
                        .type            n530_lit_string_bx, @function
n530_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_545_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n531_lit_string_α
.Llit_string_α_545_0:   .quad            .Llit_string_α_545_0_s
.Llit_string_α_545_0_s: .string          "user_error"
                        .size            n530_lit_string_bx, .-n530_lit_string_bx
                        .type            n531_lit_string_bx, @function
n531_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_546_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n532_call_prolog_α
.Llit_string_α_546_0:   .quad            .Llit_string_α_546_0_s
.Llit_string_α_546_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n531_lit_string_bx, .-n531_lit_string_bx
                        .type            n532_call_prolog_bx, @function
n532_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_call_prolog_α:     mov              r11, 211
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn548: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn548]
                        lea              rsi, [rsp + 16]
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
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n532_call_prolog_β:     mov              r11, 211;                            jmp   main_ω
                        .size            n532_call_prolog_bx, .-n532_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
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
                        .long            1216
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__queens$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1376
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "queens/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__queens$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "range/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__range$2F3
                        .quad            range$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "not_attack/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__not_attack$2F2
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "not_attack/3"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__not_attack$2F3
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
