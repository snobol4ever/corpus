                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_append$2F3_α
proc_append$2F3_α:
proc_append$2F3_α_body:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx37_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx37_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx37_101
.Lx37_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx37_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx37_240
                        add              rsp, 304
                                                                                        jmp   proc_append$2F3_ω
.Lx37_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n3_lit_string_α
.Lx40_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx42_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        cmp              esi, 1
                                                                                        jne   .Lx42_112
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_112:
                        cmp              esi, 2
                                                                                        jne   .Lx42_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_113:
                        cmp              eax, 72
                                                                                        jne   .Lx42_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        cmp              rax, r8
                                                                                        je    .Lx42_111
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_114
                        cmp              eax, 104
                                                                                        je    .Lx42_114
                        cmp              eax, 72
                                                                                        jne   .Lx42_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx42_114
                                                                                        jmp   .Lx42_118
.Lx42_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx42_115
                        cmp              eax, 3
                                                                                        je    .Lx42_114
                        cmp              eax, 2
                                                                                        jne   .Lx42_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx42_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx42_114
                                                                                        jmp   .Lx42_116
.Lx42_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx42_117
.Lx42_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx42_117
.Lx42_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx42_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx42_240
                        add              rsp, 304
                                                                                        jmp   n16_var_ref_α
.Lx42_240:
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 2
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n7_call_builtin_prolog_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx46_2]
                                                                                        jmp   .Lx46_3
.Lx46_2:
                        .quad            .Lx46_2_s
.Lx46_2_s:
                        .string          "[]"
.Lx46_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n15_call_builtin_prolog_α
                                                                                        jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx51_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx51_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        cmp              esi, 1
                                                                                        jne   .Lx51_55
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_55:
                        cmp              esi, 2
                                                                                        jne   .Lx51_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_56:
                        cmp              eax, 72
                                                                                        jne   .Lx51_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_41
                        cmp              rax, r8
                                                                                        je    .Lx51_41
                        mov              r8, rax
                                                                                        jmp   .Lx51_40
.Lx51_41:
                        lea              r9, [rbp + 848]
.Lx51_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx51_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        cmp              esi, 1
                                                                                        jne   .Lx51_57
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_57:
                        cmp              esi, 2
                                                                                        jne   .Lx51_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_58:
                        cmp              eax, 72
                                                                                        jne   .Lx51_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_43
                        cmp              rax, r9
                                                                                        je    .Lx51_43
                        mov              r9, rax
                                                                                        jmp   .Lx51_42
.Lx51_43:
                        cmp              r8, r9
                                                                                        je    .Lx51_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_44
                        cmp              eax, 104
                                                                                        je    .Lx51_44
                        cmp              eax, 72
                                                                                        jne   .Lx51_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx51_44
                                                                                        jmp   .Lx51_45
.Lx51_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_53
                        cmp              eax, 104
                                                                                        je    .Lx51_53
                        cmp              eax, 72
                                                                                        jne   .Lx51_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx51_53
                                                                                        jmp   .Lx51_46
.Lx51_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx51_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx51_51
.Lx51_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_47
                        cmp              eax, 104
                                                                                        je    .Lx51_47
                        cmp              eax, 72
                                                                                        jne   .Lx51_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx51_47
                                                                                        jmp   .Lx51_48
.Lx51_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx51_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx51_51
.Lx51_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx51_49
                        cmp              edx, 80
                                                                                        je    .Lx51_53
                                                                                        jmp   .Lx51_52
.Lx51_49:
                        cmp              edx, 80
                                                                                        je    .Lx51_52
                        cmp              ecx, 5
                                                                                        je    .Lx51_53
                        cmp              edx, 5
                                                                                        je    .Lx51_53
                        cmp              ecx, 3
                                                                                        jne   .Lx51_50
                        cmp              edx, 3
                                                                                        jne   .Lx51_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx51_51
                                                                                        jmp   .Lx51_52
.Lx51_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx51_53
.Lx51_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx51_54
.Lx51_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx51_54
.Lx51_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx51_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n15_call_builtin_prolog_α
                                                                                        jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx56_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx56_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        cmp              esi, 1
                                                                                        jne   .Lx56_55
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_55:
                        cmp              esi, 2
                                                                                        jne   .Lx56_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_56:
                        cmp              eax, 72
                                                                                        jne   .Lx56_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        cmp              rax, r8
                                                                                        je    .Lx56_41
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_41:
                        lea              r9, [rbp + 768]
