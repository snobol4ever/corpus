                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__rev$2F2:
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
rev$2F2_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_36_102
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_36_101
.Lcall_prolog_α_36_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_36_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_36_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_36_101
.Lcall_prolog_α_36_100: lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_36_101: mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    rev$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   rev$2F2_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n2_lit_integer_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_39_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n3_lit_string_α
.Llit_integer_α_39_0:   .quad            2
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n4_call_prolog_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "[]"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_call_prolog_bx, @function
n4_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
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
.Lcall_prolog_α_41_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_41_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_41_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_41_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_41_110
.Lcall_prolog_α_41_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_41_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_41_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_41_110
.Lcall_prolog_α_41_113: cmp              al, 72;                              jne   .Lcall_prolog_α_41_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_41_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_41_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_41_110
.Lcall_prolog_α_41_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_41_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_41_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_41_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_41_114
                                                                              jmp   .Lcall_prolog_α_41_118
.Lcall_prolog_α_41_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_41_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_41_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_41_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_41_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_41_114
                                                                              jmp   .Lcall_prolog_α_41_116
.Lcall_prolog_α_41_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_41_117
.Lcall_prolog_α_41_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_41_117
.Lcall_prolog_α_41_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_41_117: mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n13_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n13_var_ref_α
                        .size            n4_call_prolog_bx, .-n4_call_prolog_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n6_lit_string_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n7_call_prolog_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "[]"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_call_prolog_bx, @function
n7_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_prolog_α:       mov              r11, 8
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_45_2]
                                                                              jmp   .Lcall_prolog_α_45_3
.Lcall_prolog_α_45_2:   .quad            .Lcall_prolog_α_45_2_s
.Lcall_prolog_α_45_2_s: .string          "[]"
.Lcall_prolog_α_45_3:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n8_var_ref_α
n7_call_prolog_β:       mov              r11, 8;                              jmp   n12_call_prolog_α
                        .size            n7_call_prolog_bx, .-n7_call_prolog_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_48_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n10_call_prolog_α
.Llit_string_α_48_0:    .quad            .Llit_string_α_48_0_s
.Llit_string_α_48_0_s:  .string          "[]"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_call_prolog_bx, @function
n10_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_prolog_α:      mov              r11, 11
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_49_2]
                                                                              jmp   .Lcall_prolog_α_49_3
.Lcall_prolog_α_49_2:   .quad            .Lcall_prolog_α_49_2_s
.Lcall_prolog_α_49_2_s: .string          "[]"
.Lcall_prolog_α_49_3:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n11_suspend_α
n10_call_prolog_β:      mov              r11, 11;                             jmp   n12_call_prolog_α
                        .size            n10_call_prolog_bx, .-n10_call_prolog_bx
                        .type            n11_suspend_bx, @function
n11_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_51_61
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
.Lsuspend_α_51_61:      mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   rev$2F2_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n12_call_prolog_α
                        .size            n11_suspend_bx, .-n11_suspend_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
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
                        cmp              al, 104;                             je    rev$2F2_ω
                                                                              jmp   n13_var_ref_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   rev$2F2_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n14_lit_integer_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_55_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n15_lit_integer_α
.Llit_integer_α_55_0:   .quad            3
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_56_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n16_call_prolog_α
.Llit_integer_α_56_0:   .quad            0
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
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
.Lcall_prolog_α_57_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_57_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_57_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_57_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_57_110
.Lcall_prolog_α_57_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_57_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_57_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_57_110
.Lcall_prolog_α_57_113: cmp              al, 72;                              jne   .Lcall_prolog_α_57_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_57_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_57_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_57_110
.Lcall_prolog_α_57_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_57_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_57_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_57_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_57_114
                                                                              jmp   .Lcall_prolog_α_57_118
.Lcall_prolog_α_57_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_57_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_57_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_57_115
                                                                              jmp   .Lcall_prolog_α_57_114
.Lcall_prolog_α_57_119: cmp              al, 3;                               jne   .Lcall_prolog_α_57_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_57_114
                                                                              jmp   .Lcall_prolog_α_57_115
.Lcall_prolog_α_57_120: cmp              al, 2;                               jne   .Lcall_prolog_α_57_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_57_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_57_114
                                                                              jmp   .Lcall_prolog_α_57_115
.Lcall_prolog_α_57_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_57_117
.Lcall_prolog_α_57_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_57_117
.Lcall_prolog_α_57_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_57_117: mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n17_var_ref_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   n35_call_prolog_α
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n18_var_ref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n19_var_ref_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n20_call_prolog_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
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
.Lcall_prolog_α_64_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_64_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_64_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_64_60
.Lcall_prolog_α_64_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_64_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_64_60
.Lcall_prolog_α_64_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_64_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_64_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_64_60
.Lcall_prolog_α_64_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_64_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_64_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_64_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_64_80
                                                                              jmp   .Lcall_prolog_α_64_74
.Lcall_prolog_α_64_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_64_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_64_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_64_73
                        lea              r9, [rsp + 608]
.Lcall_prolog_α_64_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_64_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_64_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_64
.Lcall_prolog_α_64_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_64_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_64
.Lcall_prolog_α_64_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_64_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_64_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_64
.Lcall_prolog_α_64_65:  lea              rcx, [rsp + 624]
.Lcall_prolog_α_64_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_64_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_64_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_68
.Lcall_prolog_α_64_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_64_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_68
.Lcall_prolog_α_64_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_64_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_64_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_68
.Lcall_prolog_α_64_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_64_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_64_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_64_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_64_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_64_75
                                                                              jmp   .Lcall_prolog_α_64_72
.Lcall_prolog_α_64_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_64_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_64_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_64_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_64_76
                                                                              jmp   .Lcall_prolog_α_64_72
.Lcall_prolog_α_64_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_64_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_64_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_64_77
.Lcall_prolog_α_64_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_64_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_64_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_64_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_64_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_64_72
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
.Lcall_prolog_α_64_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_64_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_64_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_81
.Lcall_prolog_α_64_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_64_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_81
.Lcall_prolog_α_64_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_64_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_64_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_64_81
.Lcall_prolog_α_64_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_64_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_64_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_64_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_64_85
                                                                              jmp   .Lcall_prolog_α_64_86
