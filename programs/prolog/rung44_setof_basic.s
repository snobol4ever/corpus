                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__num$2F1:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rsp
                        mov              rdi, rsp
                        mov              esi, 1024
                        mov              edx, 1056
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
num$2F1_α_body:
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rsp + 1024], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx37_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx37_101
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
.Lx37_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx37_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n3_lit_integer_α
.Lx40_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n4_call_builtin_prolog_α
.Lx41_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
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
                        cmp              al, 3;                               jne   .Lx42_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx42_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx42_115
                                                                              jmp   .Lx42_114
.Lx42_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx42_117
.Lx42_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx42_117
.Lx42_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx42_117:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n10_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                              jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n7_call_builtin_prolog_α
.Lx45_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n9_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_suspend_α
n7_call_builtin_prolog_β:
                                                                              jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx48_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024];         jmp   rax
.Lx48_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n8_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n8_suspend_β:                                                                 jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                                                                              jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n12_lit_integer_α
.Lx52_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n13_call_builtin_prolog_α
.Lx53_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
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
.Lx54_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx54_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx54_111
                        cmp              esi, 1;                              jne   .Lx54_112
                        mov              r8, rax;                             jmp   .Lx54_110
.Lx54_112:              cmp              esi, 2;                              jne   .Lx54_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx54_111
                        mov              r8, rax;                             jmp   .Lx54_110
.Lx54_113:              cmp              al, 72;                              jne   .Lx54_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx54_111
                        cmp              rax, r8;                             je    .Lx54_111
                        mov              r8, rax;                             jmp   .Lx54_110
.Lx54_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx54_114
                        cmp              al, 104;                             je    .Lx54_114
                        cmp              al, 72;                              jne   .Lx54_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx54_114
                                                                              jmp   .Lx54_118
.Lx54_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx54_115
                        cmp              al, 3;                               jne   .Lx54_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx54_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx54_115
                                                                              jmp   .Lx54_114
.Lx54_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx54_117
.Lx54_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx54_117
.Lx54_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx54_117:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n19_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                                                                              jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n16_call_builtin_prolog_α
.Lx57_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_suspend_α
n16_call_builtin_prolog_β:
                                                                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx60_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024];         jmp   rax
.Lx60_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n17_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n17_suspend_β:                                                                jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_var_ref_α
n18_call_builtin_prolog_β:
                                                                              jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n21_lit_integer_α
.Lx64_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n22_call_builtin_prolog_α
.Lx65_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx66_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx66_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx66_111
                        cmp              esi, 1;                              jne   .Lx66_112
                        mov              r8, rax;                             jmp   .Lx66_110
.Lx66_112:              cmp              esi, 2;                              jne   .Lx66_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx66_111
                        mov              r8, rax;                             jmp   .Lx66_110
.Lx66_113:              cmp              al, 72;                              jne   .Lx66_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx66_111
                        cmp              rax, r8;                             je    .Lx66_111
                        mov              r8, rax;                             jmp   .Lx66_110
.Lx66_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx66_114
                        cmp              al, 104;                             je    .Lx66_114
                        cmp              al, 72;                              jne   .Lx66_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx66_114
                                                                              jmp   .Lx66_118
.Lx66_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx66_115
                        cmp              al, 3;                               jne   .Lx66_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx66_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx66_115
                                                                              jmp   .Lx66_114
.Lx66_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx66_117
.Lx66_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx66_117
.Lx66_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx66_117:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n28_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_var_ref_α
n22_call_builtin_prolog_β:
                                                                              jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n25_call_builtin_prolog_α
.Lx69_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_suspend_α
n25_call_builtin_prolog_β:
                                                                              jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx72_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024];         jmp   rax
.Lx72_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n26_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n26_suspend_β]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n26_suspend_β:                                                                jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                              jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n30_lit_integer_α
.Lx76_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n31_call_builtin_prolog_α
.Lx77_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
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
                        cmp              al, 3;                               jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx78_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx78_115
                                                                              jmp   .Lx78_114
.Lx78_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx78_117
.Lx78_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx78_117
.Lx78_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx78_117:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n34_call_builtin_prolog_α
.Lx81_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_suspend_α
n34_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx84_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024];         jmp   rax
.Lx84_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n35_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n35_suspend_β:                                                                jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   num$2F1_ω
n36_call_builtin_prolog_β:
                                                                              jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_β:
                                                                              jmp   n8_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx85_50
                        mov              qword ptr [rsp + 1024], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024];         jmp   rax