.Lx56_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx56_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        cmp              esi, 1
                                                                                        jne   .Lx56_57
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_57:
                        cmp              esi, 2
                                                                                        jne   .Lx56_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_58:
                        cmp              eax, 72
                                                                                        jne   .Lx56_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        cmp              rax, r9
                                                                                        je    .Lx56_43
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_43:
                        cmp              r8, r9
                                                                                        je    .Lx56_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_44
                        cmp              eax, 104
                                                                                        je    .Lx56_44
                        cmp              eax, 72
                                                                                        jne   .Lx56_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx56_44
                                                                                        jmp   .Lx56_45
.Lx56_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_53
                        cmp              eax, 104
                                                                                        je    .Lx56_53
                        cmp              eax, 72
                                                                                        jne   .Lx56_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx56_53
                                                                                        jmp   .Lx56_46
.Lx56_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx56_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx56_51
.Lx56_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_47
                        cmp              eax, 104
                                                                                        je    .Lx56_47
                        cmp              eax, 72
                                                                                        jne   .Lx56_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx56_47
                                                                                        jmp   .Lx56_48
.Lx56_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx56_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx56_51
.Lx56_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx56_49
                        cmp              edx, 80
                                                                                        je    .Lx56_53
                                                                                        jmp   .Lx56_52
.Lx56_49:
                        cmp              edx, 80
                                                                                        je    .Lx56_52
                        cmp              ecx, 5
                                                                                        je    .Lx56_53
                        cmp              edx, 5
                                                                                        je    .Lx56_53
                        cmp              ecx, 3
                                                                                        jne   .Lx56_50
                        cmp              edx, 3
                                                                                        jne   .Lx56_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx56_51
                                                                                        jmp   .Lx56_52
.Lx56_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx56_53
.Lx56_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx56_54
.Lx56_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx56_54
.Lx56_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx56_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n15_call_builtin_prolog_α
                                                                                        jmp   n14_suspend_α
n13_call_builtin_prolog_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_suspend_α:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 304
                                                                                        jmp   proc_append$2F3_γ
n14_suspend_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n18_lit_integer_α
.Lx62_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n19_call_builtin_prolog_α
.Lx63_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx64_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx64_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        cmp              esi, 1
                                                                                        jne   .Lx64_112
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_112:
                        cmp              esi, 2
                                                                                        jne   .Lx64_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_113:
                        cmp              eax, 72
                                                                                        jne   .Lx64_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        cmp              rax, r8
                                                                                        je    .Lx64_111
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx64_114
                        cmp              eax, 104
                                                                                        je    .Lx64_114
                        cmp              eax, 72
                                                                                        jne   .Lx64_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx64_114
                                                                                        jmp   .Lx64_118
.Lx64_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx64_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx64_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx64_115
                                                                                        jmp   .Lx64_114
.Lx64_119:
                        cmp              eax, 3
                                                                                        jne   .Lx64_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx64_114
                                                                                        jmp   .Lx64_115
.Lx64_120:
                        cmp              eax, 2
                                                                                        jne   .Lx64_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx64_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx64_114
                                                                                        jmp   .Lx64_115
.Lx64_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx64_117
.Lx64_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx64_117
.Lx64_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx64_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n36_call_builtin_prolog_α
                                                                                        jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx71_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx71_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_61
                        cmp              esi, 1
                                                                                        jne   .Lx71_62
                        mov              r8, rax
                                                                                        jmp   .Lx71_60
.Lx71_62:
                        cmp              esi, 2
                                                                                        jne   .Lx71_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_61
                        mov              r8, rax
                                                                                        jmp   .Lx71_60
.Lx71_63:
                        cmp              eax, 72
                                                                                        jne   .Lx71_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_61
                        cmp              rax, r8
                                                                                        je    .Lx71_61
                        mov              r8, rax
                                                                                        jmp   .Lx71_60
.Lx71_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_80
                        cmp              eax, 104
                                                                                        je    .Lx71_80
                        cmp              eax, 72
                                                                                        jne   .Lx71_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx71_80
                                                                                        jmp   .Lx71_74
.Lx71_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx71_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx71_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx71_73
                        lea              r9, [rbp + 512]
.Lx71_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx71_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_65
                        cmp              esi, 1
                                                                                        jne   .Lx71_66
                        mov              r9, rax
                                                                                        jmp   .Lx71_64
.Lx71_66:
                        cmp              esi, 2
                                                                                        jne   .Lx71_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_65
                        mov              r9, rax
                                                                                        jmp   .Lx71_64