.Lcall_prolog_α_64_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_64_87
.Lcall_prolog_α_64_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_64_87:  lea              rcx, [rsp + 624]
.Lcall_prolog_α_64_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_64_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_64_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_88
.Lcall_prolog_α_64_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_64_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_88
.Lcall_prolog_α_64_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_64_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_64_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_64_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_64_88
.Lcall_prolog_α_64_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_64_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_64_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_64_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_64_92
                                                                              jmp   .Lcall_prolog_α_64_93
.Lcall_prolog_α_64_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_64_94
.Lcall_prolog_α_64_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_64_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_64_77
.Lcall_prolog_α_64_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_64_77
.Lcall_prolog_α_64_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_64_77:  mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   n35_call_prolog_α
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n23_call_prolog_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_prolog_bx, @function
n23_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_prolog_α:      mov              r11, 24
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
.Lcall_prolog_α_69_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_40
.Lcall_prolog_α_69_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_40
.Lcall_prolog_α_69_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_69_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_40
.Lcall_prolog_α_69_41:  lea              r9, [rsp + 512]
.Lcall_prolog_α_69_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_42
.Lcall_prolog_α_69_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_42
.Lcall_prolog_α_69_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_42
.Lcall_prolog_α_69_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_69_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_69_44
                                                                              jmp   .Lcall_prolog_α_69_45
.Lcall_prolog_α_69_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_53
                                                                              jmp   .Lcall_prolog_α_69_46
.Lcall_prolog_α_69_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_69_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_69_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_69_51
.Lcall_prolog_α_69_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_47
                                                                              jmp   .Lcall_prolog_α_69_48
.Lcall_prolog_α_69_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_69_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_69_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_69_51
.Lcall_prolog_α_69_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_69_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_69_53
                                                                              jmp   .Lcall_prolog_α_69_52
.Lcall_prolog_α_69_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_69_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_69_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_69_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_69_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_69_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_69_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_69_51
                                                                              jmp   .Lcall_prolog_α_69_52
.Lcall_prolog_α_69_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_69_53
.Lcall_prolog_α_69_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_69_54
.Lcall_prolog_α_69_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_69_54
.Lcall_prolog_α_69_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_69_54:  mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n24_var_ref_α
n23_call_prolog_β:      mov              r11, 24;                             jmp   n35_call_prolog_α
                        .size            n23_call_prolog_bx, .-n23_call_prolog_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n26_call_proc_staged_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_call_proc_staged_bx, @function
n26_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_proc_staged_α: mov              r11, 27
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_75_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_75_201
.Lcall_proc_staged_α_75_200:
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
.Lcall_proc_staged_α_75_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_75_202
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_75_203
.Lcall_proc_staged_α_75_202:
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
.Lcall_proc_staged_α_75_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_75_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_75_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_75_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_75_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_75_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_75_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 424], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_75_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_75_2
.Lcall_proc_staged_α_75_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_75_2
.Lcall_proc_staged_α_75_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_75_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_75_2
.Lcall_proc_staged_α_75_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_75_2
.Lcall_proc_staged_α_75_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_75_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_call_prolog_α
.Lcall_proc_staged_α_75_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_75_29
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
.Lcall_proc_staged_α_75_29:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n27_var_ref_α
n26_call_proc_staged_β: mov              r11, 27
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
                        test             rax, rax;                            je    n35_call_prolog_α
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
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n35_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_75_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_75_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_75_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_75_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_75_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n27_var_ref_α
.Lcall_proc_staged_α_75_0:
                        .quad            .Lcall_proc_staged_α_75_0_s
.Lcall_proc_staged_α_75_0_s:
                        .string          "rev/2"
                        .size            n26_call_proc_staged_bx, .-n26_call_proc_staged_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n28_lit_string_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_lit_string_bx, @function
n28_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_78_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n29_var_ref_α
.Llit_string_α_78_0:    .quad            .Llit_string_α_78_0_s
.Llit_string_α_78_0_s:  .string          "."
                        .size            n28_lit_string_bx, .-n28_lit_string_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n30_lit_string_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_lit_string_bx, @function
n30_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_81_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n31_call_prolog_α
.Llit_string_α_81_0:    .quad            .Llit_string_α_81_0_s
.Llit_string_α_81_0_s:  .string          "[]"
                        .size            n30_lit_string_bx, .-n30_lit_string_bx
                        .type            n31_call_prolog_bx, @function
n31_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_prolog_α:      mov              r11, 32
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
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n32_var_ref_α
n31_call_prolog_β:      mov              r11, 32;                             jmp   n35_call_prolog_α
                        .size            n31_call_prolog_bx, .-n31_call_prolog_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n33_call_proc_staged_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_call_proc_staged_bx, @function
n33_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α: mov              r11, 34
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_86_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_86_201
.Lcall_proc_staged_α_86_200:
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
.Lcall_proc_staged_α_86_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_86_202
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_86_203
.Lcall_proc_staged_α_86_202:
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
.Lcall_proc_staged_α_86_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_86_204
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_86_205
.Lcall_proc_staged_α_86_204:
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
.Lcall_proc_staged_α_86_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_86_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_86_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_86_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_86_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_86_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_86_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_86_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_86_2
.Lcall_proc_staged_α_86_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_86_2
.Lcall_proc_staged_α_86_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_86_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_86_2
.Lcall_proc_staged_α_86_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_86_2
.Lcall_proc_staged_α_86_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_86_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_call_proc_staged_β
.Lcall_proc_staged_α_86_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_86_29
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
.Lcall_proc_staged_α_86_29:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n26_call_proc_staged_β
                                                                              jmp   n34_suspend_α
n33_call_proc_staged_β: mov              r11, 34
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
                        test             rax, rax;                            je    n26_call_proc_staged_β
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
                        test             rax, rax;                            je    n26_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_86_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_86_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_86_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_86_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_86_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n26_call_proc_staged_β
                                                                              jmp   n34_suspend_α