.Lx85_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        add              rsp, 1088;                           jmp   rcx
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
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rcx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 704
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx108_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx108_101
.Lx108_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx108_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx108_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx108_101
.Lx108_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx108_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_call_builtin_prolog_α
n86_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn110:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 368]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: mov              qword ptr [rsp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx114_20
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx114_21
.Lx114_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx114_21:              lea              rax, [rip + .Lx114_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4];               jmp   rax
.Lx114_3:               mov              qword ptr [rsp + 600], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx114_5
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx114_2
.Lx114_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx114_2
.Lx114_4:               mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx114_6
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx114_2
.Lx114_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx114_2
.Lx114_1:               call             rt_faildescr@PLT
.Lx114_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx114_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
.Lx114_29:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                                                                              jmp   n90_var_α
n89_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 592], 0
                        lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n92_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              ecx, 32
                        mov              r8d, 1024
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n92_call_builtin_prolog_α
                        lea              r11, [rip + .Lx114_7]
                        push             r11
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4];               jmp   rax
.Lx114_7:               add              rsp, 8
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                                                                              jmp   n90_var_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 552], rax;          jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn118:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_call_proc_staged_β
n91_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn120:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_var_ref_α
n92_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx123_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx123_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx123_41
                        cmp              esi, 1;                              jne   .Lx123_55
                        mov              r8, rax;                             jmp   .Lx123_40
.Lx123_55:              cmp              esi, 2;                              jne   .Lx123_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx123_41
                        mov              r8, rax;                             jmp   .Lx123_40
.Lx123_56:              cmp              al, 72;                              jne   .Lx123_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx123_41
                        cmp              rax, r8;                             je    .Lx123_41
                        mov              r8, rax;                             jmp   .Lx123_40
.Lx123_41:              lea              r9, [rsp + 464]
.Lx123_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx123_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx123_43
                        cmp              esi, 1;                              jne   .Lx123_57
                        mov              r9, rax;                             jmp   .Lx123_42
.Lx123_57:              cmp              esi, 2;                              jne   .Lx123_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx123_43
                        mov              r9, rax;                             jmp   .Lx123_42
.Lx123_58:              cmp              al, 72;                              jne   .Lx123_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx123_43
                        cmp              rax, r9;                             je    .Lx123_43
                        mov              r9, rax;                             jmp   .Lx123_42
.Lx123_43:              cmp              r8, r9;                              je    .Lx123_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx123_44
                        cmp              al, 104;                             je    .Lx123_44
                        cmp              al, 72;                              jne   .Lx123_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx123_44
                                                                              jmp   .Lx123_45
.Lx123_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx123_53
                        cmp              al, 104;                             je    .Lx123_53
                        cmp              al, 72;                              jne   .Lx123_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx123_53
                                                                              jmp   .Lx123_46
.Lx123_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx123_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx123_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx123_51
.Lx123_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx123_47
                        cmp              al, 104;                             je    .Lx123_47
                        cmp              al, 72;                              jne   .Lx123_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx123_47
                                                                              jmp   .Lx123_48
.Lx123_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx123_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx123_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx123_51
.Lx123_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx123_49
                        cmp              dl, 80;                              je    .Lx123_53
                                                                              jmp   .Lx123_52
.Lx123_49:              cmp              dl, 80;                              je    .Lx123_52
                        cmp              cl, 5;                               je    .Lx123_53
                        cmp              dl, 5;                               je    .Lx123_53
                        cmp              cl, 3;                               jne   .Lx123_50
                        cmp              dl, 3;                               jne   .Lx123_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx123_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx123_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx123_51
                                                                              jmp   .Lx123_52
.Lx123_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx123_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx123_53
.Lx123_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx123_54
.Lx123_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx123_54
.Lx123_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx123_54:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_var_ref_α
n94_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 2
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n97_call_builtin_prolog_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn128:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n99_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 640]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n100_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn134:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_var_α
n100_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 184], rax;          jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn138:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_lit_string_α
n102_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n104_call_builtin_prolog_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn141:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n107_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_move_label_α
n104_call_builtin_prolog_β:
                                                                              jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_move_label_α:      lea              rax, [rip + n107_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n106_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n106_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
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
n107_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n106_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 712]
                        add              rsp, 736;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 720]
                        add              rsp, 736;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "num/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__num$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1040
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
