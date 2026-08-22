                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 3296
                        mov              qword ptr [rsp + 3272], rcx
                        mov              qword ptr [rsp + 3280], rdx
                        mov              qword ptr [rsp + 3288], rsp
                        mov              rdi, rsp
                        mov              esi, 3168
                        mov              edx, 3264
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F2_α_body:
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rsp + 3168], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx94_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx94_101
.Lx94_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx94_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx94_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx94_101
.Lx94_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx94_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 5
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n3_call_builtin_prolog_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3112], rax
                        lea              rdi, [rsp + 3104]
                        mov              rsi, qword ptr [rip + .Lx98_2];      jmp   .Lx98_3
.Lx98_2:                .quad            .Lx98_2_s
.Lx98_2_s:              .string          "state"
.Lx98_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 3072], 2            # result
                        mov              dword ptr [rsp + 3076], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n6_lit_string_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 2
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n7_var_ref_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2920], rax
                        lea              rdi, [rsp + 2912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_lit_string_α
n9_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 2
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n11_call_builtin_prolog_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_call_builtin_prolog_α
n11_call_builtin_prolog_β:
                                                                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        lea              r8, [rsp + 2800]
.Lx110_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx110_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx110_41
                        cmp              esi, 1;                              jne   .Lx110_55
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_55:              cmp              esi, 2;                              jne   .Lx110_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx110_41
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_56:              cmp              al, 72;                              jne   .Lx110_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx110_41
                        cmp              rax, r8;                             je    .Lx110_41
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_41:              lea              r9, [rsp + 2816]
.Lx110_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx110_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx110_43
                        cmp              esi, 1;                              jne   .Lx110_57
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_57:              cmp              esi, 2;                              jne   .Lx110_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx110_43
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_58:              cmp              al, 72;                              jne   .Lx110_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx110_43
                        cmp              rax, r9;                             je    .Lx110_43
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_43:              cmp              r8, r9;                              je    .Lx110_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx110_44
                        cmp              al, 104;                             je    .Lx110_44
                        cmp              al, 72;                              jne   .Lx110_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx110_44
                                                                              jmp   .Lx110_45
.Lx110_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx110_53
                        cmp              al, 104;                             je    .Lx110_53
                        cmp              al, 72;                              jne   .Lx110_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx110_53
                                                                              jmp   .Lx110_46
.Lx110_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx110_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx110_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx110_51
.Lx110_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx110_47
                        cmp              al, 104;                             je    .Lx110_47
                        cmp              al, 72;                              jne   .Lx110_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx110_47
                                                                              jmp   .Lx110_48
.Lx110_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx110_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx110_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx110_51
.Lx110_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx110_49
                        cmp              dl, 80;                              je    .Lx110_53
                                                                              jmp   .Lx110_52
.Lx110_49:              cmp              dl, 80;                              je    .Lx110_52
                        cmp              cl, 5;                               je    .Lx110_53
                        cmp              dl, 5;                               je    .Lx110_53
                        cmp              cl, 3;                               jne   .Lx110_50
                        cmp              dl, 3;                               jne   .Lx110_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx110_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx110_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx110_51
                                                                              jmp   .Lx110_52
.Lx110_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx110_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx110_53
.Lx110_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx110_54
.Lx110_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx110_54
.Lx110_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx110_54:              mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_lit_integer_α
n12_call_builtin_prolog_β:
                                                                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n14_var_ref_α
.Lx111_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n16_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α: mov              qword ptr [rsp + 2704], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx117_20
                        mov              rax, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx117_21
.Lx117_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx117_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx117_22
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx117_23
.Lx117_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx117_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx117_24
                        mov              rax, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx117_25
.Lx117_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx117_25:              lea              rax, [rip + .Lx117_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx117_1
                        lea              rcx, [rip + .Lx117_3]
                        lea              rdx, [rip + .Lx117_4];               jmp   rax
.Lx117_3:               mov              qword ptr [rsp + 2712], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2704]
                        test             rax, rax;                            jne   .Lx117_5
                        mov              qword ptr [rsp + 2704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx117_2
.Lx117_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx117_2
.Lx117_4:               mov              rax, qword ptr [rsp + 2704]
                        test             rax, rax;                            jne   .Lx117_6
                        mov              qword ptr [rsp + 2704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx117_2
.Lx117_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx117_2
.Lx117_1:               call             rt_faildescr@PLT
.Lx117_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx117_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
.Lx117_29:              mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                                                                              jmp   n17_suspend_α
n16_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2704], 0
                        lea              rdi, [rsp + 2720]
                        lea              rsi, [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n18_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              ecx, 64
                        mov              r8d, 992
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n18_call_builtin_prolog_α
                        lea              r11, [rip + .Lx117_7]
                        push             r11
                        lea              rcx, [rip + .Lx117_3]
                        lea              rdx, [rip + .Lx117_4];               jmp   rax
.Lx117_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                                                                              jmp   n17_suspend_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "tr/3"
#-----------------------------------------------------------------------------------------------------------------------
n17_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx119_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3168];         jmp   rax
.Lx119_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n17_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n17_suspend_β:                                                                jmp   n16_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2632], rax
                        lea              rdi, [rsp + 2624]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_var_ref_α
n18_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 13
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n21_call_builtin_prolog_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        lea              rdi, [rsp + 2544]
                        mov              rsi, qword ptr [rip + .Lx124_2];     jmp   .Lx124_3
.Lx124_2:               .quad            .Lx124_2_s
.Lx124_2_s:             .string          "random_subseq"
.Lx124_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_var_ref_α
n21_call_builtin_prolog_β:
                                                                              jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n24_lit_string_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 6
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n25_lit_string_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n26_lit_string_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 7
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n27_lit_integer_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n28_lit_integer_α
.Lx131_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n29_var_ref_α
.Lx132_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 7
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n32_lit_integer_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n33_var_ref_α
.Lx137_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2168], rax
                        lea              rdi, [rsp + 2160]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2280], rax
                        lea              rdi, [rsp + 2272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_call_builtin_prolog_α
n36_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_lit_string_α
n37_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n39_lit_string_α
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 4
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n40_lit_string_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 6
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n41_var_ref_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3200]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3232]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_lit_string_α
n45_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 2
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n47_call_builtin_prolog_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1864], rax
                        lea              rdi, [rsp + 1856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_call_builtin_prolog_α
n47_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        lea              rdi, [rsp + 2448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                                                                              jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        lea              rdi, [rsp + 1536]
                        lea              r8, [rsp + 1536]
.Lx159_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              esi, 1;                              jne   .Lx159_55
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_55:              cmp              esi, 2;                              jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_56:              cmp              al, 72;                              jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              rax, r8;                             je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_41:              lea              r9, [rsp + 1552]
.Lx159_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              esi, 1;                              jne   .Lx159_57
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_57:              cmp              esi, 2;                              jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_58:              cmp              al, 72;                              jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              rax, r9;                             je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_43:              cmp              r8, r9;                              je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx159_44
                        cmp              al, 104;                             je    .Lx159_44
                        cmp              al, 72;                              jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx159_44
                                                                              jmp   .Lx159_45
.Lx159_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_53
                        cmp              al, 104;                             je    .Lx159_53
                        cmp              al, 72;                              jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_53
                                                                              jmp   .Lx159_46
.Lx159_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx159_51
.Lx159_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_47
                        cmp              al, 104;                             je    .Lx159_47
                        cmp              al, 72;                              jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_47
                                                                              jmp   .Lx159_48
.Lx159_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx159_51
.Lx159_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx159_49
                        cmp              dl, 80;                              je    .Lx159_53
                                                                              jmp   .Lx159_52
.Lx159_49:              cmp              dl, 80;                              je    .Lx159_52
                        cmp              cl, 5;                               je    .Lx159_53
                        cmp              dl, 5;                               je    .Lx159_53
                        cmp              cl, 3;                               jne   .Lx159_50
                        cmp              dl, 3;                               jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx159_51
                                                                              jmp   .Lx159_52
.Lx159_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx159_53
.Lx159_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx159_54
.Lx159_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx159_54
.Lx159_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx159_54:              mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_var_ref_α
n49_call_builtin_prolog_β:
                                                                              jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3200]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3232]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx167_20
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx167_21
.Lx167_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx167_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx167_22
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx167_23
.Lx167_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx167_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx167_24
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx167_25
.Lx167_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx167_25:              mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx167_1
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx167_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx167_3]
                        push             rcx
                        lea              rcx, [rip + .Lx167_3]
                        lea              rdx, [rip + .Lx167_4];               jmp   rax
.Lx167_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx167_2
.Lx167_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx167_2
.Lx167_1:               call             rt_faildescr@PLT
.Lx167_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx167_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
.Lx167_29:              mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                                                                              jmp   n54_suspend_α
n53_call_proc_staged_β:                                                       jmp   n55_call_builtin_prolog_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "random_subseq/3"
#-----------------------------------------------------------------------------------------------------------------------
n54_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx169_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3168];         jmp   rax
.Lx169_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n54_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n54_suspend_β]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n54_suspend_β:                                                                jmp   n53_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_var_ref_α
n55_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 14
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n58_call_builtin_prolog_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              rsi, qword ptr [rip + .Lx174_2];     jmp   .Lx174_3
.Lx174_2:               .quad            .Lx174_2_s
.Lx174_2_s:             .string          "random_numlist"
.Lx174_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_var_ref_α
n58_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n61_lit_string_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n62_lit_string_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 7
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n63_lit_integer_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n64_lit_integer_α
.Lx180_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n65_var_ref_α
.Lx181_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_call_builtin_prolog_α
n66_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n69_lit_string_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 4
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n70_lit_string_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n71_lit_string_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 7
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n72_lit_integer_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n73_var_ref_α
.Lx190_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_lit_string_α
n75_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 6
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n77_var_ref_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3200]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3232]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_call_builtin_prolog_α
n80_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_call_builtin_prolog_α
n81_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_lit_string_α
n82_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 2
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n84_call_builtin_prolog_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_call_builtin_prolog_α
n84_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_call_builtin_prolog_α
n85_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        lea              r8, [rsp + 288]
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
.Lx209_41:              lea              r9, [rsp + 304]
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
.Lx209_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx209_51
.Lx209_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx209_47
                        cmp              al, 104;                             je    .Lx209_47
                        cmp              al, 72;                              jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx209_47
                                                                              jmp   .Lx209_48
.Lx209_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx209_54:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_real_α
n86_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_real_α:         mov              qword ptr [rsp + 208], 5             # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n88_lit_integer_α
.Lx210_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n89_var_ref_α
.Lx211_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3200]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx217_21
.Lx217_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx217_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx217_23
.Lx217_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx217_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx217_25
.Lx217_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx217_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_26
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx217_27
.Lx217_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx217_27:              mov              rdi, qword ptr [rip + .Lx217_0]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx217_1
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx217_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx217_3]
                        push             rcx
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4];               jmp   rax
.Lx217_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx217_2
.Lx217_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx217_2
.Lx217_1:               call             rt_faildescr@PLT
.Lx217_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx217_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx217_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                                                                              jmp   n92_suspend_α
n91_call_proc_staged_β:                                                       jmp   n93_call_builtin_prolog_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "random_numlist/4"
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx219_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3168];         jmp   rax
.Lx219_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n92_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n92_suspend_β:                                                                jmp   n91_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test$2F2_ω
n93_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n17_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx220_50
                        mov              qword ptr [rsp + 3168], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3168];         jmp   rax