.Lcall_proc_staged_α_86_0:
                        .quad            .Lcall_proc_staged_α_86_0_s
.Lcall_proc_staged_α_86_0_s:
                        .string          "append/3"
                        .size            n33_call_proc_staged_bx, .-n33_call_proc_staged_bx
                        .type            n34_suspend_bx, @function
n34_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:          mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_88_61
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
.Lsuspend_α_88_61:      mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n34_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   rev$2F2_γ
n34_suspend_β:          mov              r11, 35;                             jmp   n33_call_proc_staged_β
                        .size            n34_suspend_bx, .-n34_suspend_bx
                        .type            n35_call_prolog_bx, @function
n35_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
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
                        cmp              al, 104;                             je    rev$2F2_ω
                                                                              jmp   rev$2F2_ω
n35_call_prolog_β:      mov              r11, 36;                             jmp   rev$2F2_ω
                        .size            n35_call_prolog_bx, .-n35_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lrev$2F2_α_89_50
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
.Lrev$2F2_α_89_50:      mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1208]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1216]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__mklist$2F2:
                        sub              rsp, 992
                        mov              qword ptr [rsp + 968], rcx
                        mov              qword ptr [rsp + 976], rdx
                        mov              qword ptr [rsp + 984], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 960
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
mklist$2F2_α_body:
                        .type            n90_call_prolog_bx, @function
n90_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_prolog_α:      mov              r11, 37
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lcall_prolog_α_122_101
.Lcall_prolog_α_122_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_122_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_122_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_122_101
.Lcall_prolog_α_122_100:
                        lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_122_101:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    mklist$2F2_ω
                                                                              jmp   n91_var_ref_α
n90_call_prolog_β:      mov              r11, 37;                             jmp   mklist$2F2_ω
                        .size            n90_call_prolog_bx, .-n90_call_prolog_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n92_lit_integer_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_125_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n93_lit_integer_α
.Llit_integer_α_125_0:  .quad            1
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_126_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n94_call_prolog_α
.Llit_integer_α_126_0:  .quad            0
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_call_prolog_bx, @function
n94_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        lea              r8, [rsp + 800]
.Lcall_prolog_α_127_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_127_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_127_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_110
.Lcall_prolog_α_127_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_127_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_110
.Lcall_prolog_α_127_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_127_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_127_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_110
.Lcall_prolog_α_127_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_127_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_127_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_127_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_127_114
                                                                              jmp   .Lcall_prolog_α_127_118
.Lcall_prolog_α_127_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_127_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_127_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_127_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_127_115
                                                                              jmp   .Lcall_prolog_α_127_114
.Lcall_prolog_α_127_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_127_117
.Lcall_prolog_α_127_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_127_117
.Lcall_prolog_α_127_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_127_117:
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n104_var_ref_α
                                                                              jmp   n95_var_ref_α
n94_call_prolog_β:      mov              r11, 41;                             jmp   n104_var_ref_α
                        .size            n94_call_prolog_bx, .-n94_call_prolog_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n96_lit_integer_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_130_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n97_call_prolog_α
.Llit_integer_α_130_0:  .quad            0
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_call_prolog_bx, @function
n97_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_prolog_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n103_call_prolog_α
                                                                              jmp   n98_var_ref_α
n97_call_prolog_β:      mov              r11, 44;                             jmp   n103_call_prolog_α
                        .size            n97_call_prolog_bx, .-n97_call_prolog_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n99_lit_string_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_134_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n100_call_prolog_α
.Llit_string_α_134_0:   .quad            .Llit_string_α_134_0_s
.Llit_string_α_134_0_s: .string          "[]"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_call_prolog_bx, @function
n100_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_prolog_α:     mov              r11, 47
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_135_2]
                                                                              jmp   .Lcall_prolog_α_135_3
.Lcall_prolog_α_135_2:  .quad            .Lcall_prolog_α_135_2_s
.Lcall_prolog_α_135_2_s:
                        .string          "[]"
.Lcall_prolog_α_135_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n103_call_prolog_α
                                                                              jmp   n101_cut_α
n100_call_prolog_β:     mov              r11, 47;                             jmp   n103_call_prolog_α
                        .size            n100_call_prolog_bx, .-n100_call_prolog_bx
                        .type            n101_cut_bx, @function
n101_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_cut_α:             mov              r11, 48;                             jmp   n102_move_label_α
                        .size            n101_cut_bx, .-n101_cut_bx
                        .type            n102_move_label_bx, @function