.Lx71_67:
                        cmp              eax, 72
                                                                                        jne   .Lx71_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_65
                        cmp              rax, r9
                                                                                        je    .Lx71_65
                        mov              r9, rax
                                                                                        jmp   .Lx71_64
.Lx71_65:
                        lea              rcx, [rbp + 528]
.Lx71_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx71_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx71_69
                        cmp              esi, 1
                                                                                        jne   .Lx71_70
                        mov              rcx, rax
                                                                                        jmp   .Lx71_68
.Lx71_70:
                        cmp              esi, 2
                                                                                        jne   .Lx71_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_69
                        mov              rcx, rax
                                                                                        jmp   .Lx71_68
.Lx71_71:
                        cmp              eax, 72
                                                                                        jne   .Lx71_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx71_69
                        cmp              rax, rcx
                                                                                        je    .Lx71_69
                        mov              rcx, rax
                                                                                        jmp   .Lx71_68
.Lx71_69:
                        cmp              r9, rcx
                                                                                        je    .Lx71_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_75
                        cmp              eax, 104
                                                                                        je    .Lx71_75
                        cmp              eax, 72
                                                                                        jne   .Lx71_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx71_75
                                                                                        jmp   .Lx71_72
.Lx71_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_76
                        cmp              eax, 104
                                                                                        je    .Lx71_76
                        cmp              eax, 72
                                                                                        jne   .Lx71_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx71_76
                                                                                        jmp   .Lx71_72
.Lx71_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx71_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx71_72
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
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx71_77
.Lx71_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx71_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx71_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx71_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx71_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx71_72
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
                        lea              r9, [rbp + 512]
.Lx71_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx71_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_82
                        cmp              esi, 1
                                                                                        jne   .Lx71_83
                        mov              r9, rax
                                                                                        jmp   .Lx71_81
.Lx71_83:
                        cmp              esi, 2
                                                                                        jne   .Lx71_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_82
                        mov              r9, rax
                                                                                        jmp   .Lx71_81
.Lx71_84:
                        cmp              eax, 72
                                                                                        jne   .Lx71_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_82
                        cmp              rax, r9
                                                                                        je    .Lx71_82
                        mov              r9, rax
                                                                                        jmp   .Lx71_81
.Lx71_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_85
                        cmp              eax, 104
                                                                                        je    .Lx71_85
                        cmp              eax, 72
                                                                                        jne   .Lx71_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx71_85
                                                                                        jmp   .Lx71_86
.Lx71_85:
                        mov              qword ptr [rdx + 0], 13
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
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx71_87
.Lx71_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx71_87:
                        lea              rcx, [rbp + 528]
.Lx71_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx71_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx71_89
                        cmp              esi, 1
                                                                                        jne   .Lx71_90
                        mov              rcx, rax
                                                                                        jmp   .Lx71_88
.Lx71_90:
                        cmp              esi, 2
                                                                                        jne   .Lx71_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_89
                        mov              rcx, rax
                                                                                        jmp   .Lx71_88
.Lx71_91:
                        cmp              eax, 72
                                                                                        jne   .Lx71_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx71_89
                        cmp              rax, rcx
                                                                                        je    .Lx71_89
                        mov              rcx, rax
                                                                                        jmp   .Lx71_88
.Lx71_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_92
                        cmp              eax, 104
                                                                                        je    .Lx71_92
                        cmp              eax, 72
                                                                                        jne   .Lx71_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx71_92
                                                                                        jmp   .Lx71_93
.Lx71_92:
                        mov              qword ptr [rdx + 16], 13
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
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx71_94
.Lx71_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx71_94:
                        lea              r10, [rip + g_pl_trail]
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
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx71_77
.Lx71_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx71_77
.Lx71_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx71_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n36_call_builtin_prolog_α
                                                                                        jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                                        jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx76_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_41
                        cmp              esi, 1
                                                                                        jne   .Lx76_55
                        mov              r8, rax
                                                                                        jmp   .Lx76_40
.Lx76_55:
                        cmp              esi, 2
                                                                                        jne   .Lx76_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_41
                        mov              r8, rax
                                                                                        jmp   .Lx76_40
.Lx76_56:
                        cmp              eax, 72
                                                                                        jne   .Lx76_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_41
                        cmp              rax, r8
                                                                                        je    .Lx76_41
                        mov              r8, rax
                                                                                        jmp   .Lx76_40
.Lx76_41:
                        lea              r9, [rbp + 416]