.Lx220_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3272]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 3280]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 3888
                        mov              qword ptr [rsp + 3864], rcx
                        mov              qword ptr [rsp + 3872], rdx
                        mov              qword ptr [rsp + 3880], rsp
                        mov              rdi, rsp
                        mov              esi, 3760
                        mov              edx, 3856
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_test$2F4_α_body:
                        lea              rax, [rip + n244_suspend_β]
                        mov              qword ptr [rsp + 3760], rax
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx333_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx333_101
.Lx333_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx333_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx333_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx333_101
.Lx333_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx333_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n222_var_ref_α
n221_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 6
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n224_call_builtin_prolog_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3696]
                        mov              rsi, qword ptr [rip + .Lx337_2];     jmp   .Lx337_3
.Lx337_2:               .quad            .Lx337_2_s
.Lx337_2_s:             .string          "random"
.Lx337_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n225_var_ref_α
n224_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n226_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 5
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n227_call_builtin_prolog_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3624], rax
                        lea              rdi, [rsp + 3616]
                        mov              rsi, qword ptr [rip + .Lx341_2];     jmp   .Lx341_3
.Lx341_2:               .quad            .Lx341_2_s
.Lx341_2_s:             .string          "state"
.Lx341_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_var_ref_α
n227_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              qword ptr [rsp + 3584], 2            # result
                        mov              dword ptr [rsp + 3588], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n230_lit_string_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 2
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n231_var_ref_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n232_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n233_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_lit_string_α
n233_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              qword ptr [rsp + 3360], 2            # result
                        mov              dword ptr [rsp + 3364], 2
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n235_call_builtin_prolog_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3528], rax
                        lea              rdi, [rsp + 3520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_call_builtin_prolog_α
n235_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        lea              rdi, [rsp + 3312]
                        lea              r8, [rsp + 3312]
.Lx353_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx353_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_41
                        cmp              esi, 1;                              jne   .Lx353_55
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_55:              cmp              esi, 2;                              jne   .Lx353_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx353_41
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_56:              cmp              al, 72;                              jne   .Lx353_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_41
                        cmp              rax, r8;                             je    .Lx353_41
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_41:              lea              r9, [rsp + 3328]
.Lx353_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx353_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx353_43
                        cmp              esi, 1;                              jne   .Lx353_57
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_57:              cmp              esi, 2;                              jne   .Lx353_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx353_43
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_58:              cmp              al, 72;                              jne   .Lx353_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx353_43
                        cmp              rax, r9;                             je    .Lx353_43
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_43:              cmp              r8, r9;                              je    .Lx353_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx353_44
                        cmp              al, 104;                             je    .Lx353_44
                        cmp              al, 72;                              jne   .Lx353_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx353_44
                                                                              jmp   .Lx353_45
.Lx353_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx353_53
                        cmp              al, 104;                             je    .Lx353_53
                        cmp              al, 72;                              jne   .Lx353_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx353_53
                                                                              jmp   .Lx353_46
.Lx353_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx353_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx353_51
.Lx353_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx353_47
                        cmp              al, 104;                             je    .Lx353_47
                        cmp              al, 72;                              jne   .Lx353_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx353_47
                                                                              jmp   .Lx353_48
.Lx353_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx353_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx353_51
.Lx353_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx353_49
                        cmp              dl, 80;                              je    .Lx353_53
                                                                              jmp   .Lx353_52
.Lx353_49:              cmp              dl, 80;                              je    .Lx353_52
                        cmp              cl, 5;                               je    .Lx353_53
                        cmp              dl, 5;                               je    .Lx353_53
                        cmp              cl, 3;                               jne   .Lx353_50
                        cmp              dl, 3;                               jne   .Lx353_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx353_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx353_51
                                                                              jmp   .Lx353_52
.Lx353_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx353_53
.Lx353_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx353_54
.Lx353_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx353_54
.Lx353_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx353_54:              mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n237_var_ref_α
n236_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 2
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n239_lit_integer_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "tr"
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n240_var_ref_α
.Lx357_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3224], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3208], rax
                        lea              rdi, [rsp + 3200]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_call_builtin_prolog_α
n242_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        lea              rdi, [rsp + 3088]
                        lea              r8, [rsp + 3088]
.Lx363_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx363_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx363_41
                        cmp              esi, 1;                              jne   .Lx363_55
                        mov              r8, rax;                             jmp   .Lx363_40
.Lx363_55:              cmp              esi, 2;                              jne   .Lx363_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx363_41
                        mov              r8, rax;                             jmp   .Lx363_40
.Lx363_56:              cmp              al, 72;                              jne   .Lx363_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx363_41
                        cmp              rax, r8;                             je    .Lx363_41
                        mov              r8, rax;                             jmp   .Lx363_40
.Lx363_41:              lea              r9, [rsp + 3104]
.Lx363_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx363_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx363_43
                        cmp              esi, 1;                              jne   .Lx363_57
                        mov              r9, rax;                             jmp   .Lx363_42
.Lx363_57:              cmp              esi, 2;                              jne   .Lx363_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx363_43
                        mov              r9, rax;                             jmp   .Lx363_42
.Lx363_58:              cmp              al, 72;                              jne   .Lx363_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx363_43
                        cmp              rax, r9;                             je    .Lx363_43
                        mov              r9, rax;                             jmp   .Lx363_42
.Lx363_43:              cmp              r8, r9;                              je    .Lx363_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx363_44
                        cmp              al, 104;                             je    .Lx363_44
                        cmp              al, 72;                              jne   .Lx363_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx363_44
                                                                              jmp   .Lx363_45
.Lx363_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx363_53
                        cmp              al, 104;                             je    .Lx363_53
                        cmp              al, 72;                              jne   .Lx363_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx363_53
                                                                              jmp   .Lx363_46
.Lx363_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx363_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx363_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx363_51
.Lx363_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx363_47
                        cmp              al, 104;                             je    .Lx363_47
                        cmp              al, 72;                              jne   .Lx363_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx363_47
                                                                              jmp   .Lx363_48
.Lx363_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx363_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx363_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx363_51
.Lx363_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx363_49
                        cmp              dl, 80;                              je    .Lx363_53
                                                                              jmp   .Lx363_52
.Lx363_49:              cmp              dl, 80;                              je    .Lx363_52
                        cmp              cl, 5;                               je    .Lx363_53
                        cmp              dl, 5;                               je    .Lx363_53
                        cmp              cl, 3;                               jne   .Lx363_50
                        cmp              dl, 3;                               jne   .Lx363_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx363_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx363_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx363_51
                                                                              jmp   .Lx363_52
.Lx363_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx363_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx363_53
.Lx363_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx363_54
.Lx363_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx363_54
.Lx363_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx363_54:              mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n245_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_suspend_α
n243_call_builtin_prolog_β:
                                                                              jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n244_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx365_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3760];         jmp   rax
.Lx365_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n244_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n244_suspend_β]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n244_suspend_β:                                                               jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n246_var_ref_α
n245_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 6
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n248_call_builtin_prolog_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        lea              rdi, [rsp + 2960]
                        mov              rsi, qword ptr [rip + .Lx370_2];     jmp   .Lx370_3
.Lx370_2:               .quad            .Lx370_2_s
.Lx370_2_s:             .string          "random"
.Lx370_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 13
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n251_call_builtin_prolog_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        lea              rdi, [rsp + 2880]
                        mov              rsi, qword ptr [rip + .Lx374_2];     jmp   .Lx374_3
.Lx374_2:               .quad            .Lx374_2_s
.Lx374_2_s:             .string          "random_subseq"
.Lx374_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n252_var_ref_α
n251_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n254_lit_string_α
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 6
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n255_lit_string_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n256_lit_string_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 7
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n257_lit_integer_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n258_lit_integer_α
.Lx381_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:     mov              qword ptr [rsp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n259_var_ref_α
.Lx382_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n260_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n261_lit_string_α
n260_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 7
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n262_lit_integer_α
.Lx386_0:               .quad            .Lx386_0_s
.Lx386_0_s:             .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n263_var_ref_α
.Lx387_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n264_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n266_call_builtin_prolog_α
n265_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2616], rax
                        lea              rdi, [rsp + 2608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_call_builtin_prolog_α
n266_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        lea              rdi, [rsp + 2704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_lit_string_α
n267_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n269_lit_string_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 4
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n270_lit_string_α
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 6
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n271_var_ref_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3824]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n274_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n275_call_builtin_prolog_α
n274_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        lea              rdi, [rsp + 2112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n276_lit_string_α
n275_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n277_call_builtin_prolog_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2200], rax
                        lea              rdi, [rsp + 2192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n278_call_builtin_prolog_α
n277_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2792], rax
                        lea              rdi, [rsp + 2784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_call_builtin_prolog_α
n278_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        lea              rdi, [rsp + 1872]
                        lea              r8, [rsp + 1872]
.Lx409_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx409_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              esi, 1;                              jne   .Lx409_55
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_55:              cmp              esi, 2;                              jne   .Lx409_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_56:              cmp              al, 72;                              jne   .Lx409_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              rax, r8;                             je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_41:              lea              r9, [rsp + 1888]
.Lx409_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx409_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              esi, 1;                              jne   .Lx409_57
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_57:              cmp              esi, 2;                              jne   .Lx409_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_58:              cmp              al, 72;                              jne   .Lx409_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              rax, r9;                             je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_43:              cmp              r8, r9;                              je    .Lx409_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx409_44
                        cmp              al, 104;                             je    .Lx409_44
                        cmp              al, 72;                              jne   .Lx409_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx409_44
                                                                              jmp   .Lx409_45
.Lx409_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_53
                        cmp              al, 104;                             je    .Lx409_53
                        cmp              al, 72;                              jne   .Lx409_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_53
                                                                              jmp   .Lx409_46
.Lx409_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx409_51
.Lx409_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_47
                        cmp              al, 104;                             je    .Lx409_47
                        cmp              al, 72;                              jne   .Lx409_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_47
                                                                              jmp   .Lx409_48
.Lx409_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx409_51
.Lx409_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx409_49
                        cmp              dl, 80;                              je    .Lx409_53
                                                                              jmp   .Lx409_52
.Lx409_49:              cmp              dl, 80;                              je    .Lx409_52
                        cmp              cl, 5;                               je    .Lx409_53
                        cmp              dl, 5;                               je    .Lx409_53
                        cmp              cl, 3;                               jne   .Lx409_50
                        cmp              dl, 3;                               jne   .Lx409_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx409_51
                                                                              jmp   .Lx409_52
.Lx409_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx409_53
.Lx409_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx409_54
.Lx409_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx409_54
.Lx409_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx409_54:              mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n280_var_ref_α
n279_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 13
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n282_var_ref_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n283_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n284_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3824]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n285_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_call_builtin_prolog_α
n285_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        lea              r8, [rsp + 1648]
.Lx420_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx420_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx420_41
                        cmp              esi, 1;                              jne   .Lx420_55
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_55:              cmp              esi, 2;                              jne   .Lx420_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx420_41
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_56:              cmp              al, 72;                              jne   .Lx420_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx420_41
                        cmp              rax, r8;                             je    .Lx420_41
                        mov              r8, rax;                             jmp   .Lx420_40
.Lx420_41:              lea              r9, [rsp + 1664]
.Lx420_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx420_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx420_43
                        cmp              esi, 1;                              jne   .Lx420_57
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_57:              cmp              esi, 2;                              jne   .Lx420_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx420_43
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_58:              cmp              al, 72;                              jne   .Lx420_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx420_43
                        cmp              rax, r9;                             je    .Lx420_43
                        mov              r9, rax;                             jmp   .Lx420_42
.Lx420_43:              cmp              r8, r9;                              je    .Lx420_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx420_44
                        cmp              al, 104;                             je    .Lx420_44
                        cmp              al, 72;                              jne   .Lx420_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx420_44
                                                                              jmp   .Lx420_45
.Lx420_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx420_53
                        cmp              al, 104;                             je    .Lx420_53
                        cmp              al, 72;                              jne   .Lx420_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx420_53
                                                                              jmp   .Lx420_46
.Lx420_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx420_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx420_51
.Lx420_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx420_47
                        cmp              al, 104;                             je    .Lx420_47
                        cmp              al, 72;                              jne   .Lx420_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx420_47
                                                                              jmp   .Lx420_48
.Lx420_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx420_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx420_51
.Lx420_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx420_49
                        cmp              dl, 80;                              je    .Lx420_53
                                                                              jmp   .Lx420_52
.Lx420_49:              cmp              dl, 80;                              je    .Lx420_52
                        cmp              cl, 5;                               je    .Lx420_53
                        cmp              dl, 5;                               je    .Lx420_53
                        cmp              cl, 3;                               jne   .Lx420_50
                        cmp              dl, 3;                               jne   .Lx420_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx420_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx420_51
                                                                              jmp   .Lx420_52
.Lx420_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx420_53
.Lx420_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx420_54
.Lx420_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx420_54
.Lx420_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx420_54:              mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_suspend_α
n286_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n287_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx422_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3760];         jmp   rax
.Lx422_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n287_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n287_suspend_β]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n287_suspend_β:                                                               jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n289_var_ref_α
n288_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 6
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n291_call_builtin_prolog_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              rsi, qword ptr [rip + .Lx427_2];     jmp   .Lx427_3
.Lx427_2:               .quad            .Lx427_2_s
.Lx427_2_s:             .string          "random"
.Lx427_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 14
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n294_call_builtin_prolog_α
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              rsi, qword ptr [rip + .Lx431_2];     jmp   .Lx431_3
.Lx431_2:               .quad            .Lx431_2_s
.Lx431_2_s:             .string          "random_numlist"
.Lx431_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n295_var_ref_α
n294_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n297_lit_string_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n298_lit_string_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 7
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n299_lit_integer_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n300_lit_integer_α
.Lx437_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:     mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n301_var_ref_α
.Lx438_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n302_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n303_call_builtin_prolog_α
n302_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n304_lit_string_α
n303_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:      mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n305_lit_string_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 4
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n306_lit_string_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n307_lit_string_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 7
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n308_lit_integer_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n309_var_ref_α
.Lx447_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n311_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n312_lit_string_α
n311_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n313_var_ref_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3824]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_call_builtin_prolog_α
n316_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n318_call_builtin_prolog_α
n317_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n319_lit_string_α
n318_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n320_call_builtin_prolog_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_call_builtin_prolog_α
n320_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n322_call_builtin_prolog_α
n321_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lx466_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx466_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              esi, 1;                              jne   .Lx466_55
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_55:              cmp              esi, 2;                              jne   .Lx466_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_56:              cmp              al, 72;                              jne   .Lx466_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              rax, r8;                             je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_41:              lea              r9, [rsp + 448]
.Lx466_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx466_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              esi, 1;                              jne   .Lx466_57
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_57:              cmp              esi, 2;                              jne   .Lx466_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_58:              cmp              al, 72;                              jne   .Lx466_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              rax, r9;                             je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_43:              cmp              r8, r9;                              je    .Lx466_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx466_44
                        cmp              al, 104;                             je    .Lx466_44
                        cmp              al, 72;                              jne   .Lx466_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx466_44
                                                                              jmp   .Lx466_45