n102_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_move_label_α:      mov              r11, 49
                        lea              rax, [rip + n103_call_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   mklist$2F2_γ
                        .size            n102_move_label_bx, .-n102_move_label_bx
                        .type            n103_call_prolog_bx, @function
n103_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_prolog_α:     mov              r11, 50
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    mklist$2F2_ω
                                                                              jmp   n104_var_ref_α
n103_call_prolog_β:     mov              r11, 50;                             jmp   mklist$2F2_ω
                        .size            n103_call_prolog_bx, .-n103_call_prolog_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n106_call_prolog_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 53
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
.Lcall_prolog_α_144_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_144_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_144_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_144_40
.Lcall_prolog_α_144_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_144_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_144_40
.Lcall_prolog_α_144_56: cmp              al, 72;                              jne   .Lcall_prolog_α_144_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_144_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_144_40
.Lcall_prolog_α_144_41: lea              r9, [rsp + 544]
.Lcall_prolog_α_144_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_144_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_144_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_144_42
.Lcall_prolog_α_144_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_144_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_144_42
.Lcall_prolog_α_144_58: cmp              al, 72;                              jne   .Lcall_prolog_α_144_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_144_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_144_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_144_42
.Lcall_prolog_α_144_43: cmp              r8, r9;                              je    .Lcall_prolog_α_144_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_144_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_144_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_144_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_144_44
                                                                              jmp   .Lcall_prolog_α_144_45
.Lcall_prolog_α_144_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_144_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_144_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_144_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_144_53
                                                                              jmp   .Lcall_prolog_α_144_46
.Lcall_prolog_α_144_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_144_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_144_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_144_51
.Lcall_prolog_α_144_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_144_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_144_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_144_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_144_47
                                                                              jmp   .Lcall_prolog_α_144_48
.Lcall_prolog_α_144_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_144_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_144_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_144_51
.Lcall_prolog_α_144_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_144_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_144_53
                                                                              jmp   .Lcall_prolog_α_144_52
.Lcall_prolog_α_144_49: cmp              dl, 80;                              je    .Lcall_prolog_α_144_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_144_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_144_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_144_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_144_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_144_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_144_51
                                                                              jmp   .Lcall_prolog_α_144_52
.Lcall_prolog_α_144_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_144_53
.Lcall_prolog_α_144_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_144_54
.Lcall_prolog_α_144_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_144_54
.Lcall_prolog_α_144_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_144_54: mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 53;                             jmp   n121_call_prolog_α
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n109_var_ref_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n110_call_prolog_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_call_prolog_bx, @function
n110_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lcall_prolog_α_151_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_151_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_151_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_151_60
.Lcall_prolog_α_151_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_151_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_151_60
.Lcall_prolog_α_151_63: cmp              al, 72;                              jne   .Lcall_prolog_α_151_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_151_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_151_60
.Lcall_prolog_α_151_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_151_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_151_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_151_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_151_80
                                                                              jmp   .Lcall_prolog_α_151_74
.Lcall_prolog_α_151_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_151_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_151_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_151_73
                        lea              r9, [rsp + 448]
.Lcall_prolog_α_151_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_151_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_151_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_64
.Lcall_prolog_α_151_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_151_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_64
.Lcall_prolog_α_151_67: cmp              al, 72;                              jne   .Lcall_prolog_α_151_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_151_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_64
.Lcall_prolog_α_151_65: lea              rcx, [rsp + 464]
.Lcall_prolog_α_151_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_151_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_151_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_68
.Lcall_prolog_α_151_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_151_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_68
.Lcall_prolog_α_151_71: cmp              al, 72;                              jne   .Lcall_prolog_α_151_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_151_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_68
.Lcall_prolog_α_151_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_151_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_151_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_151_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_151_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_151_75
                                                                              jmp   .Lcall_prolog_α_151_72
.Lcall_prolog_α_151_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_151_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_151_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_151_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_151_76
                                                                              jmp   .Lcall_prolog_α_151_72
.Lcall_prolog_α_151_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_151_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_151_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_151_77
.Lcall_prolog_α_151_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_151_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_151_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_151_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_151_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_151_72
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
                        lea              r9, [rsp + 448]
.Lcall_prolog_α_151_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_151_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_151_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_81
.Lcall_prolog_α_151_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_151_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_81
.Lcall_prolog_α_151_84: cmp              al, 72;                              jne   .Lcall_prolog_α_151_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_151_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_151_81
.Lcall_prolog_α_151_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_151_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_151_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_151_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_151_85
                                                                              jmp   .Lcall_prolog_α_151_86
.Lcall_prolog_α_151_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_151_87
.Lcall_prolog_α_151_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_151_87: lea              rcx, [rsp + 464]
.Lcall_prolog_α_151_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_151_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_151_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_88
.Lcall_prolog_α_151_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_151_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_88
.Lcall_prolog_α_151_91: cmp              al, 72;                              jne   .Lcall_prolog_α_151_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_151_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_151_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_151_88
.Lcall_prolog_α_151_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_151_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_151_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_151_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_151_92
                                                                              jmp   .Lcall_prolog_α_151_93
.Lcall_prolog_α_151_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_151_94
.Lcall_prolog_α_151_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_151_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_151_77
.Lcall_prolog_α_151_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_151_77
.Lcall_prolog_α_151_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_151_77: mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n111_var_ref_α
n110_call_prolog_β:     mov              r11, 57;                             jmp   n121_call_prolog_α
                        .size            n110_call_prolog_bx, .-n110_call_prolog_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n112_var_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 376], rax;          jmp   n113_lit_integer_α
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n114_call_prolog_α
.Llit_integer_α_156_0:  .quad            1
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_call_prolog_bx, @function
n114_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_prolog_α:     mov              r11, 61
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n115_call_prolog_α
n114_call_prolog_β:     mov              r11, 61;                             jmp   n121_call_prolog_α
                        .size            n114_call_prolog_bx, .-n114_call_prolog_bx
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 62
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_prolog_β:     mov              r11, 62;                             jmp   n121_call_prolog_α
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n118_call_proc_staged_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_proc_staged_bx, @function
n118_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        mov              r11, 65
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 224]
                        call             mklist$2F2_dcα;                      jmp   .Lcall_proc_staged_α_164_2
.Lcall_proc_staged_α_164_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_164_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lcall_proc_staged_α_164_29:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n119_move_label_α
n118_call_proc_staged_β:
                        mov              r11, 65;                             jmp   n121_call_prolog_α
.Lcall_proc_staged_β_164_0:
                        .quad            .Lcall_proc_staged_β_164_0_s
.Lcall_proc_staged_β_164_0_s:
                        .string          "mklist/2"
                        .size            n118_call_proc_staged_bx, .-n118_call_proc_staged_bx
                        .type            n119_move_label_bx, @function
n119_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_move_label_α:      mov              r11, 66
                        lea              rax, [rip + n118_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   mklist$2F2_γ
                        .size            n119_move_label_bx, .-n119_move_label_bx
                        .type            n120_disjunction_bx, @function
n120_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_disjunction_α:     mov              r11, 67
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    mklist$2F2_ω
                                                                              jmp   rax
n120_disjunction_β:     mov              r11, 67;                             jmp   mklist$2F2_ω
                        .size            n120_disjunction_bx, .-n120_disjunction_bx
                        .type            n121_call_prolog_bx, @function
n121_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_prolog_α:     mov              r11, 68
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
                        cmp              al, 104;                             je    mklist$2F2_ω
                                                                              jmp   mklist$2F2_ω
n121_call_prolog_β:     mov              r11, 68;                             jmp   mklist$2F2_ω
                        .size            n121_call_prolog_bx, .-n121_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_β:
                                                                              jmp   n120_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 968]
                        add              rsp, 992;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_ω:
                        mov              rcx, qword ptr [rsp + 976]
                        add              rsp, 992;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_dcα:
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
                        lea              rcx, [rip + .Lmklist$2F2_α_170_2]
                        lea              rdx, [rip + .Lmklist$2F2_α_170_3];   jmp   FN__mklist$2F2