.Lx76_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_43
                        cmp              esi, 1
                                                                                        jne   .Lx76_57
                        mov              r9, rax
                                                                                        jmp   .Lx76_42
.Lx76_57:
                        cmp              esi, 2
                                                                                        jne   .Lx76_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_43
                        mov              r9, rax
                                                                                        jmp   .Lx76_42
.Lx76_58:
                        cmp              eax, 72
                                                                                        jne   .Lx76_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_43
                        cmp              rax, r9
                                                                                        je    .Lx76_43
                        mov              r9, rax
                                                                                        jmp   .Lx76_42
.Lx76_43:
                        cmp              r8, r9
                                                                                        je    .Lx76_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_44
                        cmp              eax, 104
                                                                                        je    .Lx76_44
                        cmp              eax, 72
                                                                                        jne   .Lx76_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx76_44
                                                                                        jmp   .Lx76_45
.Lx76_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_53
                        cmp              eax, 104
                                                                                        je    .Lx76_53
                        cmp              eax, 72
                                                                                        jne   .Lx76_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx76_53
                                                                                        jmp   .Lx76_46
.Lx76_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx76_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx76_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx76_51
.Lx76_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_47
                        cmp              eax, 104
                                                                                        je    .Lx76_47
                        cmp              eax, 72
                                                                                        jne   .Lx76_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx76_47
                                                                                        jmp   .Lx76_48
.Lx76_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx76_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx76_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx76_51
.Lx76_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx76_49
                        cmp              edx, 80
                                                                                        je    .Lx76_53
                                                                                        jmp   .Lx76_52
.Lx76_49:
                        cmp              edx, 80
                                                                                        je    .Lx76_52
                        cmp              ecx, 5
                                                                                        je    .Lx76_53
                        cmp              edx, 5
                                                                                        je    .Lx76_53
                        cmp              ecx, 3
                                                                                        jne   .Lx76_50
                        cmp              edx, 3
                                                                                        jne   .Lx76_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx76_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx76_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx76_51
                                                                                        jmp   .Lx76_52
.Lx76_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx76_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx76_53
.Lx76_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx76_54
.Lx76_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx76_54
.Lx76_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx76_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n36_call_builtin_prolog_α
                                                                                        jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                                        jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx83_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx83_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_61
                        cmp              esi, 1
                                                                                        jne   .Lx83_62
                        mov              r8, rax
                                                                                        jmp   .Lx83_60
.Lx83_62:
                        cmp              esi, 2
                                                                                        jne   .Lx83_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx83_61
                        mov              r8, rax
                                                                                        jmp   .Lx83_60
.Lx83_63:
                        cmp              eax, 72
                                                                                        jne   .Lx83_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_61
                        cmp              rax, r8
                                                                                        je    .Lx83_61
                        mov              r8, rax
                                                                                        jmp   .Lx83_60
.Lx83_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx83_80
                        cmp              eax, 104
                                                                                        je    .Lx83_80
                        cmp              eax, 72
                                                                                        jne   .Lx83_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx83_80
                                                                                        jmp   .Lx83_74
.Lx83_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx83_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx83_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx83_73
                        lea              r9, [rbp + 320]
.Lx83_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx83_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_65
                        cmp              esi, 1
                                                                                        jne   .Lx83_66
                        mov              r9, rax
                                                                                        jmp   .Lx83_64
.Lx83_66:
                        cmp              esi, 2
                                                                                        jne   .Lx83_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx83_65
                        mov              r9, rax
                                                                                        jmp   .Lx83_64
.Lx83_67:
                        cmp              eax, 72
                                                                                        jne   .Lx83_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_65
                        cmp              rax, r9
                                                                                        je    .Lx83_65
                        mov              r9, rax
                                                                                        jmp   .Lx83_64
.Lx83_65:
                        lea              rcx, [rbp + 336]
.Lx83_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx83_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx83_69
                        cmp              esi, 1
                                                                                        jne   .Lx83_70
                        mov              rcx, rax
                                                                                        jmp   .Lx83_68
.Lx83_70:
                        cmp              esi, 2
                                                                                        jne   .Lx83_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx83_69
                        mov              rcx, rax
                                                                                        jmp   .Lx83_68
.Lx83_71:
                        cmp              eax, 72
                                                                                        jne   .Lx83_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx83_69
                        cmp              rax, rcx
                                                                                        je    .Lx83_69
                        mov              rcx, rax
                                                                                        jmp   .Lx83_68