.Lx466_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_53
                        cmp              al, 104;                             je    .Lx466_53
                        cmp              al, 72;                              jne   .Lx466_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_53
                                                                              jmp   .Lx466_46
.Lx466_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx466_51
.Lx466_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_47
                        cmp              al, 104;                             je    .Lx466_47
                        cmp              al, 72;                              jne   .Lx466_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_47
                                                                              jmp   .Lx466_48
.Lx466_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx466_51
.Lx466_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx466_49
                        cmp              dl, 80;                              je    .Lx466_53
                                                                              jmp   .Lx466_52
.Lx466_49:              cmp              dl, 80;                              je    .Lx466_52
                        cmp              cl, 5;                               je    .Lx466_53
                        cmp              dl, 5;                               je    .Lx466_53
                        cmp              cl, 3;                               jne   .Lx466_50
                        cmp              dl, 3;                               jne   .Lx466_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx466_51
                                                                              jmp   .Lx466_52
.Lx466_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx466_53
.Lx466_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx466_54
.Lx466_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx466_54
.Lx466_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx466_54:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n323_var_ref_α
n322_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 14
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n325_lit_real_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_real_α:        mov              qword ptr [rsp + 224], 5             # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n326_lit_integer_α
.Lx470_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n327_var_ref_α
.Lx471_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_call_builtin_prolog_α
n329_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx477_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx477_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx477_41
                        cmp              esi, 1;                              jne   .Lx477_55
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_55:              cmp              esi, 2;                              jne   .Lx477_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx477_41
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_56:              cmp              al, 72;                              jne   .Lx477_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx477_41
                        cmp              rax, r8;                             je    .Lx477_41
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_41:              lea              r9, [rsp + 192]
.Lx477_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx477_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx477_43
                        cmp              esi, 1;                              jne   .Lx477_57
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_57:              cmp              esi, 2;                              jne   .Lx477_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx477_43
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_58:              cmp              al, 72;                              jne   .Lx477_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx477_43
                        cmp              rax, r9;                             je    .Lx477_43
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_43:              cmp              r8, r9;                              je    .Lx477_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx477_44
                        cmp              al, 104;                             je    .Lx477_44
                        cmp              al, 72;                              jne   .Lx477_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx477_44
                                                                              jmp   .Lx477_45
.Lx477_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx477_53
                        cmp              al, 104;                             je    .Lx477_53
                        cmp              al, 72;                              jne   .Lx477_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx477_53
                                                                              jmp   .Lx477_46
.Lx477_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx477_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx477_51
.Lx477_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx477_47
                        cmp              al, 104;                             je    .Lx477_47
                        cmp              al, 72;                              jne   .Lx477_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx477_47
                                                                              jmp   .Lx477_48
.Lx477_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx477_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx477_51
.Lx477_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx477_49
                        cmp              dl, 80;                              je    .Lx477_53
                                                                              jmp   .Lx477_52
.Lx477_49:              cmp              dl, 80;                              je    .Lx477_52
                        cmp              cl, 5;                               je    .Lx477_53
                        cmp              dl, 5;                               je    .Lx477_53
                        cmp              cl, 3;                               jne   .Lx477_50
                        cmp              dl, 3;                               jne   .Lx477_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx477_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx477_51
                                                                              jmp   .Lx477_52
.Lx477_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx477_53
.Lx477_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx477_54
.Lx477_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx477_54
.Lx477_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx477_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n331_suspend_α
n330_call_builtin_prolog_β:
                                                                              jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx479_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3760];         jmp   rax
.Lx479_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n331_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n331_suspend_β]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n331_suspend_β:                                                               jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_test$2F4_ω
n332_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n244_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx480_50
                        mov              qword ptr [rsp + 3760], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3760];         jmp   rax
.Lx480_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3864]
                        add              rsp, 3888;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 3872]
                        add              rsp, 3888;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__tr$2F3:
                        sub              rsp, 1120
                        mov              qword ptr [rsp + 1096], rcx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              qword ptr [rsp + 1112], rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
tr$2F3_α_body:
                        lea              rax, [rip + n509_suspend_β]
                        mov              qword ptr [rsp + 992], rax
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx511_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx511_101
.Lx511_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx511_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx511_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx511_101
.Lx511_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx511_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    tr$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n482_var_ref_α
n481_call_builtin_prolog_β:
                                                                              jmp   tr$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n483_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n484_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lx516_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx516_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx516_41
                        cmp              esi, 1;                              jne   .Lx516_55
                        mov              r8, rax;                             jmp   .Lx516_40
.Lx516_55:              cmp              esi, 2;                              jne   .Lx516_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx516_41
                        mov              r8, rax;                             jmp   .Lx516_40
.Lx516_56:              cmp              al, 72;                              jne   .Lx516_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx516_41
                        cmp              rax, r8;                             je    .Lx516_41
                        mov              r8, rax;                             jmp   .Lx516_40
.Lx516_41:              lea              r9, [rsp + 944]
.Lx516_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx516_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx516_43
                        cmp              esi, 1;                              jne   .Lx516_57
                        mov              r9, rax;                             jmp   .Lx516_42
.Lx516_57:              cmp              esi, 2;                              jne   .Lx516_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx516_43
                        mov              r9, rax;                             jmp   .Lx516_42
.Lx516_58:              cmp              al, 72;                              jne   .Lx516_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx516_43
                        cmp              rax, r9;                             je    .Lx516_43
                        mov              r9, rax;                             jmp   .Lx516_42
.Lx516_43:              cmp              r8, r9;                              je    .Lx516_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx516_44
                        cmp              al, 104;                             je    .Lx516_44
                        cmp              al, 72;                              jne   .Lx516_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx516_44
                                                                              jmp   .Lx516_45
.Lx516_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx516_53
                        cmp              al, 104;                             je    .Lx516_53
                        cmp              al, 72;                              jne   .Lx516_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx516_53
                                                                              jmp   .Lx516_46
.Lx516_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx516_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx516_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx516_51
.Lx516_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx516_47
                        cmp              al, 104;                             je    .Lx516_47
                        cmp              al, 72;                              jne   .Lx516_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx516_47
                                                                              jmp   .Lx516_48
.Lx516_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx516_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx516_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx516_51
.Lx516_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx516_49
                        cmp              dl, 80;                              je    .Lx516_53
                                                                              jmp   .Lx516_52
.Lx516_49:              cmp              dl, 80;                              je    .Lx516_52
                        cmp              cl, 5;                               je    .Lx516_53
                        cmp              dl, 5;                               je    .Lx516_53
                        cmp              cl, 3;                               jne   .Lx516_50
                        cmp              dl, 3;                               jne   .Lx516_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx516_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx516_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx516_51
                                                                              jmp   .Lx516_52
.Lx516_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx516_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx516_53
.Lx516_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx516_54
.Lx516_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx516_54
.Lx516_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx516_54:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n485_var_ref_α
n484_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
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
.Lx521_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx521_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx521_41
                        cmp              esi, 1;                              jne   .Lx521_55
                        mov              r8, rax;                             jmp   .Lx521_40
.Lx521_55:              cmp              esi, 2;                              jne   .Lx521_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx521_41
                        mov              r8, rax;                             jmp   .Lx521_40
.Lx521_56:              cmp              al, 72;                              jne   .Lx521_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx521_41
                        cmp              rax, r8;                             je    .Lx521_41
                        mov              r8, rax;                             jmp   .Lx521_40
.Lx521_41:              lea              r9, [rsp + 864]
.Lx521_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx521_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx521_43
                        cmp              esi, 1;                              jne   .Lx521_57
                        mov              r9, rax;                             jmp   .Lx521_42
.Lx521_57:              cmp              esi, 2;                              jne   .Lx521_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx521_43
                        mov              r9, rax;                             jmp   .Lx521_42
.Lx521_58:              cmp              al, 72;                              jne   .Lx521_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx521_43
                        cmp              rax, r9;                             je    .Lx521_43
                        mov              r9, rax;                             jmp   .Lx521_42
.Lx521_43:              cmp              r8, r9;                              je    .Lx521_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx521_44
                        cmp              al, 104;                             je    .Lx521_44
                        cmp              al, 72;                              jne   .Lx521_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx521_44
                                                                              jmp   .Lx521_45
.Lx521_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx521_53
                        cmp              al, 104;                             je    .Lx521_53
                        cmp              al, 72;                              jne   .Lx521_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx521_53
                                                                              jmp   .Lx521_46
.Lx521_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx521_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx521_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx521_51
.Lx521_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx521_47
                        cmp              al, 104;                             je    .Lx521_47
                        cmp              al, 72;                              jne   .Lx521_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx521_47
                                                                              jmp   .Lx521_48