.Lmklist$2F2_α_170_2:   pop              r12
                        pop              r12;                                 jmp   r12
.Lmklist$2F2_α_170_3:   pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        lea              rax, [rip + n185_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        .type            n171_call_prolog_bx, @function
n171_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_prolog_α:     mov              r11, 69
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_208_102
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_208_101
.Lcall_prolog_α_208_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_208_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_208_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_208_101
.Lcall_prolog_α_208_100:
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
.Lcall_prolog_α_208_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                                                                              jmp   n172_var_ref_α
n171_call_prolog_β:     mov              r11, 69;                             jmp   append$2F3_ω
                        .size            n171_call_prolog_bx, .-n171_call_prolog_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n173_lit_integer_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n174_lit_string_α
.Llit_integer_α_211_0:  .quad            2
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n175_call_prolog_α
.Llit_string_α_212_0:   .quad            .Llit_string_α_212_0_s
.Llit_string_α_212_0_s: .string          "[]"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_call_prolog_bx, @function
n175_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_call_prolog_α:     mov              r11, 73
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
.Lcall_prolog_α_213_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_213_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_213_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_213_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_213_110
.Lcall_prolog_α_213_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_213_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_213_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_213_110
.Lcall_prolog_α_213_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_213_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_213_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_213_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_213_110
.Lcall_prolog_α_213_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_213_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_213_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_213_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_213_114
                                                                              jmp   .Lcall_prolog_α_213_118
.Lcall_prolog_α_213_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_213_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_213_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_213_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_213_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_213_114
                                                                              jmp   .Lcall_prolog_α_213_116
.Lcall_prolog_α_213_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_213_117
.Lcall_prolog_α_213_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_213_117
.Lcall_prolog_α_213_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_213_117:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n187_var_ref_α
                                                                              jmp   n176_var_ref_α
n175_call_prolog_β:     mov              r11, 73;                             jmp   n187_var_ref_α
                        .size            n175_call_prolog_bx, .-n175_call_prolog_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n177_lit_string_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_lit_string_bx, @function
n177_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n178_call_prolog_α
.Llit_string_α_216_0:   .quad            .Llit_string_α_216_0_s
.Llit_string_α_216_0_s: .string          "[]"
                        .size            n177_lit_string_bx, .-n177_lit_string_bx
                        .type            n178_call_prolog_bx, @function
n178_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_prolog_α:     mov              r11, 76
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_217_2]
                                                                              jmp   .Lcall_prolog_α_217_3
.Lcall_prolog_α_217_2:  .quad            .Lcall_prolog_α_217_2_s
.Lcall_prolog_α_217_2_s:
                        .string          "[]"
.Lcall_prolog_α_217_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n186_call_prolog_α
                                                                              jmp   n179_var_ref_α
n178_call_prolog_β:     mov              r11, 76;                             jmp   n186_call_prolog_α
                        .size            n178_call_prolog_bx, .-n178_call_prolog_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n180_var_ref_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n181_call_prolog_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 79
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
.Lcall_prolog_α_222_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_222_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_222_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_222_40
.Lcall_prolog_α_222_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_222_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_222_40
.Lcall_prolog_α_222_56: cmp              al, 72;                              jne   .Lcall_prolog_α_222_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_222_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_222_40
.Lcall_prolog_α_222_41: lea              r9, [rsp + 848]
.Lcall_prolog_α_222_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_222_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_222_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_222_42
.Lcall_prolog_α_222_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_222_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_222_42
.Lcall_prolog_α_222_58: cmp              al, 72;                              jne   .Lcall_prolog_α_222_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_222_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_222_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_222_42
.Lcall_prolog_α_222_43: cmp              r8, r9;                              je    .Lcall_prolog_α_222_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_222_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_222_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_222_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_222_44
                                                                              jmp   .Lcall_prolog_α_222_45
.Lcall_prolog_α_222_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_222_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_222_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_222_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_222_53
                                                                              jmp   .Lcall_prolog_α_222_46
.Lcall_prolog_α_222_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_222_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_222_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_222_51
.Lcall_prolog_α_222_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_222_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_222_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_222_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_222_47
                                                                              jmp   .Lcall_prolog_α_222_48
.Lcall_prolog_α_222_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_222_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_222_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_222_51
.Lcall_prolog_α_222_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_222_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_222_53
                                                                              jmp   .Lcall_prolog_α_222_52
.Lcall_prolog_α_222_49: cmp              dl, 80;                              je    .Lcall_prolog_α_222_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_222_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_222_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_222_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_222_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_222_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_222_51
                                                                              jmp   .Lcall_prolog_α_222_52
.Lcall_prolog_α_222_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_222_53
.Lcall_prolog_α_222_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_222_54
.Lcall_prolog_α_222_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_222_54
.Lcall_prolog_α_222_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_222_54: mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n186_call_prolog_α
                                                                              jmp   n182_var_ref_α
n181_call_prolog_β:     mov              r11, 79;                             jmp   n186_call_prolog_α
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n184_call_prolog_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_call_prolog_bx, @function
n184_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_prolog_α:     mov              r11, 82
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
.Lcall_prolog_α_227_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_227_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_227_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_227_40
.Lcall_prolog_α_227_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_227_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_227_40
.Lcall_prolog_α_227_56: cmp              al, 72;                              jne   .Lcall_prolog_α_227_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_227_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_227_40
.Lcall_prolog_α_227_41: lea              r9, [rsp + 768]
.Lcall_prolog_α_227_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_227_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_227_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_227_42
.Lcall_prolog_α_227_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_227_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_227_42
.Lcall_prolog_α_227_58: cmp              al, 72;                              jne   .Lcall_prolog_α_227_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_227_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_227_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_227_42
.Lcall_prolog_α_227_43: cmp              r8, r9;                              je    .Lcall_prolog_α_227_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_227_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_227_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_227_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_227_44
                                                                              jmp   .Lcall_prolog_α_227_45