.Lx83_69:
                        cmp              r9, rcx
                                                                                        je    .Lx83_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx83_75
                        cmp              eax, 104
                                                                                        je    .Lx83_75
                        cmp              eax, 72
                                                                                        jne   .Lx83_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx83_75
                                                                                        jmp   .Lx83_72
.Lx83_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx83_76
                        cmp              eax, 104
                                                                                        je    .Lx83_76
                        cmp              eax, 72
                                                                                        jne   .Lx83_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx83_76
                                                                                        jmp   .Lx83_72
.Lx83_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx83_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx83_72
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
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx83_77
.Lx83_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx83_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx83_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx83_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx83_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx83_72
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
                        lea              r9, [rbp + 320]
.Lx83_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx83_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_82
                        cmp              esi, 1
                                                                                        jne   .Lx83_83
                        mov              r9, rax
                                                                                        jmp   .Lx83_81
.Lx83_83:
                        cmp              esi, 2
                                                                                        jne   .Lx83_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx83_82
                        mov              r9, rax
                                                                                        jmp   .Lx83_81
.Lx83_84:
                        cmp              eax, 72
                                                                                        jne   .Lx83_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx83_82
                        cmp              rax, r9
                                                                                        je    .Lx83_82
                        mov              r9, rax
                                                                                        jmp   .Lx83_81
.Lx83_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx83_85
                        cmp              eax, 104
                                                                                        je    .Lx83_85
                        cmp              eax, 72
                                                                                        jne   .Lx83_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx83_85
                                                                                        jmp   .Lx83_86
.Lx83_85:
                        mov              qword ptr [rdx + 0], 13
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
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx83_87
.Lx83_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx83_87:
                        lea              rcx, [rbp + 336]
.Lx83_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx83_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx83_89
                        cmp              esi, 1
                                                                                        jne   .Lx83_90
                        mov              rcx, rax
                                                                                        jmp   .Lx83_88
.Lx83_90:
                        cmp              esi, 2
                                                                                        jne   .Lx83_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx83_89
                        mov              rcx, rax
                                                                                        jmp   .Lx83_88
.Lx83_91:
                        cmp              eax, 72
                                                                                        jne   .Lx83_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx83_89
                        cmp              rax, rcx
                                                                                        je    .Lx83_89
                        mov              rcx, rax
                                                                                        jmp   .Lx83_88
.Lx83_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx83_92
                        cmp              eax, 104
                                                                                        je    .Lx83_92
                        cmp              eax, 72
                                                                                        jne   .Lx83_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx83_92
                                                                                        jmp   .Lx83_93
.Lx83_92:
                        mov              qword ptr [rdx + 16], 13
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
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx83_94
.Lx83_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx83_94:
                        lea              r10, [rip + g_pl_trail]
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
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx83_77
.Lx83_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx83_77
.Lx83_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx83_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n36_call_builtin_prolog_α
                                                                                        jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                                                                                        jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n34_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx91_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx91_21
.Lx91_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx91_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx91_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx91_23
.Lx91_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx91_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx91_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx91_25
.Lx91_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx91_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx91_1
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4]
                                                                                        jmp   rax
.Lx91_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx91_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx91_2
.Lx91_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx91_2
.Lx91_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx91_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx91_2
.Lx91_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx91_2
.Lx91_1:
                        call             rt_faildescr@PLT
.Lx91_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n36_call_builtin_prolog_α
                                                                                        jmp   n35_suspend_α
n34_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n35_suspend_β:
                                                                                        jmp   n34_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   proc_append$2F3_ω