.Lx521_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx521_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx521_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx521_51
.Lx521_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx521_49
                        cmp              dl, 80;                              je    .Lx521_53
                                                                              jmp   .Lx521_52
.Lx521_49:              cmp              dl, 80;                              je    .Lx521_52
                        cmp              cl, 5;                               je    .Lx521_53
                        cmp              dl, 5;                               je    .Lx521_53
                        cmp              cl, 3;                               jne   .Lx521_50
                        cmp              dl, 3;                               jne   .Lx521_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx521_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx521_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx521_51
                                                                              jmp   .Lx521_52
.Lx521_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx521_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx521_53
.Lx521_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx521_54
.Lx521_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx521_54
.Lx521_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx521_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n488_var_ref_α
n487_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n490_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
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
.Lx526_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx526_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx526_41
                        cmp              esi, 1;                              jne   .Lx526_55
                        mov              r8, rax;                             jmp   .Lx526_40
.Lx526_55:              cmp              esi, 2;                              jne   .Lx526_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx526_41
                        mov              r8, rax;                             jmp   .Lx526_40
.Lx526_56:              cmp              al, 72;                              jne   .Lx526_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx526_41
                        cmp              rax, r8;                             je    .Lx526_41
                        mov              r8, rax;                             jmp   .Lx526_40
.Lx526_41:              lea              r9, [rsp + 784]
.Lx526_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx526_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx526_43
                        cmp              esi, 1;                              jne   .Lx526_57
                        mov              r9, rax;                             jmp   .Lx526_42
.Lx526_57:              cmp              esi, 2;                              jne   .Lx526_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx526_43
                        mov              r9, rax;                             jmp   .Lx526_42
.Lx526_58:              cmp              al, 72;                              jne   .Lx526_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx526_43
                        cmp              rax, r9;                             je    .Lx526_43
                        mov              r9, rax;                             jmp   .Lx526_42
.Lx526_43:              cmp              r8, r9;                              je    .Lx526_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx526_44
                        cmp              al, 104;                             je    .Lx526_44
                        cmp              al, 72;                              jne   .Lx526_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx526_44
                                                                              jmp   .Lx526_45
.Lx526_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx526_53
                        cmp              al, 104;                             je    .Lx526_53
                        cmp              al, 72;                              jne   .Lx526_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx526_53
                                                                              jmp   .Lx526_46
.Lx526_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx526_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx526_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx526_51
.Lx526_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx526_47
                        cmp              al, 104;                             je    .Lx526_47
                        cmp              al, 72;                              jne   .Lx526_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx526_47
                                                                              jmp   .Lx526_48
.Lx526_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx526_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx526_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx526_51
.Lx526_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx526_49
                        cmp              dl, 80;                              je    .Lx526_53
                                                                              jmp   .Lx526_52
.Lx526_49:              cmp              dl, 80;                              je    .Lx526_52
                        cmp              cl, 5;                               je    .Lx526_53
                        cmp              dl, 5;                               je    .Lx526_53
                        cmp              cl, 3;                               jne   .Lx526_50
                        cmp              dl, 3;                               jne   .Lx526_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx526_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx526_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx526_51
                                                                              jmp   .Lx526_52
.Lx526_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx526_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx526_53
.Lx526_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx526_54
.Lx526_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx526_54
.Lx526_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx526_54:              mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n491_lit_string_α
n490_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 4
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n492_lit_string_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "seed"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 6
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n493_call_builtin_prolog_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n494_call_proc_staged_α
n493_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n494_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx531_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx531_21
.Lx531_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx531_21:              mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx531_1
                        mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx531_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx531_3]
                        push             rcx
                        lea              rcx, [rip + .Lx531_3]
                        lea              rdx, [rip + .Lx531_4];               jmp   rax
.Lx531_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx531_2
.Lx531_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx531_2
.Lx531_1:               call             rt_faildescr@PLT
.Lx531_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx531_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
.Lx531_29:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                                                                              jmp   n495_lit_string_α
n494_call_proc_staged_β:
                                                                              jmp   n510_call_builtin_prolog_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "set_random/1"
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 5
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n496_var_ref_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1040]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n497_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n498_call_proc_staged_α
n497_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx537_20
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx537_21
.Lx537_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx537_21:              mov              rdi, qword ptr [rip + .Lx537_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx537_1
                        mov              rdi, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx537_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx537_3]
                        push             rcx
                        lea              rcx, [rip + .Lx537_3]
                        lea              rdx, [rip + .Lx537_4];               jmp   rax
.Lx537_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx537_2
.Lx537_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx537_2
.Lx537_1:               call             rt_faildescr@PLT
.Lx537_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx537_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lx537_29:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n494_call_proc_staged_β
                                                                              jmp   n499_var_ref_α
n498_call_proc_staged_β:
                                                                              jmp   n494_call_proc_staged_β
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "random_property/1"
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n500_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n501_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_proc_staged_α:
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 448]
                        call             random_seq$2F2_dcα;                  jmp   .Lx543_2
.Lx543_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx543_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lx543_29:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n498_call_proc_staged_β
                                                                              jmp   n502_lit_string_α
n501_call_proc_staged_β:
                                                                              jmp   n498_call_proc_staged_β
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 5
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n503_var_ref_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1040]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n510_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n505_call_proc_staged_α
n504_call_builtin_prolog_β:
                                                                              jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx549_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx549_21
.Lx549_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx549_21:              mov              rdi, qword ptr [rip + .Lx549_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx549_1
                        mov              rdi, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx549_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx549_3]
                        push             rcx
                        lea              rcx, [rip + .Lx549_3]
                        lea              rdx, [rip + .Lx549_4];               jmp   rax
.Lx549_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx549_2
.Lx549_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx549_2
.Lx549_1:               call             rt_faildescr@PLT
.Lx549_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx549_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx549_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n501_call_proc_staged_β
                                                                              jmp   n506_var_ref_α
n505_call_proc_staged_β:
                                                                              jmp   n501_call_proc_staged_β
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "set_random/1"
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n507_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n508_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n508_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             random_seq$2F2_dcα;                  jmp   .Lx555_2
.Lx555_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx555_29
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
.Lx555_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n505_call_proc_staged_β
                                                                              jmp   n509_suspend_α
n508_call_proc_staged_β:
                                                                              jmp   n505_call_proc_staged_β
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n509_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx557_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 992];          jmp   rax
.Lx557_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n509_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n509_suspend_β]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   tr$2F3_γ
n509_suspend_β:                                                               jmp   n508_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    tr$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   tr$2F3_ω
n510_call_builtin_prolog_β:
                                                                              jmp   tr$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
tr$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tr$2F3_β:
                                                                              jmp   n509_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
tr$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx558_50
                        mov              qword ptr [rsp + 992], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 992];          jmp   rax
.Lx558_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1096]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tr$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1104]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_random$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test_random$2F0_α_body:
                        lea              rax, [rip + n565_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n559_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx567_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx567_101
.Lx567_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx567_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx567_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx567_101
.Lx567_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx567_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_random$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n560_lit_string_α
n559_call_builtin_prolog_β:
                                                                              jmp   test_random$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n561_lit_string_α
.Lx568_0:               .quad            .Lx568_0_s
.Lx568_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 6
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n562_lit_string_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n563_call_builtin_prolog_α
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n563_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n566_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n564_call_proc_staged_α
n563_call_builtin_prolog_β:
                                                                              jmp   n566_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n564_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx573_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx573_21
.Lx573_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx573_21:              mov              rdi, qword ptr [rip + .Lx573_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx573_1
                        mov              rdi, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx573_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx573_3]
                        push             rcx
                        lea              rcx, [rip + .Lx573_3]
                        lea              rdx, [rip + .Lx573_4];               jmp   rax
.Lx573_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx573_2
.Lx573_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx573_2
.Lx573_1:               call             rt_faildescr@PLT
.Lx573_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx573_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx573_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n566_call_builtin_prolog_α
                                                                              jmp   n565_suspend_α
n564_call_proc_staged_β:
                                                                              jmp   n566_call_builtin_prolog_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n565_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx575_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx575_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n565_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n565_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_random$2F0_γ
n565_suspend_β:                                                               jmp   n564_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_random$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_random$2F0_ω
n566_call_builtin_prolog_β:
                                                                              jmp   test_random$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_random$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_random$2F0_β:
                                                                              jmp   n565_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_random$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx576_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx576_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_random$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_6$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n580_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n577_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx582_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx582_101
.Lx582_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx582_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx582_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx582_101
.Lx582_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx582_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n578_lit_string_α
n577_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n579_call_proc_staged_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n579_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx585_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx585_21
.Lx585_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx585_21:              mov              rdi, qword ptr [rip + .Lx585_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx585_1
                        mov              rdi, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx585_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx585_3]
                        push             rcx
                        lea              rcx, [rip + .Lx585_3]
                        lea              rdx, [rip + .Lx585_4];               jmp   rax
.Lx585_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx585_2
.Lx585_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx585_2
.Lx585_1:               call             rt_faildescr@PLT
.Lx585_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx585_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx585_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n581_call_builtin_prolog_α
                                                                              jmp   n580_suspend_α
n579_call_proc_staged_β:
                                                                              jmp   n581_call_builtin_prolog_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n580_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx587_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx587_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n580_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n580_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_6$2F0_γ
n580_suspend_β:                                                               jmp   n579_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_6$2F0_ω
n581_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_β:
                                                                              jmp   n580_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx588_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx588_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_4$2F0:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n607_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n589_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx609_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx609_101
.Lx609_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx609_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx609_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx609_101
.Lx609_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx609_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n590_lit_string_α
n589_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 7
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n591_lit_string_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 6
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n592_call_builtin_prolog_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n592_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n608_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n593_lit_string_α
n592_call_builtin_prolog_β:
                                                                              jmp   n608_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n594_lit_string_α
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n595_lit_string_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 13
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n596_lit_integer_α
.Lx615_0:               .quad            .Lx615_0_s
.Lx615_0_s:             .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n597_call_builtin_prolog_α
.Lx616_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n598_lit_string_α
n597_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n599_lit_string_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n600_lit_string_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 14
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n601_lit_integer_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n602_call_builtin_prolog_α
.Lx621_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n602_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n603_lit_string_α
n602_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n604_call_builtin_prolog_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n605_call_builtin_prolog_α
n604_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n608_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n606_call_proc_staged_α
n605_call_builtin_prolog_β:
                                                                              jmp   n608_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n606_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx627_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx627_21
.Lx627_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx627_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx627_22
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx627_23
.Lx627_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx627_23:              mov              rdi, qword ptr [rip + .Lx627_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx627_1
                        mov              rdi, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx627_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx627_3]
                        push             rcx
                        lea              rcx, [rip + .Lx627_3]
                        lea              rdx, [rip + .Lx627_4];               jmp   rax
.Lx627_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx627_2
.Lx627_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx627_2
.Lx627_1:               call             rt_faildescr@PLT
.Lx627_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx627_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx627_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n608_call_builtin_prolog_α
                                                                              jmp   n607_suspend_α
n606_call_proc_staged_β:
                                                                              jmp   n608_call_builtin_prolog_α
.Lx627_0:               .quad            .Lx627_0_s
.Lx627_0_s:             .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n607_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx629_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx629_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n607_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n607_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n607_suspend_β:                                                               jmp   n606_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n608_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_4$2F0_ω
n608_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n607_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx630_50
                        mov              qword ptr [rsp + 704], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx630_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rsp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n631_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx645_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx645_101
.Lx645_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx645_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx645_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx645_101
.Lx645_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx645_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n632_lit_string_α
n631_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 7
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n633_lit_string_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 5
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n634_call_builtin_prolog_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "lists"
#-----------------------------------------------------------------------------------------------------------------------
n634_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n644_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n635_lit_string_α
n634_call_builtin_prolog_β:
                                                                              jmp   n644_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n636_lit_string_α
.Lx649_0:               .quad            .Lx649_0_s
.Lx649_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n637_lit_string_α
.Lx650_0:               .quad            .Lx650_0_s
.Lx650_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 7
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n638_lit_integer_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n639_call_builtin_prolog_α
.Lx652_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n640_lit_string_α
n639_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n640_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n641_call_builtin_prolog_α
.Lx654_0:               .quad            .Lx654_0_s
.Lx654_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n644_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n642_call_proc_staged_α
n641_call_builtin_prolog_β:
                                                                              jmp   n644_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n642_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx657_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx657_21
.Lx657_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx657_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx657_22
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx657_23
.Lx657_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx657_23:              mov              rdi, qword ptr [rip + .Lx657_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx657_1
                        mov              rdi, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx657_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx657_3]
                        push             rcx
                        lea              rcx, [rip + .Lx657_3]
                        lea              rdx, [rip + .Lx657_4];               jmp   rax
.Lx657_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx657_2
.Lx657_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx657_2
.Lx657_1:               call             rt_faildescr@PLT
.Lx657_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx657_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx657_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n644_call_builtin_prolog_α
                                                                              jmp   n643_suspend_α
n642_call_proc_staged_β:
                                                                              jmp   n644_call_builtin_prolog_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n643_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx659_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx659_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n643_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n643_suspend_β:                                                               jmp   n642_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_2$2F0_ω
n644_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n643_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx660_50
                        mov              qword ptr [rsp + 480], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx660_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n671_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n661_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx673_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx673_101
.Lx673_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx673_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx673_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx673_101
.Lx673_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx673_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n662_lit_string_α
n661_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 11
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n663_lit_string_α
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          "test_random"
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n664_lit_string_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n665_lit_string_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n666_lit_integer_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "test_random"
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n667_call_builtin_prolog_α
.Lx678_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n667_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n668_lit_string_α
n667_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n669_call_builtin_prolog_α
.Lx680_0:               .quad            .Lx680_0_s
.Lx680_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n669_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n672_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n670_call_proc_staged_α
n669_call_builtin_prolog_β:
                                                                              jmp   n672_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx683_21
.Lx683_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx683_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx683_23
.Lx683_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx683_23:              mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx683_1
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx683_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx683_3]
                        push             rcx
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4];               jmp   rax
.Lx683_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx683_2
.Lx683_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx683_2
.Lx683_1:               call             rt_faildescr@PLT
.Lx683_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx683_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx683_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n672_call_builtin_prolog_α
                                                                              jmp   n671_suspend_α