.Lcall_prolog_α_227_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_227_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_227_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_227_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_227_53
                                                                              jmp   .Lcall_prolog_α_227_46
.Lcall_prolog_α_227_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_227_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_227_51
.Lcall_prolog_α_227_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_227_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_227_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_227_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_227_47
                                                                              jmp   .Lcall_prolog_α_227_48
.Lcall_prolog_α_227_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_227_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_227_51
.Lcall_prolog_α_227_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_227_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_227_53
                                                                              jmp   .Lcall_prolog_α_227_52
.Lcall_prolog_α_227_49: cmp              dl, 80;                              je    .Lcall_prolog_α_227_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_227_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_227_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_227_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_227_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_227_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_227_51
                                                                              jmp   .Lcall_prolog_α_227_52
.Lcall_prolog_α_227_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_227_53
.Lcall_prolog_α_227_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_227_54
.Lcall_prolog_α_227_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_227_54
.Lcall_prolog_α_227_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_227_54: mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n186_call_prolog_α
                                                                              jmp   n185_suspend_α
n184_call_prolog_β:     mov              r11, 82;                             jmp   n186_call_prolog_α
                        .size            n184_call_prolog_bx, .-n184_call_prolog_bx
                        .type            n185_suspend_bx, @function
n185_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_suspend_α:         mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_229_61
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
.Lsuspend_α_229_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n185_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n185_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n185_suspend_β:         mov              r11, 83;                             jmp   n186_call_prolog_α
                        .size            n185_suspend_bx, .-n185_suspend_bx
                        .type            n186_call_prolog_bx, @function
n186_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_prolog_α:     mov              r11, 84
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
                                                                              jmp   n187_var_ref_α
n186_call_prolog_β:     mov              r11, 84;                             jmp   append$2F3_ω
                        .size            n186_call_prolog_bx, .-n186_call_prolog_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n188_lit_integer_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_lit_integer_bx, @function
n188_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n189_lit_integer_α
.Llit_integer_α_233_0:  .quad            3
                        .size            n188_lit_integer_bx, .-n188_lit_integer_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n190_call_prolog_α
.Llit_integer_α_234_0:  .quad            0
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_call_prolog_bx, @function
n190_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_prolog_α:     mov              r11, 88
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
.Lcall_prolog_α_235_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_235_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_235_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_235_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_235_110
.Lcall_prolog_α_235_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_235_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_235_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_235_110
.Lcall_prolog_α_235_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_235_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_235_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_235_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_235_110
.Lcall_prolog_α_235_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_235_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_235_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_235_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_235_114
                                                                              jmp   .Lcall_prolog_α_235_118
.Lcall_prolog_α_235_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_235_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_235_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_235_115
                                                                              jmp   .Lcall_prolog_α_235_114
.Lcall_prolog_α_235_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_235_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_235_114
                                                                              jmp   .Lcall_prolog_α_235_115
.Lcall_prolog_α_235_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_235_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_235_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_235_114
                                                                              jmp   .Lcall_prolog_α_235_115
.Lcall_prolog_α_235_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_235_117
.Lcall_prolog_α_235_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_235_117
.Lcall_prolog_α_235_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_235_117:
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n191_var_ref_α
n190_call_prolog_β:     mov              r11, 88;                             jmp   n207_call_prolog_α
                        .size            n190_call_prolog_bx, .-n190_call_prolog_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n192_var_ref_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n193_var_ref_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n194_call_prolog_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_call_prolog_bx, @function
n194_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_prolog_α:     mov              r11, 92
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
.Lcall_prolog_α_242_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_60
.Lcall_prolog_α_242_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_242_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_60
.Lcall_prolog_α_242_63: cmp              al, 72;                              jne   .Lcall_prolog_α_242_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_242_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_60
.Lcall_prolog_α_242_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_242_80
                                                                              jmp   .Lcall_prolog_α_242_74
.Lcall_prolog_α_242_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_242_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_242_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_242_73
                        lea              r9, [rsp + 512]
.Lcall_prolog_α_242_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_64
.Lcall_prolog_α_242_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_242_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_64
.Lcall_prolog_α_242_67: cmp              al, 72;                              jne   .Lcall_prolog_α_242_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_242_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_64
.Lcall_prolog_α_242_65: lea              rcx, [rsp + 528]
.Lcall_prolog_α_242_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_68
.Lcall_prolog_α_242_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_242_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_68
.Lcall_prolog_α_242_71: cmp              al, 72;                              jne   .Lcall_prolog_α_242_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_242_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_68
.Lcall_prolog_α_242_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_242_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_242_75
                                                                              jmp   .Lcall_prolog_α_242_72
.Lcall_prolog_α_242_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_242_76
                                                                              jmp   .Lcall_prolog_α_242_72
.Lcall_prolog_α_242_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_242_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_242_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_242_77
.Lcall_prolog_α_242_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_242_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_242_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_242_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_242_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_242_72
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
.Lcall_prolog_α_242_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_81
.Lcall_prolog_α_242_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_242_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_81
.Lcall_prolog_α_242_84: cmp              al, 72;                              jne   .Lcall_prolog_α_242_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_242_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_242_81
.Lcall_prolog_α_242_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_242_85
                                                                              jmp   .Lcall_prolog_α_242_86
.Lcall_prolog_α_242_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_242_87
.Lcall_prolog_α_242_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_242_87: lea              rcx, [rsp + 528]
.Lcall_prolog_α_242_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_88
.Lcall_prolog_α_242_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_242_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_88
.Lcall_prolog_α_242_91: cmp              al, 72;                              jne   .Lcall_prolog_α_242_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_242_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_242_88
.Lcall_prolog_α_242_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_242_92
                                                                              jmp   .Lcall_prolog_α_242_93