n36_call_builtin_prolog_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        sub              rsp, 4592
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4064], 0
                        mov              qword ptr [rsp + 4072], 0
                        mov              qword ptr [rsp + 4080], 0
                        mov              qword ptr [rsp + 4088], 0
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              qword ptr [rsp + 4128], 0
                        mov              qword ptr [rsp + 4136], 0
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4184], 0
                        mov              qword ptr [rsp + 4192], 0
                        mov              qword ptr [rsp + 4200], 0
                        mov              qword ptr [rsp + 4208], 0
                        mov              qword ptr [rsp + 4216], 0
                        mov              qword ptr [rsp + 4224], 0
                        mov              qword ptr [rsp + 4232], 0
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              qword ptr [rsp + 4256], 0
                        mov              qword ptr [rsp + 4264], 0
                        mov              qword ptr [rsp + 4272], 0
                        mov              qword ptr [rsp + 4280], 0
                        mov              qword ptr [rsp + 4288], 0
                        mov              qword ptr [rsp + 4296], 0
                        mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              qword ptr [rsp + 4336], 0
                        mov              qword ptr [rsp + 4344], 0
                        mov              qword ptr [rsp + 4352], 0
                        mov              qword ptr [rsp + 4360], 0
                        mov              qword ptr [rsp + 4368], 0
                        mov              qword ptr [rsp + 4376], 0
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              qword ptr [rsp + 4416], 0
                        mov              qword ptr [rsp + 4424], 0
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              qword ptr [rsp + 4480], 0
                        mov              qword ptr [rsp + 4488], 0
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              qword ptr [rsp + 4512], 0
                        mov              qword ptr [rsp + 4520], 0
                        mov              qword ptr [rsp + 4528], 0
                        mov              qword ptr [rsp + 4536], 0
                        mov              qword ptr [rsp + 4544], 0
                        mov              qword ptr [rsp + 4552], 0
                        mov              qword ptr [rsp + 4560], 0
                        mov              qword ptr [rsp + 4568], 0
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx253_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx253_101
.Lx253_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx253_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx253_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx253_240:
                                                                                        jmp   n96_lit_string_α
n95_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 4544], 2                      # result
                        mov              dword ptr [rbp + 4548], 21
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n97_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 4560], 2                      # result
                        mov              dword ptr [rbp + 4564], 5
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n98_var_ref_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4536], rax
                        .section         .rodata
.Lrkfn259:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]                         # fn
                        lea              rsi, [rbp + 4496]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n100_var_α
n99_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 4464], 2                      # result
                        mov              dword ptr [rbp + 4468], 5
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n102_call_builtin_prolog_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4440], rax
                        .section         .rodata
.Lrkfn264:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]                         # fn
                        lea              rsi, [rbp + 4416]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n103_var_α
n102_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4376], rax
                        .section         .rodata
.Lrkfn268:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]                         # fn
                        lea              rsi, [rbp + 4368]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n105_var_α
n104_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 4336], 2                      # result
                        mov              dword ptr [rbp + 4340], 5
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n107_call_builtin_prolog_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn273:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]                         # fn
                        lea              rsi, [rbp + 4288]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n108_var_α
n107_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4248], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 4240]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4200], rax
                        .section         .rodata
.Lrkfn281:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]                         # fn
                        lea              rsi, [rbp + 4192]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n112_lit_string_α
n111_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 4128], 2                      # result
                        mov              dword ptr [rbp + 4132], 21
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n113_lit_string_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 4144], 2                      # result
                        mov              dword ptr [rbp + 4148], 4
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n114_var_ref_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn287:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]                         # fn
                        lea              rsi, [rbp + 4080]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn293:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]                         # fn
                        lea              rsi, [rbp + 4000]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn299:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]                         # fn
                        lea              rsi, [rbp + 3920]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                        .section         .rodata
.Lrkfn305:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]                         # fn
                        lea              rsi, [rbp + 3840]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n126_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn309:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]                         # fn
                        lea              rsi, [rbp + 3792]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n127_lit_string_α
n126_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 3760], 2                      # result
                        mov              dword ptr [rbp + 3764], 8
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n128_var_ref_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "readback"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n131_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3680]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n132_call_builtin_prolog_α
n131_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn319:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn319]                         # fn
                        lea              rsi, [rbp + 3600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n133_lit_string_α
n132_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 3568], 2                      # result
                        mov              dword ptr [rbp + 3572], 0
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n134_call_builtin_prolog_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3560], rax
                        .section         .rodata
.Lrkfn322:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]                         # fn
                        lea              rsi, [rbp + 3552]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n135_lit_string_α
n134_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 3488], 2                      # result
                        mov              dword ptr [rbp + 3492], 21
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n136_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 3504], 2                      # result
                        mov              dword ptr [rbp + 3508], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n137_var_ref_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "append"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3480], rax
                        .section         .rodata
.Lrkfn328:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]                         # fn
                        lea              rsi, [rbp + 3440]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n139_var_α
n138_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 3408], 2                      # result
                        mov              dword ptr [rbp + 3412], 4
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n141_call_builtin_prolog_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "more"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn333:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]                         # fn
                        lea              rsi, [rbp + 3360]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n142_var_α
n141_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lrkfn337:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]                         # fn
                        lea              rsi, [rbp + 3312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 3280], 2                      # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n146_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 3184], 2                      # result
                        mov              dword ptr [rbp + 3188], 5
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n147_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "force"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 3104], 2                      # result
                        mov              dword ptr [rbp + 3108], 4
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n148_call_builtin_prolog_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx343_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx343_240:
                                                                                        jmp   n149_lit_string_α