n670_call_proc_staged_β:
                                                                              jmp   n672_call_builtin_prolog_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n671_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx685_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx685_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n671_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n671_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n671_suspend_β:                                                               jmp   n670_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n672_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_0$2F0_ω
n672_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n671_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx686_50
                        mov              qword ptr [rsp + 400], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx686_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$numlist_$2F3:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1232
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$numlist_$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx728_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx728_101
.Lx728_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx728_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx728_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx728_101
.Lx728_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx728_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $numlist_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n688_var_ref_α
n687_call_builtin_prolog_β:
                                                                              jmp   $numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n689_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n690_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n690_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        lea              r8, [rsp + 1088]
.Lx733_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx733_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx733_41
                        cmp              esi, 1;                              jne   .Lx733_55
                        mov              r8, rax;                             jmp   .Lx733_40
.Lx733_55:              cmp              esi, 2;                              jne   .Lx733_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx733_41
                        mov              r8, rax;                             jmp   .Lx733_40
.Lx733_56:              cmp              al, 72;                              jne   .Lx733_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx733_41
                        cmp              rax, r8;                             je    .Lx733_41
                        mov              r8, rax;                             jmp   .Lx733_40
.Lx733_41:              lea              r9, [rsp + 1104]
.Lx733_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx733_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx733_43
                        cmp              esi, 1;                              jne   .Lx733_57
                        mov              r9, rax;                             jmp   .Lx733_42
.Lx733_57:              cmp              esi, 2;                              jne   .Lx733_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx733_43
                        mov              r9, rax;                             jmp   .Lx733_42
.Lx733_58:              cmp              al, 72;                              jne   .Lx733_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx733_43
                        cmp              rax, r9;                             je    .Lx733_43
                        mov              r9, rax;                             jmp   .Lx733_42
.Lx733_43:              cmp              r8, r9;                              je    .Lx733_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx733_44
                        cmp              al, 104;                             je    .Lx733_44
                        cmp              al, 72;                              jne   .Lx733_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx733_44
                                                                              jmp   .Lx733_45
.Lx733_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx733_53
                        cmp              al, 104;                             je    .Lx733_53
                        cmp              al, 72;                              jne   .Lx733_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx733_53
                                                                              jmp   .Lx733_46
.Lx733_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx733_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx733_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx733_51
.Lx733_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx733_47
                        cmp              al, 104;                             je    .Lx733_47
                        cmp              al, 72;                              jne   .Lx733_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx733_47
                                                                              jmp   .Lx733_48
.Lx733_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx733_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx733_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx733_51
.Lx733_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx733_49
                        cmp              dl, 80;                              je    .Lx733_53
                                                                              jmp   .Lx733_52
.Lx733_49:              cmp              dl, 80;                              je    .Lx733_52
                        cmp              cl, 5;                               je    .Lx733_53
                        cmp              dl, 5;                               je    .Lx733_53
                        cmp              cl, 3;                               jne   .Lx733_50
                        cmp              dl, 3;                               jne   .Lx733_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx733_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx733_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx733_51
                                                                              jmp   .Lx733_52
.Lx733_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx733_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx733_53
.Lx733_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx733_54
.Lx733_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx733_54
.Lx733_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx733_54:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n702_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n691_var_ref_α
n690_call_builtin_prolog_β:
                                                                              jmp   n702_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n692_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n692_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n693_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n693_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        lea              r8, [rsp + 1008]
.Lx738_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx738_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx738_41
                        cmp              esi, 1;                              jne   .Lx738_55
                        mov              r8, rax;                             jmp   .Lx738_40
.Lx738_55:              cmp              esi, 2;                              jne   .Lx738_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx738_41
                        mov              r8, rax;                             jmp   .Lx738_40
.Lx738_56:              cmp              al, 72;                              jne   .Lx738_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx738_41
                        cmp              rax, r8;                             je    .Lx738_41
                        mov              r8, rax;                             jmp   .Lx738_40
.Lx738_41:              lea              r9, [rsp + 1024]
.Lx738_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx738_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx738_43
                        cmp              esi, 1;                              jne   .Lx738_57
                        mov              r9, rax;                             jmp   .Lx738_42
.Lx738_57:              cmp              esi, 2;                              jne   .Lx738_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx738_43
                        mov              r9, rax;                             jmp   .Lx738_42
.Lx738_58:              cmp              al, 72;                              jne   .Lx738_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx738_43
                        cmp              rax, r9;                             je    .Lx738_43
                        mov              r9, rax;                             jmp   .Lx738_42
.Lx738_43:              cmp              r8, r9;                              je    .Lx738_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx738_44
                        cmp              al, 104;                             je    .Lx738_44
                        cmp              al, 72;                              jne   .Lx738_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx738_44
                                                                              jmp   .Lx738_45
.Lx738_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx738_53
                        cmp              al, 104;                             je    .Lx738_53
                        cmp              al, 72;                              jne   .Lx738_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx738_53
                                                                              jmp   .Lx738_46
.Lx738_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx738_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx738_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx738_51
.Lx738_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx738_47
                        cmp              al, 104;                             je    .Lx738_47
                        cmp              al, 72;                              jne   .Lx738_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx738_47
                                                                              jmp   .Lx738_48
.Lx738_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx738_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx738_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx738_51
.Lx738_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx738_49
                        cmp              dl, 80;                              je    .Lx738_53
                                                                              jmp   .Lx738_52
.Lx738_49:              cmp              dl, 80;                              je    .Lx738_52
                        cmp              cl, 5;                               je    .Lx738_53
                        cmp              dl, 5;                               je    .Lx738_53
                        cmp              cl, 3;                               jne   .Lx738_50
                        cmp              dl, 3;                               jne   .Lx738_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx738_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx738_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx738_51
                                                                              jmp   .Lx738_52
.Lx738_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx738_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx738_53
.Lx738_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx738_54
.Lx738_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx738_54
.Lx738_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx738_54:              mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n702_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n694_var_ref_α
n693_call_builtin_prolog_β:
                                                                              jmp   n702_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n695_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n695_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n696_call_builtin_prolog_α
.Lx741_0:               .quad            .Lx741_0_s
.Lx741_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n696_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              rsi, qword ptr [rip + .Lx742_2];     jmp   .Lx742_3
.Lx742_2:               .quad            .Lx742_2_s
.Lx742_2_s:             .string          "[]"
.Lx742_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n702_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n697_var_α
n696_call_builtin_prolog_β:
                                                                              jmp   n702_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n697_var_α:             mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 888], rax;          jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 904], rax;          jmp   n699_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n699_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n702_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n700_cut_α