.Lcall_prolog_α_242_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_242_94
.Lcall_prolog_α_242_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_242_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_242_77
.Lcall_prolog_α_242_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_242_77
.Lcall_prolog_α_242_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_242_77: mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n195_var_ref_α
n194_call_prolog_β:     mov              r11, 92;                             jmp   n207_call_prolog_α
                        .size            n194_call_prolog_bx, .-n194_call_prolog_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n196_var_ref_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n197_call_prolog_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_call_prolog_bx, @function
n197_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_prolog_α:     mov              r11, 95
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
.Lcall_prolog_α_247_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_247_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_247_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_247_40
.Lcall_prolog_α_247_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_247_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_247_40
.Lcall_prolog_α_247_56: cmp              al, 72;                              jne   .Lcall_prolog_α_247_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_247_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_247_40
.Lcall_prolog_α_247_41: lea              r9, [rsp + 416]
.Lcall_prolog_α_247_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_247_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_247_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_247_42
.Lcall_prolog_α_247_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_247_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_247_42
.Lcall_prolog_α_247_58: cmp              al, 72;                              jne   .Lcall_prolog_α_247_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_247_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_247_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_247_42
.Lcall_prolog_α_247_43: cmp              r8, r9;                              je    .Lcall_prolog_α_247_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_247_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_247_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_247_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_247_44
                                                                              jmp   .Lcall_prolog_α_247_45
.Lcall_prolog_α_247_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_247_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_247_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_247_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_247_53
                                                                              jmp   .Lcall_prolog_α_247_46
.Lcall_prolog_α_247_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_247_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_247_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_247_51
.Lcall_prolog_α_247_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_247_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_247_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_247_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_247_47
                                                                              jmp   .Lcall_prolog_α_247_48
.Lcall_prolog_α_247_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_247_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_247_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_247_51
.Lcall_prolog_α_247_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_247_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_247_53
                                                                              jmp   .Lcall_prolog_α_247_52
.Lcall_prolog_α_247_49: cmp              dl, 80;                              je    .Lcall_prolog_α_247_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_247_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_247_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_247_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_247_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_247_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_247_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_247_51
                                                                              jmp   .Lcall_prolog_α_247_52
.Lcall_prolog_α_247_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_247_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_247_53
.Lcall_prolog_α_247_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_247_54
.Lcall_prolog_α_247_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_247_54
.Lcall_prolog_α_247_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_247_54: mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n198_var_ref_α
n197_call_prolog_β:     mov              r11, 95;                             jmp   n207_call_prolog_α
                        .size            n197_call_prolog_bx, .-n197_call_prolog_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n199_var_ref_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n200_var_ref_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n201_call_prolog_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_call_prolog_bx, @function
n201_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_prolog_α:     mov              r11, 99
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
.Lcall_prolog_α_254_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_60
.Lcall_prolog_α_254_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_60
.Lcall_prolog_α_254_63: cmp              al, 72;                              jne   .Lcall_prolog_α_254_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_254_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_60
.Lcall_prolog_α_254_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_254_80
                                                                              jmp   .Lcall_prolog_α_254_74
.Lcall_prolog_α_254_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_254_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_254_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_254_73
                        lea              r9, [rsp + 320]
.Lcall_prolog_α_254_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_64
.Lcall_prolog_α_254_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_64
.Lcall_prolog_α_254_67: cmp              al, 72;                              jne   .Lcall_prolog_α_254_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_64
.Lcall_prolog_α_254_65: lea              rcx, [rsp + 336]
.Lcall_prolog_α_254_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_68
.Lcall_prolog_α_254_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_68
.Lcall_prolog_α_254_71: cmp              al, 72;                              jne   .Lcall_prolog_α_254_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_254_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_68
.Lcall_prolog_α_254_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_254_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_75
                                                                              jmp   .Lcall_prolog_α_254_72
.Lcall_prolog_α_254_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_254_76
                                                                              jmp   .Lcall_prolog_α_254_72
.Lcall_prolog_α_254_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_254_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_254_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_254_77
.Lcall_prolog_α_254_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_254_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_254_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_254_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_254_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_254_72
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
.Lcall_prolog_α_254_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_81
.Lcall_prolog_α_254_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_81
.Lcall_prolog_α_254_84: cmp              al, 72;                              jne   .Lcall_prolog_α_254_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_81
.Lcall_prolog_α_254_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_85
                                                                              jmp   .Lcall_prolog_α_254_86
.Lcall_prolog_α_254_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_254_87
.Lcall_prolog_α_254_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_254_87: lea              rcx, [rsp + 336]
.Lcall_prolog_α_254_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_88
.Lcall_prolog_α_254_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_88
.Lcall_prolog_α_254_91: cmp              al, 72;                              jne   .Lcall_prolog_α_254_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_254_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_254_88
.Lcall_prolog_α_254_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_254_92
                                                                              jmp   .Lcall_prolog_α_254_93
.Lcall_prolog_α_254_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_254_94
.Lcall_prolog_α_254_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_254_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_254_77
.Lcall_prolog_α_254_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_254_77
.Lcall_prolog_α_254_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_254_77: mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n202_var_ref_α
n201_call_prolog_β:     mov              r11, 99;                             jmp   n207_call_prolog_α
                        .size            n201_call_prolog_bx, .-n201_call_prolog_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n203_var_ref_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_var_ref_bx, @function
n203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n204_var_ref_α
                        .size            n203_var_ref_bx, .-n203_var_ref_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n205_call_proc_staged_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_call_proc_staged_bx, @function