n148_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 3088], 2                      # result
                        mov              dword ptr [rbp + 3092], 2
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n150_call_builtin_prolog_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n151_call_builtin_prolog_α
n150_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn347:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn347]                         # fn
                        lea              rsi, [rbp + 3040]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n152_lit_string_α
n151_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 2768], 2                      # result
                        mov              dword ptr [rbp + 2772], 21
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n153_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 2784], 2                      # result
                        mov              dword ptr [rbp + 2788], 4
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n154_var_ref_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 3008], 2                      # result
                        mov              dword ptr [rbp + 3012], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n156_lit_string_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 2912], 2                      # result
                        mov              dword ptr [rbp + 2916], 4
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n157_lit_string_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 2832], 2                      # result
                        mov              dword ptr [rbp + 2836], 4
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n158_call_builtin_prolog_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx355_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx355_240:
                                                                                        jmp   n159_lit_string_α
n158_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 2816], 2                      # result
                        mov              dword ptr [rbp + 2820], 2
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n160_call_builtin_prolog_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n161_call_builtin_prolog_α
n160_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn359:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]                         # fn
                        lea              rsi, [rbp + 2704]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n162_var_ref_α
n161_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn365:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]                         # fn
                        lea              rsi, [rbp + 2624]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn369:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn369]                         # fn
                        lea              rsi, [rbp + 2576]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n167_lit_string_α
n166_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 9
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n168_var_ref_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "firstchar"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n170_call_builtin_prolog_α
n169_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rax
                        .section         .rodata
.Lrkfn375:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]                         # fn
                        lea              rsi, [rbp + 2448]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n171_lit_string_α
n170_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 2416], 2                      # result
                        mov              dword ptr [rbp + 2420], 0
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn378:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]                         # fn
                        lea              rsi, [rbp + 2400]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n173_lit_string_α
n172_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 5
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n174_lit_string_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 2064], 2                      # result
                        mov              dword ptr [rbp + 2068], 15
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n175_lit_string_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 1952], 2                      # result
                        mov              dword ptr [rbp + 1956], 11
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n176_var_ref_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4704]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx384_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx384_240:
                                                                                        jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx387_240
                        add              rsp, 4592
                                                                                        jmp   n188_lit_string_α
.Lx387_240:
                                                                                        jmp   n180_call_builtin_prolog_α
n179_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx388_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx388_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx388_101
.Lx388_100:
                        lea              rdi, [rbp + 2208]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx388_101:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx388_240
                        add              rsp, 4592
                                                                                        jmp   n188_lit_string_α
.Lx388_240:
                                                                                        jmp   n181_lit_string_α
n180_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 2336], 2                      # result
                        mov              dword ptr [rbp + 2340], 22
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n182_lit_string_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "/tmp/rung65_absent.txt"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], 4
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n183_var_ref_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn394:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]                         # fn
                        lea              rsi, [rbp + 2288]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx393_240
                        add              rsp, 4592
                                                                                        jmp   n185_call_builtin_prolog_α
.Lx393_240:
                                                                                        jmp   n186_lit_string_α
n184_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn396:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]                         # fn
                        lea              rsi, [rbp + 2240]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 104
                                                                                        je    n188_lit_string_α
                                                                                        jmp   n186_lit_string_α
n185_call_builtin_prolog_β:
                                                                                        jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 12
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "existence_ok"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn399:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]                         # fn
                        lea              rsi, [rbp + 1872]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n190_lit_string_α
n187_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 1936], 2                      # result
                        mov              dword ptr [rbp + 1940], 13
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n189_call_builtin_prolog_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "existence_bad"
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn402:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]                         # fn
                        lea              rsi, [rbp + 1920]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n190_lit_string_α
n189_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 1840], 2                      # result
                        mov              dword ptr [rbp + 1844], 0
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n191_call_builtin_prolog_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn405:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]                         # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n192_lit_string_α
n191_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n193_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 12
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n194_lit_string_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 7
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n195_lit_string_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "io_mode"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 5
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n196_call_builtin_prolog_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx410_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx410_240:
                                                                                        jmp   n197_var_ref_α
n196_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4672]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n198_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx413_240
                        add              rsp, 4592
                                                                                        jmp   n207_lit_string_α
.Lx413_240:
                                                                                        jmp   n199_call_builtin_prolog_α