n699_call_builtin_prolog_β:
                                                                              jmp   n702_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n700_cut_α:                                                                   jmp   n701_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n701_move_label_α:      lea              rax, [rip + n702_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   $numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n702_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    $numlist_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n703_var_ref_α
n702_call_builtin_prolog_β:
                                                                              jmp   $numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n703_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n704_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n705_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n705_call_builtin_prolog_α:
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
.Lx756_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx756_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx756_41
                        cmp              esi, 1;                              jne   .Lx756_55
                        mov              r8, rax;                             jmp   .Lx756_40
.Lx756_55:              cmp              esi, 2;                              jne   .Lx756_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx756_41
                        mov              r8, rax;                             jmp   .Lx756_40
.Lx756_56:              cmp              al, 72;                              jne   .Lx756_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx756_41
                        cmp              rax, r8;                             je    .Lx756_41
                        mov              r8, rax;                             jmp   .Lx756_40
.Lx756_41:              lea              r9, [rsp + 752]
.Lx756_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx756_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx756_43
                        cmp              esi, 1;                              jne   .Lx756_57
                        mov              r9, rax;                             jmp   .Lx756_42
.Lx756_57:              cmp              esi, 2;                              jne   .Lx756_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx756_43
                        mov              r9, rax;                             jmp   .Lx756_42
.Lx756_58:              cmp              al, 72;                              jne   .Lx756_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx756_43
                        cmp              rax, r9;                             je    .Lx756_43
                        mov              r9, rax;                             jmp   .Lx756_42
.Lx756_43:              cmp              r8, r9;                              je    .Lx756_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx756_44
                        cmp              al, 104;                             je    .Lx756_44
                        cmp              al, 72;                              jne   .Lx756_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx756_44
                                                                              jmp   .Lx756_45
.Lx756_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx756_53
                        cmp              al, 104;                             je    .Lx756_53
                        cmp              al, 72;                              jne   .Lx756_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx756_53
                                                                              jmp   .Lx756_46
.Lx756_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx756_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx756_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx756_51
.Lx756_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx756_47
                        cmp              al, 104;                             je    .Lx756_47
                        cmp              al, 72;                              jne   .Lx756_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx756_47
                                                                              jmp   .Lx756_48
.Lx756_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx756_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx756_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx756_51
.Lx756_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx756_49
                        cmp              dl, 80;                              je    .Lx756_53
                                                                              jmp   .Lx756_52
.Lx756_49:              cmp              dl, 80;                              je    .Lx756_52
                        cmp              cl, 5;                               je    .Lx756_53
                        cmp              dl, 5;                               je    .Lx756_53
                        cmp              cl, 3;                               jne   .Lx756_50
                        cmp              dl, 3;                               jne   .Lx756_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx756_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx756_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx756_51
                                                                              jmp   .Lx756_52
.Lx756_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx756_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx756_53
.Lx756_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx756_54
.Lx756_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx756_54
.Lx756_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx756_54:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n706_var_ref_α
n705_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n707_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n707_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n708_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n708_call_builtin_prolog_α:
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
.Lx761_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx761_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx761_41
                        cmp              esi, 1;                              jne   .Lx761_55
                        mov              r8, rax;                             jmp   .Lx761_40
.Lx761_55:              cmp              esi, 2;                              jne   .Lx761_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx761_41
                        mov              r8, rax;                             jmp   .Lx761_40
.Lx761_56:              cmp              al, 72;                              jne   .Lx761_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx761_41
                        cmp              rax, r8;                             je    .Lx761_41
                        mov              r8, rax;                             jmp   .Lx761_40
.Lx761_41:              lea              r9, [rsp + 672]
.Lx761_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx761_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx761_43
                        cmp              esi, 1;                              jne   .Lx761_57
                        mov              r9, rax;                             jmp   .Lx761_42
.Lx761_57:              cmp              esi, 2;                              jne   .Lx761_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx761_43
                        mov              r9, rax;                             jmp   .Lx761_42
.Lx761_58:              cmp              al, 72;                              jne   .Lx761_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx761_43
                        cmp              rax, r9;                             je    .Lx761_43
                        mov              r9, rax;                             jmp   .Lx761_42
.Lx761_43:              cmp              r8, r9;                              je    .Lx761_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx761_44
                        cmp              al, 104;                             je    .Lx761_44
                        cmp              al, 72;                              jne   .Lx761_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx761_44
                                                                              jmp   .Lx761_45
.Lx761_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx761_53
                        cmp              al, 104;                             je    .Lx761_53
                        cmp              al, 72;                              jne   .Lx761_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx761_53
                                                                              jmp   .Lx761_46
.Lx761_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx761_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx761_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx761_51
.Lx761_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx761_47
                        cmp              al, 104;                             je    .Lx761_47
                        cmp              al, 72;                              jne   .Lx761_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx761_47
                                                                              jmp   .Lx761_48
.Lx761_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx761_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx761_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx761_51
.Lx761_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx761_49
                        cmp              dl, 80;                              je    .Lx761_53
                                                                              jmp   .Lx761_52
.Lx761_49:              cmp              dl, 80;                              je    .Lx761_52
                        cmp              cl, 5;                               je    .Lx761_53
                        cmp              dl, 5;                               je    .Lx761_53
                        cmp              cl, 3;                               jne   .Lx761_50
                        cmp              dl, 3;                               jne   .Lx761_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx761_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx761_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx761_51
                                                                              jmp   .Lx761_52
.Lx761_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx761_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx761_53
.Lx761_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx761_54
.Lx761_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx761_54
.Lx761_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx761_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n709_var_ref_α
n708_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n710_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n711_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n712_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_prolog_α:
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
.Lx768_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx768_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx768_61
                        cmp              esi, 1;                              jne   .Lx768_62
                        mov              r8, rax;                             jmp   .Lx768_60
.Lx768_62:              cmp              esi, 2;                              jne   .Lx768_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_61
                        mov              r8, rax;                             jmp   .Lx768_60
.Lx768_63:              cmp              al, 72;                              jne   .Lx768_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx768_61
                        cmp              rax, r8;                             je    .Lx768_61
                        mov              r8, rax;                             jmp   .Lx768_60
.Lx768_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx768_80
                        cmp              al, 104;                             je    .Lx768_80
                        cmp              al, 72;                              jne   .Lx768_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx768_80
                                                                              jmp   .Lx768_74
.Lx768_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx768_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx768_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx768_73
                        lea              r9, [rsp + 576]
.Lx768_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx768_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_65
                        cmp              esi, 1;                              jne   .Lx768_66
                        mov              r9, rax;                             jmp   .Lx768_64
.Lx768_66:              cmp              esi, 2;                              jne   .Lx768_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_65
                        mov              r9, rax;                             jmp   .Lx768_64
.Lx768_67:              cmp              al, 72;                              jne   .Lx768_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_65
                        cmp              rax, r9;                             je    .Lx768_65
                        mov              r9, rax;                             jmp   .Lx768_64
.Lx768_65:              lea              rcx, [rsp + 592]
.Lx768_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx768_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx768_69
                        cmp              esi, 1;                              jne   .Lx768_70
                        mov              rcx, rax;                            jmp   .Lx768_68
.Lx768_70:              cmp              esi, 2;                              jne   .Lx768_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_69
                        mov              rcx, rax;                            jmp   .Lx768_68
.Lx768_71:              cmp              al, 72;                              jne   .Lx768_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx768_69
                        cmp              rax, rcx;                            je    .Lx768_69
                        mov              rcx, rax;                            jmp   .Lx768_68
.Lx768_69:              cmp              r9, rcx;                             je    .Lx768_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx768_75
                        cmp              al, 104;                             je    .Lx768_75
                        cmp              al, 72;                              jne   .Lx768_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx768_75
                                                                              jmp   .Lx768_72
.Lx768_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx768_76
                        cmp              al, 104;                             je    .Lx768_76
                        cmp              al, 72;                              jne   .Lx768_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx768_76
                                                                              jmp   .Lx768_72
.Lx768_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx768_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx768_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx768_77
.Lx768_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx768_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx768_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx768_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx768_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx768_72
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
                        lea              r9, [rsp + 576]
.Lx768_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx768_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_82
                        cmp              esi, 1;                              jne   .Lx768_83
                        mov              r9, rax;                             jmp   .Lx768_81
.Lx768_83:              cmp              esi, 2;                              jne   .Lx768_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_82
                        mov              r9, rax;                             jmp   .Lx768_81
.Lx768_84:              cmp              al, 72;                              jne   .Lx768_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_82
                        cmp              rax, r9;                             je    .Lx768_82
                        mov              r9, rax;                             jmp   .Lx768_81
.Lx768_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx768_85
                        cmp              al, 104;                             je    .Lx768_85
                        cmp              al, 72;                              jne   .Lx768_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx768_85
                                                                              jmp   .Lx768_86
.Lx768_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx768_87
.Lx768_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx768_87:              lea              rcx, [rsp + 592]
.Lx768_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx768_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx768_89
                        cmp              esi, 1;                              jne   .Lx768_90
                        mov              rcx, rax;                            jmp   .Lx768_88
.Lx768_90:              cmp              esi, 2;                              jne   .Lx768_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_89
                        mov              rcx, rax;                            jmp   .Lx768_88
.Lx768_91:              cmp              al, 72;                              jne   .Lx768_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx768_89
                        cmp              rax, rcx;                            je    .Lx768_89
                        mov              rcx, rax;                            jmp   .Lx768_88
.Lx768_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx768_92
                        cmp              al, 104;                             je    .Lx768_92
                        cmp              al, 72;                              jne   .Lx768_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx768_92
                                                                              jmp   .Lx768_93
.Lx768_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx768_94
.Lx768_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx768_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx768_77
.Lx768_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx768_77
.Lx768_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx768_77:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n713_var_α
n712_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:             mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 504], rax;          jmp   n714_var_α
#-----------------------------------------------------------------------------------------------------------------------
n714_var_α:             mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 520], rax;          jmp   n715_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_prolog_α:
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
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n716_var_ref_α
n715_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n717_var_α
#-----------------------------------------------------------------------------------------------------------------------
n717_var_α:             mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 424], rax;          jmp   n718_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n719_call_builtin_prolog_α
.Lx778_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_prolog_α:
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n720_call_builtin_prolog_α
n719_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n720_call_builtin_prolog_α:
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n721_var_ref_α
n720_call_builtin_prolog_β:
                                                                              jmp   n727_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n721_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n722_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n722_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n723_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n723_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n724_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 256]
                        lea              rcx, [rsp + 272]
                        call             $numlist_$2F3_dcα;                   jmp   .Lx788_2
.Lx788_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx788_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx788_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n727_call_builtin_prolog_α
                                                                              jmp   n725_move_label_α
n724_call_proc_staged_β:
                                                                              jmp   n727_call_builtin_prolog_α
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n725_move_label_α:      lea              rax, [rip + n724_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   $numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n726_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    $numlist_$2F3_ω
                                                                              jmp   rax
n726_disjunction_β:                                                           jmp   $numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    $numlist_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $numlist_$2F3_ω
n727_call_builtin_prolog_β:
                                                                              jmp   $numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$numlist_$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$numlist_$2F3_β:
                                                                              jmp   n726_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
$numlist_$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$numlist_$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$numlist_$2F3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx794_2]
                        lea              rdx, [rip + .Lx794_3];               jmp   FN__$numlist_$2F3
.Lx794_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx794_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__random_seq$2F2:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rcx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 976
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
random_seq$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx828_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx828_101
.Lx828_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx828_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx828_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx828_101
.Lx828_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx828_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    random_seq$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n796_var_ref_α
n795_call_builtin_prolog_β:
                                                                              jmp   random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n797_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n798_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n798_call_builtin_prolog_α:
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
.Lx833_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx833_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx833_41
                        cmp              esi, 1;                              jne   .Lx833_55
                        mov              r8, rax;                             jmp   .Lx833_40
.Lx833_55:              cmp              esi, 2;                              jne   .Lx833_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx833_41
                        mov              r8, rax;                             jmp   .Lx833_40
.Lx833_56:              cmp              al, 72;                              jne   .Lx833_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx833_41
                        cmp              rax, r8;                             je    .Lx833_41
                        mov              r8, rax;                             jmp   .Lx833_40
.Lx833_41:              lea              r9, [rsp + 848]
.Lx833_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx833_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx833_43
                        cmp              esi, 1;                              jne   .Lx833_57
                        mov              r9, rax;                             jmp   .Lx833_42
.Lx833_57:              cmp              esi, 2;                              jne   .Lx833_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx833_43
                        mov              r9, rax;                             jmp   .Lx833_42
.Lx833_58:              cmp              al, 72;                              jne   .Lx833_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx833_43
                        cmp              rax, r9;                             je    .Lx833_43
                        mov              r9, rax;                             jmp   .Lx833_42
.Lx833_43:              cmp              r8, r9;                              je    .Lx833_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx833_44
                        cmp              al, 104;                             je    .Lx833_44
                        cmp              al, 72;                              jne   .Lx833_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx833_44
                                                                              jmp   .Lx833_45
.Lx833_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx833_53
                        cmp              al, 104;                             je    .Lx833_53
                        cmp              al, 72;                              jne   .Lx833_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx833_53
                                                                              jmp   .Lx833_46
.Lx833_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx833_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx833_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx833_51
.Lx833_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx833_47
                        cmp              al, 104;                             je    .Lx833_47
                        cmp              al, 72;                              jne   .Lx833_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx833_47
                                                                              jmp   .Lx833_48
.Lx833_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx833_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx833_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx833_51
.Lx833_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx833_49
                        cmp              dl, 80;                              je    .Lx833_53
                                                                              jmp   .Lx833_52
.Lx833_49:              cmp              dl, 80;                              je    .Lx833_52
                        cmp              cl, 5;                               je    .Lx833_53
                        cmp              dl, 5;                               je    .Lx833_53
                        cmp              cl, 3;                               jne   .Lx833_50
                        cmp              dl, 3;                               jne   .Lx833_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx833_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx833_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx833_51
                                                                              jmp   .Lx833_52
.Lx833_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx833_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx833_53
.Lx833_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx833_54
.Lx833_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx833_54
.Lx833_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx833_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n814_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n799_var_ref_α
n798_call_builtin_prolog_β:
                                                                              jmp   n814_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n800_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n801_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n802_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n802_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lx840_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx840_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx840_61
                        cmp              esi, 1;                              jne   .Lx840_62
                        mov              r8, rax;                             jmp   .Lx840_60