n205_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        mov              r11, 103
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_262_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_262_201
.Lcall_proc_staged_α_262_200:
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
.Lcall_proc_staged_α_262_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_262_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_262_203
.Lcall_proc_staged_α_262_202:
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
.Lcall_proc_staged_α_262_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_262_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_262_205
.Lcall_proc_staged_α_262_204:
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
.Lcall_proc_staged_α_262_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_262_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_262_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_262_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_262_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_262_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_262_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_262_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_262_2
.Lcall_proc_staged_α_262_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_262_2
.Lcall_proc_staged_α_262_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_262_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_262_2
.Lcall_proc_staged_α_262_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_262_2
.Lcall_proc_staged_α_262_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_262_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_call_prolog_α
.Lcall_proc_staged_α_262_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_262_29
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
.Lcall_proc_staged_α_262_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n206_suspend_α
n205_call_proc_staged_β:
                        mov              r11, 103
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
                        test             rax, rax;                            je    n207_call_prolog_α
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
                        test             rax, rax;                            je    n207_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_262_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_262_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_262_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_262_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_262_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n207_call_prolog_α
                                                                              jmp   n206_suspend_α
.Lcall_proc_staged_α_262_0:
                        .quad            .Lcall_proc_staged_α_262_0_s
.Lcall_proc_staged_α_262_0_s:
                        .string          "append/3"
                        .size            n205_call_proc_staged_bx, .-n205_call_proc_staged_bx
                        .type            n206_suspend_bx, @function
n206_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_suspend_α:         mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_264_61
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
.Lsuspend_α_264_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n206_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n206_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n206_suspend_β:         mov              r11, 104;                            jmp   n205_call_proc_staged_β
                        .size            n206_suspend_bx, .-n206_suspend_bx
                        .type            n207_call_prolog_bx, @function
n207_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_prolog_α:     mov              r11, 105
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
n207_call_prolog_β:     mov              r11, 105;                            jmp   append$2F3_ω
                        .size            n207_call_prolog_bx, .-n207_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_β:
                                                                              jmp   n185_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lappend$2F3_α_265_50
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
.Lappend$2F3_α_265_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ω:
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
main_α_body:
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_279_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n267_var_ref_α
.Llit_integer_α_279_0:  .quad            8
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n268_call_proc_staged_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_call_proc_staged_bx, @function
n268_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_proc_staged_α:
                        mov              r11, 108
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 368]
                        call             mklist$2F2_dcα;                      jmp   .Lcall_proc_staged_α_283_2
.Lcall_proc_staged_α_283_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_283_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lcall_proc_staged_α_283_29:
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n276_lit_string_α
                                                                              jmp   n269_var_ref_α
n268_call_proc_staged_β:
                        mov              r11, 108;                            jmp   n276_lit_string_α
.Lcall_proc_staged_β_283_0:
                        .quad            .Lcall_proc_staged_β_283_0_s
.Lcall_proc_staged_β_283_0_s:
                        .string          "mklist/2"
                        .size            n268_call_proc_staged_bx, .-n268_call_proc_staged_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n270_var_ref_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n271_call_proc_staged_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_call_proc_staged_bx, @function
n271_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        mov              r11, 111
                        mov              qword ptr [rsp + 224], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_289_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_289_201
.Lcall_proc_staged_α_289_200:
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
.Lcall_proc_staged_α_289_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_289_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_289_203
.Lcall_proc_staged_α_289_202:
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
.Lcall_proc_staged_α_289_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_289_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_289_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_289_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_289_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 232], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_289_5
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_289_6
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_289_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_call_proc_staged_β
.Lcall_proc_staged_α_289_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_289_29
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
.Lcall_proc_staged_α_289_29:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n268_call_proc_staged_β
                                                                              jmp   n272_var_α
n271_call_proc_staged_β:
                        mov              r11, 111
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
                        test             rax, rax;                            je    n268_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
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
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n268_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_289_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_289_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_289_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n268_call_proc_staged_β
                                                                              jmp   n272_var_α
.Lcall_proc_staged_α_289_0:
                        .quad            .Lcall_proc_staged_α_289_0_s
.Lcall_proc_staged_α_289_0_s:
                        .string          "rev/2"
                        .size            n271_call_proc_staged_bx, .-n271_call_proc_staged_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 168], rax;          jmp   n273_call_prolog_α
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_call_prolog_bx, @function
n273_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn293: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn293]
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
                        cmp              al, 104;                             je    n271_call_proc_staged_β
                                                                              jmp   n274_lit_string_α
n273_call_prolog_β:     mov              r11, 113;                            jmp   n271_call_proc_staged_β
                        .size            n273_call_prolog_bx, .-n273_call_prolog_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_294_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n275_call_prolog_α
.Llit_string_α_294_0:   .quad            .Llit_string_α_294_0_s
.Llit_string_α_294_0_s: .string          ""
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_call_prolog_bx, @function
n275_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_prolog_α:     mov              r11, 115
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn296: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn296]
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
                        cmp              al, 104;                             je    n271_call_proc_staged_β
                                                                              jmp   main_γ
n275_call_prolog_β:     mov              r11, 115;                            jmp   n271_call_proc_staged_β
                        .size            n275_call_prolog_bx, .-n275_call_prolog_bx
                        .type            n276_lit_string_bx, @function
n276_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_297_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n277_lit_string_α
.Llit_string_α_297_0:   .quad            .Llit_string_α_297_0_s
.Llit_string_α_297_0_s: .string          "user_error"
                        .size            n276_lit_string_bx, .-n276_lit_string_bx
                        .type            n277_lit_string_bx, @function
n277_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_298_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n278_call_prolog_α
.Llit_string_α_298_0:   .quad            .Llit_string_α_298_0_s
.Llit_string_α_298_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n277_lit_string_bx, .-n277_lit_string_bx
                        .type            n278_call_prolog_bx, @function
n278_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_prolog_α:     mov              r11, 118
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn300: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn300]
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
                                                                              jmp   main_γ
n278_call_prolog_β:     mov              r11, 118;                            jmp   main_ω
                        .size            n278_call_prolog_bx, .-n278_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
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
.Lstartup_pname0:       .string          "rev/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__rev$2F2
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "mklist/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__mklist$2F2
                        .quad            mklist$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            944
                        .long            16
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