n198_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx414_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx414_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx414_101
.Lx414_100:
                        lea              rdi, [rbp + 1632]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx414_101:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx414_240
                        add              rsp, 4592
                                                                                        jmp   n207_lit_string_α
.Lx414_240:
                                                                                        jmp   n200_lit_string_α
n199_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], 21
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n201_lit_string_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n202_var_ref_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4688]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn420:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]                         # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx419_240
                        add              rsp, 4592
                                                                                        jmp   n204_call_builtin_prolog_α
.Lx419_240:
                                                                                        jmp   n205_lit_string_α
n203_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n204_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn422:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]                         # fn
                        lea              rsi, [rbp + 1664]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n205_lit_string_α
n204_call_builtin_prolog_β:
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 9
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n206_call_builtin_prolog_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "iomode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn425:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n209_lit_string_α
n206_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 10
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n208_call_builtin_prolog_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "iomode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn428:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]                         # fn
                        lea              rsi, [rbp + 1344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n209_lit_string_α
n208_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1264], 2                      # result
                        mov              dword ptr [rbp + 1268], 0
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n210_call_builtin_prolog_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn431:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]                         # fn
                        lea              rsi, [rbp + 1248]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n211_lit_string_α
n210_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n212_lit_string_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 19
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n213_var_ref_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n214_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx436_240
                        add              rsp, 4592
                                                                                        jmp   n223_lit_string_α
.Lx436_240:
                                                                                        jmp   n215_call_builtin_prolog_α
n214_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx437_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx437_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx437_101
.Lx437_100:
                        lea              rdi, [rbp + 1056]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx437_101:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx437_240
                        add              rsp, 4592
                                                                                        jmp   n223_lit_string_α
.Lx437_240:
                                                                                        jmp   n216_var_ref_α
n215_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 4
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n218_var_ref_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n219_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn444:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]                         # fn
                        lea              rsi, [rbp + 1136]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx443_240
                        add              rsp, 4592
                                                                                        jmp   n220_call_builtin_prolog_α
.Lx443_240:
                                                                                        jmp   n221_lit_string_α
n219_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn446:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]                         # fn
                        lea              rsi, [rbp + 1088]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n221_lit_string_α
n220_call_builtin_prolog_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 7
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n222_call_builtin_prolog_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "inst_ok"
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn449:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]                         # fn
                        lea              rsi, [rbp + 832]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n225_lit_string_α
n222_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 8
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n224_call_builtin_prolog_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "inst_bad"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn452:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n225_lit_string_α
n224_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 0
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n226_call_builtin_prolog_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn455:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]                         # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n227_lit_string_α
n226_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 5
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n228_lit_string_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 12
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n229_lit_string_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 11
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n230_lit_integer_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n231_call_builtin_prolog_α
.Lx459_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx460_240
                        add              rsp, 4592
                                                                                        jmp   main_ω
.Lx460_240:
                                                                                        jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n233_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx463_240
                        add              rsp, 4592
                                                                                        jmp   n242_lit_string_α
.Lx463_240:
                                                                                        jmp   n234_call_builtin_prolog_α
n233_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx464_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx464_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx464_101
.Lx464_100:
                        lea              rdi, [rbp + 592]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx464_101:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx464_240
                        add              rsp, 4592
                                                                                        jmp   n242_lit_string_α
.Lx464_240:
                                                                                        jmp   n235_lit_integer_α
n234_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n236_lit_string_α
.Lx465_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 4
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n237_var_ref_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn470:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx469_240
                        add              rsp, 4592
                                                                                        jmp   n239_call_builtin_prolog_α
.Lx469_240:
                                                                                        jmp   n240_lit_string_α
n238_call_builtin_prolog_β:
                        add              rsp, 4592
                                                                                        jmp   n239_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn472:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]                         # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n242_lit_string_α
                                                                                        jmp   n240_lit_string_α
n239_call_builtin_prolog_β:
                                                                                        jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 13
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n241_call_builtin_prolog_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "sourcesink_ok"
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn475:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n244_lit_string_α
n241_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 14
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n243_call_builtin_prolog_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "sourcesink_bad"
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn478:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n244_lit_string_α
n243_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 0
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n245_call_builtin_prolog_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn481:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n246_lit_string_α
n245_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 4
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n247_call_builtin_prolog_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn484:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n248_lit_string_α
n247_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n249_call_builtin_prolog_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn487:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn487]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n250_move_label_α
n249_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_move_label_α:
                        lea              rax, [rip + n252_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 4592
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n251_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n251_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n252_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n251_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