.Lx840_62:              cmp              esi, 2;                              jne   .Lx840_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx840_61
                        mov              r8, rax;                             jmp   .Lx840_60
.Lx840_63:              cmp              al, 72;                              jne   .Lx840_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx840_61
                        cmp              rax, r8;                             je    .Lx840_61
                        mov              r8, rax;                             jmp   .Lx840_60
.Lx840_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx840_80
                        cmp              al, 104;                             je    .Lx840_80
                        cmp              al, 72;                              jne   .Lx840_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx840_80
                                                                              jmp   .Lx840_74
.Lx840_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx840_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx840_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx840_73
                        lea              r9, [rsp + 752]
.Lx840_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx840_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx840_65
                        cmp              esi, 1;                              jne   .Lx840_66
                        mov              r9, rax;                             jmp   .Lx840_64
.Lx840_66:              cmp              esi, 2;                              jne   .Lx840_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx840_65
                        mov              r9, rax;                             jmp   .Lx840_64
.Lx840_67:              cmp              al, 72;                              jne   .Lx840_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx840_65
                        cmp              rax, r9;                             je    .Lx840_65
                        mov              r9, rax;                             jmp   .Lx840_64
.Lx840_65:              lea              rcx, [rsp + 768]
.Lx840_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx840_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx840_69
                        cmp              esi, 1;                              jne   .Lx840_70
                        mov              rcx, rax;                            jmp   .Lx840_68
.Lx840_70:              cmp              esi, 2;                              jne   .Lx840_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx840_69
                        mov              rcx, rax;                            jmp   .Lx840_68
.Lx840_71:              cmp              al, 72;                              jne   .Lx840_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx840_69
                        cmp              rax, rcx;                            je    .Lx840_69
                        mov              rcx, rax;                            jmp   .Lx840_68
.Lx840_69:              cmp              r9, rcx;                             je    .Lx840_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx840_75
                        cmp              al, 104;                             je    .Lx840_75
                        cmp              al, 72;                              jne   .Lx840_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx840_75
                                                                              jmp   .Lx840_72
.Lx840_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx840_76
                        cmp              al, 104;                             je    .Lx840_76
                        cmp              al, 72;                              jne   .Lx840_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx840_76
                                                                              jmp   .Lx840_72
.Lx840_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx840_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx840_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx840_77
.Lx840_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx840_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx840_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx840_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx840_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx840_72
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
                        lea              r9, [rsp + 752]
.Lx840_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx840_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx840_82
                        cmp              esi, 1;                              jne   .Lx840_83
                        mov              r9, rax;                             jmp   .Lx840_81
.Lx840_83:              cmp              esi, 2;                              jne   .Lx840_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx840_82
                        mov              r9, rax;                             jmp   .Lx840_81
.Lx840_84:              cmp              al, 72;                              jne   .Lx840_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx840_82
                        cmp              rax, r9;                             je    .Lx840_82
                        mov              r9, rax;                             jmp   .Lx840_81
.Lx840_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx840_85
                        cmp              al, 104;                             je    .Lx840_85
                        cmp              al, 72;                              jne   .Lx840_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx840_85
                                                                              jmp   .Lx840_86
.Lx840_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx840_87
.Lx840_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx840_87:              lea              rcx, [rsp + 768]
.Lx840_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx840_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx840_89
                        cmp              esi, 1;                              jne   .Lx840_90
                        mov              rcx, rax;                            jmp   .Lx840_88
.Lx840_90:              cmp              esi, 2;                              jne   .Lx840_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx840_89
                        mov              rcx, rax;                            jmp   .Lx840_88
.Lx840_91:              cmp              al, 72;                              jne   .Lx840_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx840_89
                        cmp              rax, rcx;                            je    .Lx840_89
                        mov              rcx, rax;                            jmp   .Lx840_88
.Lx840_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx840_92
                        cmp              al, 104;                             je    .Lx840_92
                        cmp              al, 72;                              jne   .Lx840_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx840_92
                                                                              jmp   .Lx840_93
.Lx840_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx840_94
.Lx840_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx840_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx840_77
.Lx840_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx840_77
.Lx840_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx840_77:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n814_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n803_var_ref_α
n802_call_builtin_prolog_β:
                                                                              jmp   n814_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n804_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n804_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n805_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n805_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn846:              .string          "$succ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn846]
                        lea              rsi, [rsp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n814_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n806_cut_α
n805_call_builtin_prolog_β:
                                                                              jmp   n814_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n806_cut_α:                                                                   jmp   n807_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n808_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 12
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n809_call_builtin_prolog_α
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "random_float"
#-----------------------------------------------------------------------------------------------------------------------
n809_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n827_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n810_var_ref_α
n809_call_builtin_prolog_β:
                                                                              jmp   n827_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n810_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n811_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n811_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n812_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_proc_staged_α:
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        call             random_seq$2F2_dcα;                  jmp   .Lx857_2
.Lx857_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx857_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx857_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n827_call_builtin_prolog_α
                                                                              jmp   n813_move_label_α
n812_call_proc_staged_β:
                                                                              jmp   n827_call_builtin_prolog_α
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n813_move_label_α:      lea              rax, [rip + n812_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   random_seq$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n814_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    random_seq$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n815_var_ref_α
n814_call_builtin_prolog_β:
                                                                              jmp   random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n815_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n816_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n816_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n817_lit_integer_α
.Lx863_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n818_call_builtin_prolog_α
.Lx864_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n818_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        lea              r8, [rsp + 320]
.Lx865_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx865_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx865_111
                        cmp              esi, 1;                              jne   .Lx865_112
                        mov              r8, rax;                             jmp   .Lx865_110
.Lx865_112:             cmp              esi, 2;                              jne   .Lx865_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx865_111
                        mov              r8, rax;                             jmp   .Lx865_110
.Lx865_113:             cmp              al, 72;                              jne   .Lx865_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx865_111
                        cmp              rax, r8;                             je    .Lx865_111
                        mov              r8, rax;                             jmp   .Lx865_110
.Lx865_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx865_114
                        cmp              al, 104;                             je    .Lx865_114
                        cmp              al, 72;                              jne   .Lx865_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx865_114
                                                                              jmp   .Lx865_118
.Lx865_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx865_115
                        cmp              al, 3;                               jne   .Lx865_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx865_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx865_115
                                                                              jmp   .Lx865_114
.Lx865_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx865_117
.Lx865_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx865_117
.Lx865_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx865_117:             mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n827_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n819_var_ref_α
n818_call_builtin_prolog_β:
                                                                              jmp   n827_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n819_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n820_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n820_lit_integer_α:     mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n821_call_builtin_prolog_α
.Lx868_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n821_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n827_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n822_var_ref_α
n821_call_builtin_prolog_β:
                                                                              jmp   n827_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n823_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n823_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 2
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n824_call_builtin_prolog_α
.Lx872_0:               .quad            .Lx872_0_s
.Lx872_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n824_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx873_2];     jmp   .Lx873_3
.Lx873_2:               .quad            .Lx873_2_s
.Lx873_2_s:             .string          "[]"
.Lx873_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n827_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n825_move_label_α
n824_call_builtin_prolog_β:
                                                                              jmp   n827_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n825_move_label_α:      lea              rax, [rip + n827_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   random_seq$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n826_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    random_seq$2F2_ω
                                                                              jmp   rax
n826_disjunction_β:                                                           jmp   random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n827_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    random_seq$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   random_seq$2F2_ω
n827_call_builtin_prolog_β:
                                                                              jmp   random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
random_seq$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
random_seq$2F2_β:
                                                                              jmp   n826_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
random_seq$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 984]
                        add              rsp, 1008;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
random_seq$2F2_ω:
                        mov              rcx, qword ptr [rsp + 992]
                        add              rsp, 1008;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
random_seq$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx879_2]
                        lea              rdx, [rip + .Lx879_3];               jmp   FN__random_seq$2F2
.Lx879_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx879_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_5$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n883_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n880_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx885_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx885_101
.Lx885_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx885_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx885_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx885_101
.Lx885_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx885_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n881_lit_string_α
n880_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n881_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n882_call_proc_staged_α
.Lx886_0:               .quad            .Lx886_0_s
.Lx886_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n882_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx888_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx888_21
.Lx888_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx888_21:              mov              rdi, qword ptr [rip + .Lx888_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx888_1
                        mov              rdi, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx888_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx888_3]
                        push             rcx
                        lea              rcx, [rip + .Lx888_3]
                        lea              rdx, [rip + .Lx888_4];               jmp   rax
.Lx888_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx888_2
.Lx888_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx888_2
.Lx888_1:               call             rt_faildescr@PLT
.Lx888_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx888_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx888_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n884_call_builtin_prolog_α
                                                                              jmp   n883_suspend_α
n882_call_proc_staged_β:
                                                                              jmp   n884_call_builtin_prolog_α
.Lx888_0:               .quad            .Lx888_0_s
.Lx888_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n883_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx890_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx890_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n883_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n883_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_5$2F0_γ
n883_suspend_β:                                                               jmp   n882_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n884_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_5$2F0_ω
n884_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_β:
                                                                              jmp   n883_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx891_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx891_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n897_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n892_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx899_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx899_101
.Lx899_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx899_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx899_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx899_101
.Lx899_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx899_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n893_lit_string_α
n892_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n894_lit_string_α
.Lx900_0:               .quad            .Lx900_0_s
.Lx900_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n895_call_builtin_prolog_α
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n895_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n898_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n896_call_proc_staged_α
n895_call_builtin_prolog_β:
                                                                              jmp   n898_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n896_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx904_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx904_21
.Lx904_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx904_21:              mov              rdi, qword ptr [rip + .Lx904_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx904_1
                        mov              rdi, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx904_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx904_3]
                        push             rcx
                        lea              rcx, [rip + .Lx904_3]
                        lea              rdx, [rip + .Lx904_4];               jmp   rax
.Lx904_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx904_2
.Lx904_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx904_2
.Lx904_1:               call             rt_faildescr@PLT
.Lx904_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx904_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx904_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n898_call_builtin_prolog_α
                                                                              jmp   n897_suspend_α
n896_call_proc_staged_β:
                                                                              jmp   n898_call_builtin_prolog_α
.Lx904_0:               .quad            .Lx904_0_s
.Lx904_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n897_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx906_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx906_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n897_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n897_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n897_suspend_β:                                                               jmp   n896_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n898_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_3$2F0_ω
n898_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n897_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx907_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx907_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n926_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx928_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx928_101
.Lx928_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx928_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx928_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx928_101
.Lx928_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx928_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n909_lit_string_α
n908_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:      mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 7
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n910_lit_string_α
.Lx929_0:               .quad            .Lx929_0_s
.Lx929_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n911_lit_string_α
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n912_lit_string_α
.Lx931_0:               .quad            .Lx931_0_s
.Lx931_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 7
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n913_lit_string_α
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          "dialect"
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 8
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n914_call_builtin_prolog_α
.Lx933_0:               .quad            .Lx933_0_s
.Lx933_0_s:             .string          "sicstus4"
#-----------------------------------------------------------------------------------------------------------------------
n914_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n915_lit_string_α
n914_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n916_call_builtin_prolog_α
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          "lists"
#-----------------------------------------------------------------------------------------------------------------------
n916_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n917_call_builtin_prolog_α
n916_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n917_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n927_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n918_lit_string_α
n917_call_builtin_prolog_β:
                                                                              jmp   n927_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n919_lit_string_α
.Lx938_0:               .quad            .Lx938_0_s
.Lx938_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n920_lit_string_α
.Lx939_0:               .quad            .Lx939_0_s
.Lx939_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 6
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n921_lit_integer_α
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n922_call_builtin_prolog_α
.Lx941_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n922_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n923_lit_string_α
n922_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 2
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n924_call_builtin_prolog_α
.Lx943_0:               .quad            .Lx943_0_s
.Lx943_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n924_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n927_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n925_call_proc_staged_α
n924_call_builtin_prolog_β:
                                                                              jmp   n927_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n925_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx946_20
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx946_21
.Lx946_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx946_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx946_22
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx946_23
.Lx946_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx946_23:              mov              rdi, qword ptr [rip + .Lx946_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx946_1
                        mov              rdi, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx946_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx946_3]
                        push             rcx
                        lea              rcx, [rip + .Lx946_3]
                        lea              rdx, [rip + .Lx946_4];               jmp   rax
.Lx946_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx946_2
.Lx946_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx946_2
.Lx946_1:               call             rt_faildescr@PLT
.Lx946_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx946_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx946_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n927_call_builtin_prolog_α
                                                                              jmp   n926_suspend_α
n925_call_proc_staged_β:
                                                                              jmp   n927_call_builtin_prolog_α
.Lx946_0:               .quad            .Lx946_0_s
.Lx946_0_s:             .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n926_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx948_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx948_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n926_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n926_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n926_suspend_β:                                                               jmp   n925_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n927_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_1$2F0_ω
n927_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n926_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx949_50
                        mov              qword ptr [rsp + 704], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx949_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__numlist$2F3:
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rcx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 592
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
numlist$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx967_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx967_101
.Lx967_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx967_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx967_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx967_101
.Lx967_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx967_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    numlist$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n951_var_ref_α
n950_call_builtin_prolog_β:
                                                                              jmp   numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n952_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n952_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n953_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n953_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        lea              r8, [rsp + 464]
.Lx972_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx972_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx972_41
                        cmp              esi, 1;                              jne   .Lx972_55
                        mov              r8, rax;                             jmp   .Lx972_40
.Lx972_55:              cmp              esi, 2;                              jne   .Lx972_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx972_41
                        mov              r8, rax;                             jmp   .Lx972_40
.Lx972_56:              cmp              al, 72;                              jne   .Lx972_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx972_41
                        cmp              rax, r8;                             je    .Lx972_41
                        mov              r8, rax;                             jmp   .Lx972_40
.Lx972_41:              lea              r9, [rsp + 480]
.Lx972_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx972_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx972_43
                        cmp              esi, 1;                              jne   .Lx972_57
                        mov              r9, rax;                             jmp   .Lx972_42
.Lx972_57:              cmp              esi, 2;                              jne   .Lx972_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx972_43
                        mov              r9, rax;                             jmp   .Lx972_42
.Lx972_58:              cmp              al, 72;                              jne   .Lx972_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx972_43
                        cmp              rax, r9;                             je    .Lx972_43
                        mov              r9, rax;                             jmp   .Lx972_42
.Lx972_43:              cmp              r8, r9;                              je    .Lx972_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx972_44
                        cmp              al, 104;                             je    .Lx972_44
                        cmp              al, 72;                              jne   .Lx972_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx972_44
                                                                              jmp   .Lx972_45
.Lx972_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx972_53
                        cmp              al, 104;                             je    .Lx972_53
                        cmp              al, 72;                              jne   .Lx972_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx972_53
                                                                              jmp   .Lx972_46
.Lx972_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx972_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx972_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx972_51
.Lx972_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx972_47
                        cmp              al, 104;                             je    .Lx972_47
                        cmp              al, 72;                              jne   .Lx972_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx972_47
                                                                              jmp   .Lx972_48
.Lx972_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx972_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx972_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx972_51
.Lx972_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx972_49
                        cmp              dl, 80;                              je    .Lx972_53
                                                                              jmp   .Lx972_52
.Lx972_49:              cmp              dl, 80;                              je    .Lx972_52
                        cmp              cl, 5;                               je    .Lx972_53
                        cmp              dl, 5;                               je    .Lx972_53
                        cmp              cl, 3;                               jne   .Lx972_50
                        cmp              dl, 3;                               jne   .Lx972_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx972_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx972_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx972_51
                                                                              jmp   .Lx972_52
.Lx972_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx972_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx972_53
.Lx972_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx972_54
.Lx972_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx972_54
.Lx972_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx972_54:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n966_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n954_var_ref_α
n953_call_builtin_prolog_β:
                                                                              jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n954_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n955_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n955_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n956_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n956_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx977_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx977_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx977_41
                        cmp              esi, 1;                              jne   .Lx977_55
                        mov              r8, rax;                             jmp   .Lx977_40
.Lx977_55:              cmp              esi, 2;                              jne   .Lx977_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx977_41
                        mov              r8, rax;                             jmp   .Lx977_40
.Lx977_56:              cmp              al, 72;                              jne   .Lx977_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx977_41
                        cmp              rax, r8;                             je    .Lx977_41
                        mov              r8, rax;                             jmp   .Lx977_40
.Lx977_41:              lea              r9, [rsp + 400]
.Lx977_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx977_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx977_43
                        cmp              esi, 1;                              jne   .Lx977_57
                        mov              r9, rax;                             jmp   .Lx977_42
.Lx977_57:              cmp              esi, 2;                              jne   .Lx977_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx977_43
                        mov              r9, rax;                             jmp   .Lx977_42
.Lx977_58:              cmp              al, 72;                              jne   .Lx977_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx977_43
                        cmp              rax, r9;                             je    .Lx977_43
                        mov              r9, rax;                             jmp   .Lx977_42
.Lx977_43:              cmp              r8, r9;                              je    .Lx977_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx977_44
                        cmp              al, 104;                             je    .Lx977_44
                        cmp              al, 72;                              jne   .Lx977_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx977_44
                                                                              jmp   .Lx977_45
.Lx977_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx977_53
                        cmp              al, 104;                             je    .Lx977_53
                        cmp              al, 72;                              jne   .Lx977_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx977_53
                                                                              jmp   .Lx977_46
.Lx977_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx977_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx977_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx977_51
.Lx977_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx977_47
                        cmp              al, 104;                             je    .Lx977_47
                        cmp              al, 72;                              jne   .Lx977_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx977_47
                                                                              jmp   .Lx977_48
.Lx977_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx977_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx977_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx977_51
.Lx977_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx977_49
                        cmp              dl, 80;                              je    .Lx977_53
                                                                              jmp   .Lx977_52
.Lx977_49:              cmp              dl, 80;                              je    .Lx977_52
                        cmp              cl, 5;                               je    .Lx977_53
                        cmp              dl, 5;                               je    .Lx977_53
                        cmp              cl, 3;                               jne   .Lx977_50
                        cmp              dl, 3;                               jne   .Lx977_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx977_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx977_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx977_51
                                                                              jmp   .Lx977_52
.Lx977_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx977_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx977_53
.Lx977_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx977_54
.Lx977_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx977_54
.Lx977_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx977_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n966_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n957_var_ref_α
n956_call_builtin_prolog_β:
                                                                              jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n957_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n958_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n959_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n959_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lx982_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx982_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx982_41
                        cmp              esi, 1;                              jne   .Lx982_55
                        mov              r8, rax;                             jmp   .Lx982_40
.Lx982_55:              cmp              esi, 2;                              jne   .Lx982_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx982_41
                        mov              r8, rax;                             jmp   .Lx982_40
.Lx982_56:              cmp              al, 72;                              jne   .Lx982_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx982_41
                        cmp              rax, r8;                             je    .Lx982_41
                        mov              r8, rax;                             jmp   .Lx982_40
.Lx982_41:              lea              r9, [rsp + 320]
.Lx982_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx982_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx982_43
                        cmp              esi, 1;                              jne   .Lx982_57
                        mov              r9, rax;                             jmp   .Lx982_42
.Lx982_57:              cmp              esi, 2;                              jne   .Lx982_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx982_43
                        mov              r9, rax;                             jmp   .Lx982_42
.Lx982_58:              cmp              al, 72;                              jne   .Lx982_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx982_43
                        cmp              rax, r9;                             je    .Lx982_43
                        mov              r9, rax;                             jmp   .Lx982_42
.Lx982_43:              cmp              r8, r9;                              je    .Lx982_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx982_44
                        cmp              al, 104;                             je    .Lx982_44
                        cmp              al, 72;                              jne   .Lx982_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx982_44
                                                                              jmp   .Lx982_45
.Lx982_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx982_53
                        cmp              al, 104;                             je    .Lx982_53
                        cmp              al, 72;                              jne   .Lx982_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx982_53
                                                                              jmp   .Lx982_46
.Lx982_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx982_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx982_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx982_51
.Lx982_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx982_47
                        cmp              al, 104;                             je    .Lx982_47
                        cmp              al, 72;                              jne   .Lx982_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx982_47
                                                                              jmp   .Lx982_48
.Lx982_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx982_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx982_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx982_51
.Lx982_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx982_49
                        cmp              dl, 80;                              je    .Lx982_53
                                                                              jmp   .Lx982_52
.Lx982_49:              cmp              dl, 80;                              je    .Lx982_52
                        cmp              cl, 5;                               je    .Lx982_53
                        cmp              dl, 5;                               je    .Lx982_53
                        cmp              cl, 3;                               jne   .Lx982_50
                        cmp              dl, 3;                               jne   .Lx982_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx982_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx982_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx982_51
                                                                              jmp   .Lx982_52
.Lx982_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx982_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx982_53
.Lx982_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx982_54
.Lx982_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx982_54
.Lx982_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx982_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n966_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n960_var_ref_α
n959_call_builtin_prolog_β:
                                                                              jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n960_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n961_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n962_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n962_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n963_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n963_call_proc_staged_α:
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 256]
                        lea              rcx, [rsp + 272]
                        call             $numlist_$2F3_dcα;                   jmp   .Lx990_2
.Lx990_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx990_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx990_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n966_call_builtin_prolog_α
                                                                              jmp   n964_move_label_α
n963_call_proc_staged_β:
                                                                              jmp   n966_call_builtin_prolog_α
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n964_move_label_α:      lea              rax, [rip + n963_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   numlist$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n965_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    numlist$2F3_ω
                                                                              jmp   rax
n965_disjunction_β:                                                           jmp   numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n966_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    numlist$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   numlist$2F3_ω
n966_call_builtin_prolog_β:
                                                                              jmp   numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
numlist$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
numlist$2F3_β:
                                                                              jmp   n965_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
numlist$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 600]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
numlist$2F3_ω:
                        mov              rcx, qword ptr [rsp + 608]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
numlist$2F3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx996_2]
                        lea              rdx, [rip + .Lx996_3];               jmp   FN__numlist$2F3
.Lx996_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx996_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rcx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n997_lit_string_α:      mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 6
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n998_call_proc_staged_α
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n998_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1001_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1001_21
.Lx1001_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1001_21:             mov              rdi, qword ptr [rip + .Lx1001_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1001_1
                        mov              rdi, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1001_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1001_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1001_3]
                        lea              rdx, [rip + .Lx1001_4];              jmp   rax
.Lx1001_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1001_2
.Lx1001_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1001_2
.Lx1001_1:              call             rt_faildescr@PLT
.Lx1001_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1001_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1001_29:             mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n998_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 88]
                        add              rsp, 112;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 96]
                        add              rsp, 112;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__test$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3248
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pj_test/4"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__pj_test$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            3840
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tr/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__tr$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1072
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "test_random/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__test_random$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_6/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__pj_dir_6$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__pj_dir_4$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__pj_dir_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            496
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "$numlist_/3"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__$numlist_$2F3
                        .quad            $numlist_$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1216
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "random_seq/2"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__random_seq$2F2
                        .quad            random_seq$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            960
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_5/0"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__pj_dir_5$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__pj_dir_3$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__pj_dir_1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "numlist/3"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__numlist$2F3
                        .quad            numlist$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            576
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
