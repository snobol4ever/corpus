                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__prolog_copyright$2F1:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
prolog_copyright$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx7_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx7_101
.Lx7_102:               lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx7_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx7_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx7_101
.Lx7_100:               lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx7_101:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    prolog_copyright$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 0
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n3_call_builtin_prolog_α
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx11_2];      jmp   .Lx11_3
.Lx11_2:                .quad            .Lx11_2_s
.Lx11_2_s:              .string          ""
.Lx11_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n6_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_move_label_α
n3_call_builtin_prolog_β:
                                                                              jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_move_label_α:        lea              rax, [rip + n6_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   prolog_copyright$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:       mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    prolog_copyright$2F1_ω
                                                                              jmp   rax
n5_disjunction_β:                                                             jmp   prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    prolog_copyright$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   prolog_copyright$2F1_ω
n6_call_builtin_prolog_β:
                                                                              jmp   prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
prolog_copyright$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
prolog_copyright$2F1_β:
                                                                              jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
prolog_copyright$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_copyright$2F1_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_copyright$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx17_2]
                        lea              rdx, [rip + .Lx17_3];                jmp   FN__prolog_copyright$2F1
.Lx17_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx17_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__prolog_version$2F1:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
prolog_version$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx25_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx25_101
.Lx25_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx25_101
.Lx25_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx25_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    prolog_version$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_var_ref_α
n18_call_builtin_prolog_β:
                                                                              jmp   prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n21_call_builtin_prolog_α
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "4.3.12"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx29_2];      jmp   .Lx29_3
.Lx29_2:                .quad            .Lx29_2_s
.Lx29_2_s:              .string          "4.3.12"
.Lx29_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_move_label_α
n21_call_builtin_prolog_β:
                                                                              jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_move_label_α:       lea              rax, [rip + n24_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   prolog_version$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    prolog_version$2F1_ω
                                                                              jmp   rax
n23_disjunction_β:                                                            jmp   prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    prolog_version$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   prolog_version$2F1_ω
n24_call_builtin_prolog_β:
                                                                              jmp   prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
prolog_version$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
prolog_version$2F1_β:
                                                                              jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
prolog_version$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_version$2F1_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_version$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx35_2]
                        lea              rdx, [rip + .Lx35_3];                jmp   FN__prolog_version$2F1
.Lx35_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx35_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__reverse$2F2:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rcx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              qword ptr [rsp + 1096], rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1072
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
reverse$2F2_α_body:
                        lea              rax, [rip + n47_suspend_β]
                        mov              qword ptr [rsp + 992], rax
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx69_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx69_101
.Lx69_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx69_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx69_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx69_101
.Lx69_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx69_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_var_ref_α
n36_call_builtin_prolog_β:
                                                                              jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n39_lit_string_α
.Lx72_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n40_call_builtin_prolog_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        lea              r8, [rsp + 896]
.Lx74_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx74_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx74_111
                        cmp              esi, 1;                              jne   .Lx74_112
                        mov              r8, rax;                             jmp   .Lx74_110
.Lx74_112:              cmp              esi, 2;                              jne   .Lx74_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx74_111
                        mov              r8, rax;                             jmp   .Lx74_110
.Lx74_113:              cmp              al, 72;                              jne   .Lx74_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx74_111
                        cmp              rax, r8;                             je    .Lx74_111
                        mov              r8, rax;                             jmp   .Lx74_110
.Lx74_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx74_114
                        cmp              al, 104;                             je    .Lx74_114
                        cmp              al, 72;                              jne   .Lx74_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx74_114
                                                                              jmp   .Lx74_118
.Lx74_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx74_115
                        cmp              al, 3;                               je    .Lx74_114
                        cmp              al, 2;                               jne   .Lx74_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx74_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx74_114
                                                                              jmp   .Lx74_116
.Lx74_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx74_117
.Lx74_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx74_117
.Lx74_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx74_117:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n49_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                              jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n43_call_builtin_prolog_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              rsi, qword ptr [rip + .Lx78_2];      jmp   .Lx78_3
.Lx78_2:                .quad            .Lx78_2_s
.Lx78_2_s:              .string          "[]"
.Lx78_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                                                                              jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n46_call_builtin_prolog_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              rsi, qword ptr [rip + .Lx82_2];      jmp   .Lx82_3
.Lx82_2:                .quad            .Lx82_2_s
.Lx82_2_s:              .string          "[]"
.Lx82_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_suspend_α
n46_call_builtin_prolog_β:
                                                                              jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx84_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 992];          jmp   rax
.Lx84_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n47_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n47_suspend_β]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse$2F2_γ
n47_suspend_β:                                                                jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    reverse$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                                                                              jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n51_lit_integer_α
.Lx88_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n52_call_builtin_prolog_α
.Lx89_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.Lx90_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx90_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx90_111
                        cmp              esi, 1;                              jne   .Lx90_112
                        mov              r8, rax;                             jmp   .Lx90_110
.Lx90_112:              cmp              esi, 2;                              jne   .Lx90_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx90_111
                        mov              r8, rax;                             jmp   .Lx90_110
.Lx90_113:              cmp              al, 72;                              jne   .Lx90_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx90_111
                        cmp              rax, r8;                             je    .Lx90_111
                        mov              r8, rax;                             jmp   .Lx90_110
.Lx90_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx90_114
                        cmp              al, 104;                             je    .Lx90_114
                        cmp              al, 72;                              jne   .Lx90_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx90_114
                                                                              jmp   .Lx90_118
.Lx90_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx90_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx90_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx90_115
                                                                              jmp   .Lx90_114
.Lx90_119:              cmp              al, 3;                               jne   .Lx90_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx90_114
                                                                              jmp   .Lx90_115
.Lx90_120:              cmp              al, 2;                               jne   .Lx90_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx90_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx90_114
                                                                              jmp   .Lx90_115
.Lx90_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx90_117
.Lx90_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx90_117
.Lx90_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx90_117:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_ref_α
n52_call_builtin_prolog_β:
                                                                              jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1040]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        lea              r8, [rsp + 480]
.Lx97_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx97_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx97_61
                        cmp              esi, 1;                              jne   .Lx97_62
                        mov              r8, rax;                             jmp   .Lx97_60
.Lx97_62:               cmp              esi, 2;                              jne   .Lx97_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx97_61
                        mov              r8, rax;                             jmp   .Lx97_60
.Lx97_63:               cmp              al, 72;                              jne   .Lx97_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx97_61
                        cmp              rax, r8;                             je    .Lx97_61
                        mov              r8, rax;                             jmp   .Lx97_60
.Lx97_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx97_80
                        cmp              al, 104;                             je    .Lx97_80
                        cmp              al, 72;                              jne   .Lx97_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx97_80
                                                                              jmp   .Lx97_74
.Lx97_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx97_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx97_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx97_73
                        lea              r9, [rsp + 496]
.Lx97_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx97_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx97_65
                        cmp              esi, 1;                              jne   .Lx97_66
                        mov              r9, rax;                             jmp   .Lx97_64
.Lx97_66:               cmp              esi, 2;                              jne   .Lx97_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx97_65
                        mov              r9, rax;                             jmp   .Lx97_64
.Lx97_67:               cmp              al, 72;                              jne   .Lx97_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx97_65
                        cmp              rax, r9;                             je    .Lx97_65
                        mov              r9, rax;                             jmp   .Lx97_64
.Lx97_65:               lea              rcx, [rsp + 512]
.Lx97_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx97_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx97_69
                        cmp              esi, 1;                              jne   .Lx97_70
                        mov              rcx, rax;                            jmp   .Lx97_68
.Lx97_70:               cmp              esi, 2;                              jne   .Lx97_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx97_69
                        mov              rcx, rax;                            jmp   .Lx97_68
.Lx97_71:               cmp              al, 72;                              jne   .Lx97_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx97_69
                        cmp              rax, rcx;                            je    .Lx97_69
                        mov              rcx, rax;                            jmp   .Lx97_68
.Lx97_69:               cmp              r9, rcx;                             je    .Lx97_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx97_75
                        cmp              al, 104;                             je    .Lx97_75
                        cmp              al, 72;                              jne   .Lx97_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx97_75
                                                                              jmp   .Lx97_72
.Lx97_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx97_76
                        cmp              al, 104;                             je    .Lx97_76
                        cmp              al, 72;                              jne   .Lx97_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx97_76
                                                                              jmp   .Lx97_72
.Lx97_76:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx97_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx97_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx97_77
.Lx97_80:               lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx97_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx97_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx97_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx97_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx97_72
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
                        lea              r9, [rsp + 496]
.Lx97_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx97_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx97_82
                        cmp              esi, 1;                              jne   .Lx97_83
                        mov              r9, rax;                             jmp   .Lx97_81
.Lx97_83:               cmp              esi, 2;                              jne   .Lx97_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx97_82
                        mov              r9, rax;                             jmp   .Lx97_81
.Lx97_84:               cmp              al, 72;                              jne   .Lx97_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx97_82
                        cmp              rax, r9;                             je    .Lx97_82
                        mov              r9, rax;                             jmp   .Lx97_81
.Lx97_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx97_85
                        cmp              al, 104;                             je    .Lx97_85
                        cmp              al, 72;                              jne   .Lx97_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx97_85
                                                                              jmp   .Lx97_86
.Lx97_85:               mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx97_87
.Lx97_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx97_87:               lea              rcx, [rsp + 512]
.Lx97_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx97_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx97_89
                        cmp              esi, 1;                              jne   .Lx97_90
                        mov              rcx, rax;                            jmp   .Lx97_88
.Lx97_90:               cmp              esi, 2;                              jne   .Lx97_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx97_89
                        mov              rcx, rax;                            jmp   .Lx97_88
.Lx97_91:               cmp              al, 72;                              jne   .Lx97_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx97_89
                        cmp              rax, rcx;                            je    .Lx97_89
                        mov              rcx, rax;                            jmp   .Lx97_88
.Lx97_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx97_92
                        cmp              al, 104;                             je    .Lx97_92
                        cmp              al, 72;                              jne   .Lx97_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx97_92
                                                                              jmp   .Lx97_93
.Lx97_92:               mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx97_94
.Lx97_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx97_94:               lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx97_77
.Lx97_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx97_77
.Lx97_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx97_77:               mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                                                                              jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
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
.Lx102_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx102_41
                        cmp              esi, 1;                              jne   .Lx102_55
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_55:              cmp              esi, 2;                              jne   .Lx102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx102_41
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_56:              cmp              al, 72;                              jne   .Lx102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx102_41
                        cmp              rax, r8;                             je    .Lx102_41
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_41:              lea              r9, [rsp + 400]
.Lx102_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx102_43
                        cmp              esi, 1;                              jne   .Lx102_57
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_57:              cmp              esi, 2;                              jne   .Lx102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx102_43
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_58:              cmp              al, 72;                              jne   .Lx102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx102_43
                        cmp              rax, r9;                             je    .Lx102_43
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_43:              cmp              r8, r9;                              je    .Lx102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx102_44
                        cmp              al, 104;                             je    .Lx102_44
                        cmp              al, 72;                              jne   .Lx102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx102_44
                                                                              jmp   .Lx102_45
.Lx102_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx102_53
                        cmp              al, 104;                             je    .Lx102_53
                        cmp              al, 72;                              jne   .Lx102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx102_53
                                                                              jmp   .Lx102_46
.Lx102_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx102_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx102_51
.Lx102_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx102_47
                        cmp              al, 104;                             je    .Lx102_47
                        cmp              al, 72;                              jne   .Lx102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx102_47
                                                                              jmp   .Lx102_48
.Lx102_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx102_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx102_51
.Lx102_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx102_49
                        cmp              dl, 80;                              je    .Lx102_53
                                                                              jmp   .Lx102_52
.Lx102_49:              cmp              dl, 80;                              je    .Lx102_52
                        cmp              cl, 5;                               je    .Lx102_53
                        cmp              dl, 5;                               je    .Lx102_53
                        cmp              cl, 3;                               jne   .Lx102_50
                        cmp              dl, 3;                               jne   .Lx102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx102_51
                                                                              jmp   .Lx102_52
.Lx102_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx102_53
.Lx102_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx102_54
.Lx102_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx102_54
.Lx102_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx102_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                                                                              jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n63_var_ref_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1040]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n65_call_builtin_prolog_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_call_proc_staged_α
n65_call_builtin_prolog_β:
                                                                              jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx113_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx113_21
.Lx113_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx113_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx113_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx113_23
.Lx113_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx113_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx113_24
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx113_25
.Lx113_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx113_25:              lea              rax, [rip + .Lx113_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx113_1
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4];               jmp   rax
.Lx113_3:               mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx113_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx113_2
.Lx113_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx113_2
.Lx113_4:               mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx113_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx113_2
.Lx113_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx113_2
.Lx113_1:               call             rt_faildescr@PLT
.Lx113_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx113_29
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
.Lx113_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                                                                              jmp   n67_suspend_α
n66_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n68_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1168
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n68_call_builtin_prolog_α
                        lea              r11, [rip + .Lx113_7]
                        push             r11
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4];               jmp   rax
.Lx113_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n68_call_builtin_prolog_α
                                                                              jmp   n67_suspend_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n67_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx115_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 992];          jmp   rax
.Lx115_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n67_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n67_suspend_β]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse$2F2_γ
n67_suspend_β:                                                                jmp   n66_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    reverse$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   reverse$2F2_ω
n68_call_builtin_prolog_β:
                                                                              jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_β:
                                                                              jmp   n47_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx116_50
                        mov              qword ptr [rsp + 992], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 992];          jmp   rax
.Lx116_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1080]
                        add              rsp, 1104;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1088]
                        add              rsp, 1104;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__go_other$2F0:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 272
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
go_other$2F0_α_body:
                        lea              rax, [rip + n122_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx124_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx124_101
.Lx124_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx124_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx124_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx124_101
.Lx124_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx124_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    go_other$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_var_ref_α
n117_call_builtin_prolog_β:
                                                                              jmp   go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n119_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rsp + 208]
                        call             argument_list$2F1_dcα;               jmp   .Lx128_2
.Lx128_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx128_29
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
.Lx128_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n123_call_builtin_prolog_α
                                                                              jmp   n120_var_ref_α
n119_call_proc_staged_β:
                                                                              jmp   n123_call_builtin_prolog_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n121_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              qword ptr [rsp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx132_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx132_21
.Lx132_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx132_21:              lea              rax, [rip + .Lx132_7]
                        push             rax
                        mov              edi, 12
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx132_1
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4];               jmp   rax
.Lx132_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx132_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx132_2
.Lx132_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx132_2
.Lx132_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx132_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx132_2
.Lx132_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx132_2
.Lx132_1:               call             rt_faildescr@PLT
.Lx132_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx132_29
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
.Lx132_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n119_call_proc_staged_β
                                                                              jmp   n122_suspend_α
n121_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n119_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 32
                        mov              r8d, 512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 12
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n119_call_proc_staged_β
                        lea              r11, [rip + .Lx132_7]
                        push             r11
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4];               jmp   rax
.Lx132_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n119_call_proc_staged_β
                                                                              jmp   n122_suspend_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
n122_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx134_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx134_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n122_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n122_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   go_other$2F0_γ
n122_suspend_β:                                                               jmp   n121_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    go_other$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   go_other$2F0_ω
n123_call_builtin_prolog_β:
                                                                              jmp   go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
go_other$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
go_other$2F0_β:
                                                                              jmp   n122_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
go_other$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx135_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx135_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
go_other$2F0_ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
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
                        lea              rax, [rip + n150_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx173_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx173_101
.Lx173_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx173_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx173_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx173_101
.Lx173_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx173_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n139_lit_string_α
.Lx176_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n140_call_builtin_prolog_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
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
.Lx178_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx178_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx178_111
                        cmp              esi, 1;                              jne   .Lx178_112
                        mov              r8, rax;                             jmp   .Lx178_110
.Lx178_112:             cmp              esi, 2;                              jne   .Lx178_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx178_111
                        mov              r8, rax;                             jmp   .Lx178_110
.Lx178_113:             cmp              al, 72;                              jne   .Lx178_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx178_111
                        cmp              rax, r8;                             je    .Lx178_111
                        mov              r8, rax;                             jmp   .Lx178_110
.Lx178_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx178_114
                        cmp              al, 104;                             je    .Lx178_114
                        cmp              al, 72;                              jne   .Lx178_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx178_114
                                                                              jmp   .Lx178_118
.Lx178_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx178_115
                        cmp              al, 3;                               je    .Lx178_114
                        cmp              al, 2;                               jne   .Lx178_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx178_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx178_114
                                                                              jmp   .Lx178_116
.Lx178_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx178_117
.Lx178_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx178_117
.Lx178_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx178_117:             mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n152_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_var_ref_α
n140_call_builtin_prolog_β:
                                                                              jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n143_call_builtin_prolog_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lx182_2];     jmp   .Lx182_3
.Lx182_2:               .quad            .Lx182_2_s
.Lx182_2_s:             .string          "[]"
.Lx182_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n151_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                              jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
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
.Lx187_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx187_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx187_41
                        cmp              esi, 1;                              jne   .Lx187_55
                        mov              r8, rax;                             jmp   .Lx187_40
.Lx187_55:              cmp              esi, 2;                              jne   .Lx187_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx187_41
                        mov              r8, rax;                             jmp   .Lx187_40
.Lx187_56:              cmp              al, 72;                              jne   .Lx187_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx187_41
                        cmp              rax, r8;                             je    .Lx187_41
                        mov              r8, rax;                             jmp   .Lx187_40
.Lx187_41:              lea              r9, [rsp + 848]
.Lx187_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx187_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx187_43
                        cmp              esi, 1;                              jne   .Lx187_57
                        mov              r9, rax;                             jmp   .Lx187_42
.Lx187_57:              cmp              esi, 2;                              jne   .Lx187_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx187_43
                        mov              r9, rax;                             jmp   .Lx187_42
.Lx187_58:              cmp              al, 72;                              jne   .Lx187_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx187_43
                        cmp              rax, r9;                             je    .Lx187_43
                        mov              r9, rax;                             jmp   .Lx187_42
.Lx187_43:              cmp              r8, r9;                              je    .Lx187_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx187_44
                        cmp              al, 104;                             je    .Lx187_44
                        cmp              al, 72;                              jne   .Lx187_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx187_44
                                                                              jmp   .Lx187_45
.Lx187_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx187_53
                        cmp              al, 104;                             je    .Lx187_53
                        cmp              al, 72;                              jne   .Lx187_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx187_53
                                                                              jmp   .Lx187_46
.Lx187_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx187_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx187_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx187_51
.Lx187_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx187_47
                        cmp              al, 104;                             je    .Lx187_47
                        cmp              al, 72;                              jne   .Lx187_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx187_47
                                                                              jmp   .Lx187_48
.Lx187_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx187_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx187_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx187_51
.Lx187_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx187_49
                        cmp              dl, 80;                              je    .Lx187_53
                                                                              jmp   .Lx187_52
.Lx187_49:              cmp              dl, 80;                              je    .Lx187_52
                        cmp              cl, 5;                               je    .Lx187_53
                        cmp              dl, 5;                               je    .Lx187_53
                        cmp              cl, 3;                               jne   .Lx187_50
                        cmp              dl, 3;                               jne   .Lx187_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx187_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx187_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx187_51
                                                                              jmp   .Lx187_52
.Lx187_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx187_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx187_53
.Lx187_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx187_54
.Lx187_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx187_54
.Lx187_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx187_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n151_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_var_ref_α
n146_call_builtin_prolog_β:
                                                                              jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n149_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
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
.Lx192_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              esi, 1;                              jne   .Lx192_55
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_55:              cmp              esi, 2;                              jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_56:              cmp              al, 72;                              jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              rax, r8;                             je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_41:              lea              r9, [rsp + 768]
.Lx192_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              esi, 1;                              jne   .Lx192_57
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_57:              cmp              esi, 2;                              jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_58:              cmp              al, 72;                              jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              rax, r9;                             je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_43:              cmp              r8, r9;                              je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx192_44
                        cmp              al, 104;                             je    .Lx192_44
                        cmp              al, 72;                              jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx192_44
                                                                              jmp   .Lx192_45
.Lx192_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx192_53
                        cmp              al, 104;                             je    .Lx192_53
                        cmp              al, 72;                              jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_53
                                                                              jmp   .Lx192_46
.Lx192_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx192_51
.Lx192_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx192_47
                        cmp              al, 104;                             je    .Lx192_47
                        cmp              al, 72;                              jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_47
                                                                              jmp   .Lx192_48
.Lx192_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx192_51
.Lx192_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx192_49
                        cmp              dl, 80;                              je    .Lx192_53
                                                                              jmp   .Lx192_52
.Lx192_49:              cmp              dl, 80;                              je    .Lx192_52
                        cmp              cl, 5;                               je    .Lx192_53
                        cmp              dl, 5;                               je    .Lx192_53
                        cmp              cl, 3;                               jne   .Lx192_50
                        cmp              dl, 3;                               jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx192_51
                                                                              jmp   .Lx192_52
.Lx192_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx192_53
.Lx192_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx192_54
.Lx192_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx192_54
.Lx192_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx192_54:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n151_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_suspend_α
n149_call_builtin_prolog_β:
                                                                              jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx194_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx194_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n150_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n150_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n150_suspend_β:                                                               jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_var_ref_α
n151_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n154_lit_integer_α
.Lx198_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n155_call_builtin_prolog_α
.Lx199_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
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
.Lx200_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx200_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_111
                        cmp              esi, 1;                              jne   .Lx200_112
                        mov              r8, rax;                             jmp   .Lx200_110
.Lx200_112:             cmp              esi, 2;                              jne   .Lx200_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx200_111
                        mov              r8, rax;                             jmp   .Lx200_110
.Lx200_113:             cmp              al, 72;                              jne   .Lx200_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_111
                        cmp              rax, r8;                             je    .Lx200_111
                        mov              r8, rax;                             jmp   .Lx200_110
.Lx200_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx200_114
                        cmp              al, 104;                             je    .Lx200_114
                        cmp              al, 72;                              jne   .Lx200_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx200_114
                                                                              jmp   .Lx200_118
.Lx200_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx200_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx200_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx200_115
                                                                              jmp   .Lx200_114
.Lx200_119:             cmp              al, 3;                               jne   .Lx200_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx200_114
                                                                              jmp   .Lx200_115
.Lx200_120:             cmp              al, 2;                               jne   .Lx200_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx200_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx200_114
                                                                              jmp   .Lx200_115
.Lx200_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx200_117
.Lx200_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx200_117
.Lx200_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx200_117:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                                                                              jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
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
.Lx207_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx207_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_61
                        cmp              esi, 1;                              jne   .Lx207_62
                        mov              r8, rax;                             jmp   .Lx207_60
.Lx207_62:              cmp              esi, 2;                              jne   .Lx207_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_61
                        mov              r8, rax;                             jmp   .Lx207_60
.Lx207_63:              cmp              al, 72;                              jne   .Lx207_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_61
                        cmp              rax, r8;                             je    .Lx207_61
                        mov              r8, rax;                             jmp   .Lx207_60
.Lx207_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx207_80
                        cmp              al, 104;                             je    .Lx207_80
                        cmp              al, 72;                              jne   .Lx207_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx207_80
                                                                              jmp   .Lx207_74
.Lx207_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx207_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx207_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx207_73
                        lea              r9, [rsp + 512]
.Lx207_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx207_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_65
                        cmp              esi, 1;                              jne   .Lx207_66
                        mov              r9, rax;                             jmp   .Lx207_64
.Lx207_66:              cmp              esi, 2;                              jne   .Lx207_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_65
                        mov              r9, rax;                             jmp   .Lx207_64
.Lx207_67:              cmp              al, 72;                              jne   .Lx207_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_65
                        cmp              rax, r9;                             je    .Lx207_65
                        mov              r9, rax;                             jmp   .Lx207_64
.Lx207_65:              lea              rcx, [rsp + 528]
.Lx207_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx207_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx207_69
                        cmp              esi, 1;                              jne   .Lx207_70
                        mov              rcx, rax;                            jmp   .Lx207_68
.Lx207_70:              cmp              esi, 2;                              jne   .Lx207_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_69
                        mov              rcx, rax;                            jmp   .Lx207_68
.Lx207_71:              cmp              al, 72;                              jne   .Lx207_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx207_69
                        cmp              rax, rcx;                            je    .Lx207_69
                        mov              rcx, rax;                            jmp   .Lx207_68
.Lx207_69:              cmp              r9, rcx;                             je    .Lx207_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx207_75
                        cmp              al, 104;                             je    .Lx207_75
                        cmp              al, 72;                              jne   .Lx207_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_75
                                                                              jmp   .Lx207_72
.Lx207_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx207_76
                        cmp              al, 104;                             je    .Lx207_76
                        cmp              al, 72;                              jne   .Lx207_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx207_76
                                                                              jmp   .Lx207_72
.Lx207_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx207_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx207_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx207_77
.Lx207_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx207_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx207_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx207_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx207_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx207_72
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
.Lx207_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx207_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_82
                        cmp              esi, 1;                              jne   .Lx207_83
                        mov              r9, rax;                             jmp   .Lx207_81
.Lx207_83:              cmp              esi, 2;                              jne   .Lx207_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_82
                        mov              r9, rax;                             jmp   .Lx207_81
.Lx207_84:              cmp              al, 72;                              jne   .Lx207_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_82
                        cmp              rax, r9;                             je    .Lx207_82
                        mov              r9, rax;                             jmp   .Lx207_81
.Lx207_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx207_85
                        cmp              al, 104;                             je    .Lx207_85
                        cmp              al, 72;                              jne   .Lx207_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_85
                                                                              jmp   .Lx207_86
.Lx207_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx207_87
.Lx207_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx207_87:              lea              rcx, [rsp + 528]
.Lx207_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx207_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx207_89
                        cmp              esi, 1;                              jne   .Lx207_90
                        mov              rcx, rax;                            jmp   .Lx207_88
.Lx207_90:              cmp              esi, 2;                              jne   .Lx207_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_89
                        mov              rcx, rax;                            jmp   .Lx207_88
.Lx207_91:              cmp              al, 72;                              jne   .Lx207_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx207_89
                        cmp              rax, rcx;                            je    .Lx207_89
                        mov              rcx, rax;                            jmp   .Lx207_88
.Lx207_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx207_92
                        cmp              al, 104;                             je    .Lx207_92
                        cmp              al, 72;                              jne   .Lx207_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx207_92
                                                                              jmp   .Lx207_93
.Lx207_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx207_94
.Lx207_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx207_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx207_77
.Lx207_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx207_77
.Lx207_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx207_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                                                                              jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
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
.Lx212_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx212_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx212_41
                        cmp              esi, 1;                              jne   .Lx212_55
                        mov              r8, rax;                             jmp   .Lx212_40
.Lx212_55:              cmp              esi, 2;                              jne   .Lx212_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx212_41
                        mov              r8, rax;                             jmp   .Lx212_40
.Lx212_56:              cmp              al, 72;                              jne   .Lx212_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx212_41
                        cmp              rax, r8;                             je    .Lx212_41
                        mov              r8, rax;                             jmp   .Lx212_40
.Lx212_41:              lea              r9, [rsp + 416]
.Lx212_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx212_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx212_43
                        cmp              esi, 1;                              jne   .Lx212_57
                        mov              r9, rax;                             jmp   .Lx212_42
.Lx212_57:              cmp              esi, 2;                              jne   .Lx212_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx212_43
                        mov              r9, rax;                             jmp   .Lx212_42
.Lx212_58:              cmp              al, 72;                              jne   .Lx212_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx212_43
                        cmp              rax, r9;                             je    .Lx212_43
                        mov              r9, rax;                             jmp   .Lx212_42
.Lx212_43:              cmp              r8, r9;                              je    .Lx212_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx212_44
                        cmp              al, 104;                             je    .Lx212_44
                        cmp              al, 72;                              jne   .Lx212_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx212_44
                                                                              jmp   .Lx212_45
.Lx212_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx212_53
                        cmp              al, 104;                             je    .Lx212_53
                        cmp              al, 72;                              jne   .Lx212_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx212_53
                                                                              jmp   .Lx212_46
.Lx212_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx212_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx212_51
.Lx212_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx212_47
                        cmp              al, 104;                             je    .Lx212_47
                        cmp              al, 72;                              jne   .Lx212_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx212_47
                                                                              jmp   .Lx212_48
.Lx212_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx212_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx212_51
.Lx212_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx212_49
                        cmp              dl, 80;                              je    .Lx212_53
                                                                              jmp   .Lx212_52
.Lx212_49:              cmp              dl, 80;                              je    .Lx212_52
                        cmp              cl, 5;                               je    .Lx212_53
                        cmp              dl, 5;                               je    .Lx212_53
                        cmp              cl, 3;                               jne   .Lx212_50
                        cmp              dl, 3;                               jne   .Lx212_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx212_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx212_51
                                                                              jmp   .Lx212_52
.Lx212_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx212_53
.Lx212_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx212_54
.Lx212_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx212_54
.Lx212_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx212_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_var_ref_α
n162_call_builtin_prolog_β:
                                                                              jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
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
.Lx219_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx219_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_61
                        cmp              esi, 1;                              jne   .Lx219_62
                        mov              r8, rax;                             jmp   .Lx219_60
.Lx219_62:              cmp              esi, 2;                              jne   .Lx219_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_61
                        mov              r8, rax;                             jmp   .Lx219_60
.Lx219_63:              cmp              al, 72;                              jne   .Lx219_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_61
                        cmp              rax, r8;                             je    .Lx219_61
                        mov              r8, rax;                             jmp   .Lx219_60
.Lx219_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx219_80
                        cmp              al, 104;                             je    .Lx219_80
                        cmp              al, 72;                              jne   .Lx219_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx219_80
                                                                              jmp   .Lx219_74
.Lx219_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx219_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx219_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx219_73
                        lea              r9, [rsp + 320]
.Lx219_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx219_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_65
                        cmp              esi, 1;                              jne   .Lx219_66
                        mov              r9, rax;                             jmp   .Lx219_64
.Lx219_66:              cmp              esi, 2;                              jne   .Lx219_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_65
                        mov              r9, rax;                             jmp   .Lx219_64
.Lx219_67:              cmp              al, 72;                              jne   .Lx219_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_65
                        cmp              rax, r9;                             je    .Lx219_65
                        mov              r9, rax;                             jmp   .Lx219_64
.Lx219_65:              lea              rcx, [rsp + 336]
.Lx219_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx219_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx219_69
                        cmp              esi, 1;                              jne   .Lx219_70
                        mov              rcx, rax;                            jmp   .Lx219_68
.Lx219_70:              cmp              esi, 2;                              jne   .Lx219_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_69
                        mov              rcx, rax;                            jmp   .Lx219_68
.Lx219_71:              cmp              al, 72;                              jne   .Lx219_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx219_69
                        cmp              rax, rcx;                            je    .Lx219_69
                        mov              rcx, rax;                            jmp   .Lx219_68
.Lx219_69:              cmp              r9, rcx;                             je    .Lx219_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx219_75
                        cmp              al, 104;                             je    .Lx219_75
                        cmp              al, 72;                              jne   .Lx219_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_75
                                                                              jmp   .Lx219_72
.Lx219_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx219_76
                        cmp              al, 104;                             je    .Lx219_76
                        cmp              al, 72;                              jne   .Lx219_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx219_76
                                                                              jmp   .Lx219_72
.Lx219_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx219_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx219_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx219_77
.Lx219_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx219_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx219_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx219_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx219_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx219_72
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
.Lx219_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx219_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_82
                        cmp              esi, 1;                              jne   .Lx219_83
                        mov              r9, rax;                             jmp   .Lx219_81
.Lx219_83:              cmp              esi, 2;                              jne   .Lx219_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_82
                        mov              r9, rax;                             jmp   .Lx219_81
.Lx219_84:              cmp              al, 72;                              jne   .Lx219_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_82
                        cmp              rax, r9;                             je    .Lx219_82
                        mov              r9, rax;                             jmp   .Lx219_81
.Lx219_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx219_85
                        cmp              al, 104;                             je    .Lx219_85
                        cmp              al, 72;                              jne   .Lx219_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_85
                                                                              jmp   .Lx219_86
.Lx219_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx219_87
.Lx219_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx219_87:              lea              rcx, [rsp + 336]
.Lx219_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx219_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx219_89
                        cmp              esi, 1;                              jne   .Lx219_90
                        mov              rcx, rax;                            jmp   .Lx219_88
.Lx219_90:              cmp              esi, 2;                              jne   .Lx219_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_89
                        mov              rcx, rax;                            jmp   .Lx219_88
.Lx219_91:              cmp              al, 72;                              jne   .Lx219_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx219_89
                        cmp              rax, rcx;                            je    .Lx219_89
                        mov              rcx, rax;                            jmp   .Lx219_88
.Lx219_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx219_92
                        cmp              al, 104;                             je    .Lx219_92
                        cmp              al, 72;                              jne   .Lx219_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx219_92
                                                                              jmp   .Lx219_93
.Lx219_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx219_94
.Lx219_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx219_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx219_77
.Lx219_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx219_77
.Lx219_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx219_77:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_var_ref_α
n166_call_builtin_prolog_β:
                                                                              jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n170_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx227_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx227_21
.Lx227_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx227_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx227_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx227_23
.Lx227_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx227_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx227_24
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx227_25
.Lx227_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx227_25:              lea              rax, [rip + .Lx227_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx227_1
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4];               jmp   rax
.Lx227_3:               mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx227_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx227_2
.Lx227_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx227_2
.Lx227_4:               mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx227_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx227_2
.Lx227_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx227_2
.Lx227_1:               call             rt_faildescr@PLT
.Lx227_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx227_29
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
.Lx227_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                                                                              jmp   n171_suspend_α
n170_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n172_call_builtin_prolog_α
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
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n172_call_builtin_prolog_α
                        lea              r11, [rip + .Lx227_7]
                        push             r11
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4];               jmp   rax
.Lx227_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n172_call_builtin_prolog_α
                                                                              jmp   n171_suspend_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n171_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx229_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx229_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n171_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n171_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n171_suspend_β:                                                               jmp   n170_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
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
n172_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_β:
                                                                              jmp   n150_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx230_50
                        mov              qword ptr [rsp + 1088], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx230_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1200]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F2:
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F2_α_body:
                        lea              rax, [rip + n241_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx254_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx254_101
.Lx254_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx254_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx254_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx254_101
.Lx254_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx254_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n234_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lx259_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx259_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx259_41
                        cmp              esi, 1;                              jne   .Lx259_55
                        mov              r8, rax;                             jmp   .Lx259_40
.Lx259_55:              cmp              esi, 2;                              jne   .Lx259_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx259_41
                        mov              r8, rax;                             jmp   .Lx259_40
.Lx259_56:              cmp              al, 72;                              jne   .Lx259_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx259_41
                        cmp              rax, r8;                             je    .Lx259_41
                        mov              r8, rax;                             jmp   .Lx259_40
.Lx259_41:              lea              r9, [rsp + 608]
.Lx259_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx259_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx259_43
                        cmp              esi, 1;                              jne   .Lx259_57
                        mov              r9, rax;                             jmp   .Lx259_42
.Lx259_57:              cmp              esi, 2;                              jne   .Lx259_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx259_43
                        mov              r9, rax;                             jmp   .Lx259_42
.Lx259_58:              cmp              al, 72;                              jne   .Lx259_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx259_43
                        cmp              rax, r9;                             je    .Lx259_43
                        mov              r9, rax;                             jmp   .Lx259_42
.Lx259_43:              cmp              r8, r9;                              je    .Lx259_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx259_44
                        cmp              al, 104;                             je    .Lx259_44
                        cmp              al, 72;                              jne   .Lx259_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx259_44
                                                                              jmp   .Lx259_45
.Lx259_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx259_53
                        cmp              al, 104;                             je    .Lx259_53
                        cmp              al, 72;                              jne   .Lx259_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx259_53
                                                                              jmp   .Lx259_46
.Lx259_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx259_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx259_51
.Lx259_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx259_47
                        cmp              al, 104;                             je    .Lx259_47
                        cmp              al, 72;                              jne   .Lx259_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx259_47
                                                                              jmp   .Lx259_48
.Lx259_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx259_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx259_51
.Lx259_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx259_49
                        cmp              dl, 80;                              je    .Lx259_53
                                                                              jmp   .Lx259_52
.Lx259_49:              cmp              dl, 80;                              je    .Lx259_52
                        cmp              cl, 5;                               je    .Lx259_53
                        cmp              dl, 5;                               je    .Lx259_53
                        cmp              cl, 3;                               jne   .Lx259_50
                        cmp              dl, 3;                               jne   .Lx259_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx259_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx259_51
                                                                              jmp   .Lx259_52
.Lx259_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx259_53
.Lx259_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx259_54
.Lx259_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx259_54
.Lx259_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx259_54:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                                                                              jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n237_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        lea              r8, [rsp + 512]
.Lx264_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx264_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx264_41
                        cmp              esi, 1;                              jne   .Lx264_55
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_55:              cmp              esi, 2;                              jne   .Lx264_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx264_41
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_56:              cmp              al, 72;                              jne   .Lx264_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx264_41
                        cmp              rax, r8;                             je    .Lx264_41
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_41:              lea              r9, [rsp + 528]
.Lx264_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx264_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx264_43
                        cmp              esi, 1;                              jne   .Lx264_57
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_57:              cmp              esi, 2;                              jne   .Lx264_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx264_43
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_58:              cmp              al, 72;                              jne   .Lx264_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx264_43
                        cmp              rax, r9;                             je    .Lx264_43
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_43:              cmp              r8, r9;                              je    .Lx264_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx264_44
                        cmp              al, 104;                             je    .Lx264_44
                        cmp              al, 72;                              jne   .Lx264_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx264_44
                                                                              jmp   .Lx264_45
.Lx264_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx264_53
                        cmp              al, 104;                             je    .Lx264_53
                        cmp              al, 72;                              jne   .Lx264_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx264_53
                                                                              jmp   .Lx264_46
.Lx264_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx264_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx264_51
.Lx264_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx264_47
                        cmp              al, 104;                             je    .Lx264_47
                        cmp              al, 72;                              jne   .Lx264_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx264_47
                                                                              jmp   .Lx264_48
.Lx264_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx264_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx264_51
.Lx264_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx264_49
                        cmp              dl, 80;                              je    .Lx264_53
                                                                              jmp   .Lx264_52
.Lx264_49:              cmp              dl, 80;                              je    .Lx264_52
                        cmp              cl, 5;                               je    .Lx264_53
                        cmp              dl, 5;                               je    .Lx264_53
                        cmp              cl, 3;                               jne   .Lx264_50
                        cmp              dl, 3;                               jne   .Lx264_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx264_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx264_51
                                                                              jmp   .Lx264_52
.Lx264_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx264_53
.Lx264_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx264_54
.Lx264_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx264_54
.Lx264_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx264_54:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n238_var_ref_α
n237_call_builtin_prolog_β:
                                                                              jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n240_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx270_20
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx270_21
.Lx270_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx270_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx270_22
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx270_23
.Lx270_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx270_23:              mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx270_1
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx270_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx270_3]
                        push             rcx
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4];               jmp   rax
.Lx270_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx270_2
.Lx270_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx270_2
.Lx270_1:               call             rt_faildescr@PLT
.Lx270_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx270_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx270_29:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n242_call_builtin_prolog_α
                                                                              jmp   n241_suspend_α
n240_call_proc_staged_β:
                                                                              jmp   n242_call_builtin_prolog_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "bb_get/2"
#-----------------------------------------------------------------------------------------------------------------------
n241_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx272_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx272_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n241_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n241_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F2_γ
n241_suspend_β:                                                               jmp   n240_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
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
.Lx278_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx278_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx278_41
                        cmp              esi, 1;                              jne   .Lx278_55
                        mov              r8, rax;                             jmp   .Lx278_40
.Lx278_55:              cmp              esi, 2;                              jne   .Lx278_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx278_41
                        mov              r8, rax;                             jmp   .Lx278_40
.Lx278_56:              cmp              al, 72;                              jne   .Lx278_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx278_41
                        cmp              rax, r8;                             je    .Lx278_41
                        mov              r8, rax;                             jmp   .Lx278_40
.Lx278_41:              lea              r9, [rsp + 320]
.Lx278_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx278_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx278_43
                        cmp              esi, 1;                              jne   .Lx278_57
                        mov              r9, rax;                             jmp   .Lx278_42
.Lx278_57:              cmp              esi, 2;                              jne   .Lx278_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx278_43
                        mov              r9, rax;                             jmp   .Lx278_42
.Lx278_58:              cmp              al, 72;                              jne   .Lx278_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx278_43
                        cmp              rax, r9;                             je    .Lx278_43
                        mov              r9, rax;                             jmp   .Lx278_42
.Lx278_43:              cmp              r8, r9;                              je    .Lx278_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx278_44
                        cmp              al, 104;                             je    .Lx278_44
                        cmp              al, 72;                              jne   .Lx278_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx278_44
                                                                              jmp   .Lx278_45
.Lx278_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx278_53
                        cmp              al, 104;                             je    .Lx278_53
                        cmp              al, 72;                              jne   .Lx278_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx278_53
                                                                              jmp   .Lx278_46
.Lx278_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx278_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx278_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx278_51
.Lx278_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx278_47
                        cmp              al, 104;                             je    .Lx278_47
                        cmp              al, 72;                              jne   .Lx278_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx278_47
                                                                              jmp   .Lx278_48
.Lx278_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx278_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx278_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx278_51
.Lx278_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx278_49
                        cmp              dl, 80;                              je    .Lx278_53
                                                                              jmp   .Lx278_52
.Lx278_49:              cmp              dl, 80;                              je    .Lx278_52
                        cmp              cl, 5;                               je    .Lx278_53
                        cmp              dl, 5;                               je    .Lx278_53
                        cmp              cl, 3;                               jne   .Lx278_50
                        cmp              dl, 3;                               jne   .Lx278_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx278_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx278_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx278_51
                                                                              jmp   .Lx278_52
.Lx278_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx278_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx278_53
.Lx278_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx278_54
.Lx278_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx278_54
.Lx278_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx278_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n246_var_ref_α
n245_call_builtin_prolog_β:
                                                                              jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n247_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
.Lx283_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx283_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx283_41
                        cmp              esi, 1;                              jne   .Lx283_55
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_55:              cmp              esi, 2;                              jne   .Lx283_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx283_41
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_56:              cmp              al, 72;                              jne   .Lx283_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx283_41
                        cmp              rax, r8;                             je    .Lx283_41
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_41:              lea              r9, [rsp + 240]
.Lx283_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx283_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx283_43
                        cmp              esi, 1;                              jne   .Lx283_57
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_57:              cmp              esi, 2;                              jne   .Lx283_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx283_43
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_58:              cmp              al, 72;                              jne   .Lx283_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx283_43
                        cmp              rax, r9;                             je    .Lx283_43
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_43:              cmp              r8, r9;                              je    .Lx283_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx283_44
                        cmp              al, 104;                             je    .Lx283_44
                        cmp              al, 72;                              jne   .Lx283_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx283_44
                                                                              jmp   .Lx283_45
.Lx283_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx283_53
                        cmp              al, 104;                             je    .Lx283_53
                        cmp              al, 72;                              jne   .Lx283_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx283_53
                                                                              jmp   .Lx283_46
.Lx283_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx283_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx283_51
.Lx283_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx283_47
                        cmp              al, 104;                             je    .Lx283_47
                        cmp              al, 72;                              jne   .Lx283_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx283_47
                                                                              jmp   .Lx283_48
.Lx283_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx283_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx283_51
.Lx283_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx283_49
                        cmp              dl, 80;                              je    .Lx283_53
                                                                              jmp   .Lx283_52
.Lx283_49:              cmp              dl, 80;                              je    .Lx283_52
                        cmp              cl, 5;                               je    .Lx283_53
                        cmp              dl, 5;                               je    .Lx283_53
                        cmp              cl, 3;                               jne   .Lx283_50
                        cmp              dl, 3;                               jne   .Lx283_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx283_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx283_51
                                                                              jmp   .Lx283_52
.Lx283_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx283_53
.Lx283_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx283_54
.Lx283_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx283_54
.Lx283_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx283_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                                                                              jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n251_call_builtin_prolog_α
.Lx286_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n252_suspend_α
n251_call_builtin_prolog_β:
                                                                              jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx289_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx289_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n252_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n252_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F2_γ
n252_suspend_β:                                                               jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj0$2F2_ω
n253_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_β:
                                                                              jmp   n241_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx290_50
                        mov              qword ptr [rsp + 656], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx290_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 728]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_ω:
                        mov              rcx, qword ptr [rsp + 736]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__argument_list$2F1:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
argument_list$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx298_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx298_101
.Lx298_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx298_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx298_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx298_101
.Lx298_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx298_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    argument_list$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                                                                              jmp   argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n294_call_builtin_prolog_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx302_2];     jmp   .Lx302_3
.Lx302_2:               .quad            .Lx302_2_s
.Lx302_2_s:             .string          "[]"
.Lx302_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n297_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n295_move_label_α
n294_call_builtin_prolog_β:
                                                                              jmp   n297_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_move_label_α:      lea              rax, [rip + n297_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   argument_list$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n296_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    argument_list$2F1_ω
                                                                              jmp   rax
n296_disjunction_β:                                                           jmp   argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    argument_list$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   argument_list$2F1_ω
n297_call_builtin_prolog_β:
                                                                              jmp   argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
argument_list$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
argument_list$2F1_β:
                                                                              jmp   n296_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
argument_list$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
argument_list$2F1_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
argument_list$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx308_2]
                        lea              rdx, [rip + .Lx308_3];               jmp   FN__argument_list$2F1
.Lx308_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx308_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__reverse1$2F3:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
reverse1$2F3_α_body:
                        lea              rax, [rip + n323_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx348_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx348_101
.Lx348_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx348_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx348_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx348_101
.Lx348_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx348_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    reverse1$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n310_var_ref_α
n309_call_builtin_prolog_β:
                                                                              jmp   reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:     mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n312_lit_string_α
.Lx351_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n313_call_builtin_prolog_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.Lx353_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx353_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_111
                        cmp              esi, 1;                              jne   .Lx353_112
                        mov              r8, rax;                             jmp   .Lx353_110
.Lx353_112:             cmp              esi, 2;                              jne   .Lx353_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx353_111
                        mov              r8, rax;                             jmp   .Lx353_110
.Lx353_113:             cmp              al, 72;                              jne   .Lx353_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_111
                        cmp              rax, r8;                             je    .Lx353_111
                        mov              r8, rax;                             jmp   .Lx353_110
.Lx353_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx353_114
                        cmp              al, 104;                             je    .Lx353_114
                        cmp              al, 72;                              jne   .Lx353_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx353_114
                                                                              jmp   .Lx353_118
.Lx353_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx353_115
                        cmp              al, 3;                               je    .Lx353_114
                        cmp              al, 2;                               jne   .Lx353_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx353_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx353_114
                                                                              jmp   .Lx353_116
.Lx353_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx353_117
.Lx353_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx353_117
.Lx353_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx353_117:             mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n325_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n314_var_ref_α
n313_call_builtin_prolog_β:
                                                                              jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n316_call_builtin_prolog_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              rsi, qword ptr [rip + .Lx357_2];     jmp   .Lx357_3
.Lx357_2:               .quad            .Lx357_2_s
.Lx357_2_s:             .string          "[]"
.Lx357_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n324_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_var_ref_α
n316_call_builtin_prolog_β:
                                                                              jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        lea              r8, [rsp + 912]
.Lx362_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx362_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx362_41
                        cmp              esi, 1;                              jne   .Lx362_55
                        mov              r8, rax;                             jmp   .Lx362_40
.Lx362_55:              cmp              esi, 2;                              jne   .Lx362_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx362_41
                        mov              r8, rax;                             jmp   .Lx362_40
.Lx362_56:              cmp              al, 72;                              jne   .Lx362_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx362_41
                        cmp              rax, r8;                             je    .Lx362_41
                        mov              r8, rax;                             jmp   .Lx362_40
.Lx362_41:              lea              r9, [rsp + 928]
.Lx362_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx362_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx362_43
                        cmp              esi, 1;                              jne   .Lx362_57
                        mov              r9, rax;                             jmp   .Lx362_42
.Lx362_57:              cmp              esi, 2;                              jne   .Lx362_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx362_43
                        mov              r9, rax;                             jmp   .Lx362_42
.Lx362_58:              cmp              al, 72;                              jne   .Lx362_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx362_43
                        cmp              rax, r9;                             je    .Lx362_43
                        mov              r9, rax;                             jmp   .Lx362_42
.Lx362_43:              cmp              r8, r9;                              je    .Lx362_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx362_44
                        cmp              al, 104;                             je    .Lx362_44
                        cmp              al, 72;                              jne   .Lx362_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx362_44
                                                                              jmp   .Lx362_45
.Lx362_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx362_53
                        cmp              al, 104;                             je    .Lx362_53
                        cmp              al, 72;                              jne   .Lx362_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx362_53
                                                                              jmp   .Lx362_46
.Lx362_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx362_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx362_51
.Lx362_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx362_47
                        cmp              al, 104;                             je    .Lx362_47
                        cmp              al, 72;                              jne   .Lx362_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx362_47
                                                                              jmp   .Lx362_48
.Lx362_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx362_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx362_51
.Lx362_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx362_49
                        cmp              dl, 80;                              je    .Lx362_53
                                                                              jmp   .Lx362_52
.Lx362_49:              cmp              dl, 80;                              je    .Lx362_52
                        cmp              cl, 5;                               je    .Lx362_53
                        cmp              dl, 5;                               je    .Lx362_53
                        cmp              cl, 3;                               jne   .Lx362_50
                        cmp              dl, 3;                               jne   .Lx362_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx362_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx362_51
                                                                              jmp   .Lx362_52
.Lx362_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx362_53
.Lx362_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx362_54
.Lx362_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx362_54
.Lx362_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx362_54:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n324_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_var_ref_α
n319_call_builtin_prolog_β:
                                                                              jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n322_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
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
.Lx367_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              esi, 1;                              jne   .Lx367_55
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_55:              cmp              esi, 2;                              jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_56:              cmp              al, 72;                              jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              rax, r8;                             je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_41:              lea              r9, [rsp + 848]
.Lx367_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              esi, 1;                              jne   .Lx367_57
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_57:              cmp              esi, 2;                              jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_58:              cmp              al, 72;                              jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              rax, r9;                             je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_43:              cmp              r8, r9;                              je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx367_44
                        cmp              al, 104;                             je    .Lx367_44
                        cmp              al, 72;                              jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx367_44
                                                                              jmp   .Lx367_45
.Lx367_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_53
                        cmp              al, 104;                             je    .Lx367_53
                        cmp              al, 72;                              jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_53
                                                                              jmp   .Lx367_46
.Lx367_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx367_51
.Lx367_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_47
                        cmp              al, 104;                             je    .Lx367_47
                        cmp              al, 72;                              jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_47
                                                                              jmp   .Lx367_48
.Lx367_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx367_51
.Lx367_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx367_49
                        cmp              dl, 80;                              je    .Lx367_53
                                                                              jmp   .Lx367_52
.Lx367_49:              cmp              dl, 80;                              je    .Lx367_52
                        cmp              cl, 5;                               je    .Lx367_53
                        cmp              dl, 5;                               je    .Lx367_53
                        cmp              cl, 3;                               jne   .Lx367_50
                        cmp              dl, 3;                               jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx367_51
                                                                              jmp   .Lx367_52
.Lx367_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx367_53
.Lx367_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx367_54
.Lx367_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx367_54
.Lx367_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx367_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n324_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n323_suspend_α
n322_call_builtin_prolog_β:
                                                                              jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx369_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.Lx369_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n323_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n323_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse1$2F3_γ
n323_suspend_β:                                                               jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    reverse1$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n325_var_ref_α
n324_call_builtin_prolog_β:
                                                                              jmp   reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n326_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n327_lit_integer_α
.Lx373_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n328_call_builtin_prolog_α
.Lx374_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
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
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lx375_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx375_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx375_111
                        cmp              esi, 1;                              jne   .Lx375_112
                        mov              r8, rax;                             jmp   .Lx375_110
.Lx375_112:             cmp              esi, 2;                              jne   .Lx375_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx375_111
                        mov              r8, rax;                             jmp   .Lx375_110
.Lx375_113:             cmp              al, 72;                              jne   .Lx375_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx375_111
                        cmp              rax, r8;                             je    .Lx375_111
                        mov              r8, rax;                             jmp   .Lx375_110
.Lx375_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx375_114
                        cmp              al, 104;                             je    .Lx375_114
                        cmp              al, 72;                              jne   .Lx375_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx375_114
                                                                              jmp   .Lx375_118
.Lx375_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx375_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx375_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx375_115
                                                                              jmp   .Lx375_114
.Lx375_119:             cmp              al, 3;                               jne   .Lx375_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx375_114
                                                                              jmp   .Lx375_115
.Lx375_120:             cmp              al, 2;                               jne   .Lx375_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx375_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx375_114
                                                                              jmp   .Lx375_115
.Lx375_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx375_117
.Lx375_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx375_117
.Lx375_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx375_117:             mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                                                                              jmp   n347_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.Lx382_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx382_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_61
                        cmp              esi, 1;                              jne   .Lx382_62
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_62:              cmp              esi, 2;                              jne   .Lx382_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_61
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_63:              cmp              al, 72;                              jne   .Lx382_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_61
                        cmp              rax, r8;                             je    .Lx382_61
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx382_80
                        cmp              al, 104;                             je    .Lx382_80
                        cmp              al, 72;                              jne   .Lx382_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx382_80
                                                                              jmp   .Lx382_74
.Lx382_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx382_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx382_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx382_73
                        lea              r9, [rsp + 592]
.Lx382_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx382_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_65
                        cmp              esi, 1;                              jne   .Lx382_66
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_66:              cmp              esi, 2;                              jne   .Lx382_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_65
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_67:              cmp              al, 72;                              jne   .Lx382_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_65
                        cmp              rax, r9;                             je    .Lx382_65
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_65:              lea              rcx, [rsp + 608]
.Lx382_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx382_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_69
                        cmp              esi, 1;                              jne   .Lx382_70
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_70:              cmp              esi, 2;                              jne   .Lx382_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_69
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_71:              cmp              al, 72;                              jne   .Lx382_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_69
                        cmp              rax, rcx;                            je    .Lx382_69
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_69:              cmp              r9, rcx;                             je    .Lx382_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_75
                        cmp              al, 104;                             je    .Lx382_75
                        cmp              al, 72;                              jne   .Lx382_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_75
                                                                              jmp   .Lx382_72
.Lx382_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx382_76
                        cmp              al, 104;                             je    .Lx382_76
                        cmp              al, 72;                              jne   .Lx382_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx382_76
                                                                              jmp   .Lx382_72
.Lx382_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx382_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx382_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx382_77
.Lx382_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx382_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx382_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx382_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx382_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx382_72
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
                        lea              r9, [rsp + 592]
.Lx382_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx382_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_82
                        cmp              esi, 1;                              jne   .Lx382_83
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_83:              cmp              esi, 2;                              jne   .Lx382_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_82
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_84:              cmp              al, 72;                              jne   .Lx382_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_82
                        cmp              rax, r9;                             je    .Lx382_82
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_85
                        cmp              al, 104;                             je    .Lx382_85
                        cmp              al, 72;                              jne   .Lx382_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_85
                                                                              jmp   .Lx382_86
.Lx382_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx382_87
.Lx382_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx382_87:              lea              rcx, [rsp + 608]
.Lx382_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx382_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_89
                        cmp              esi, 1;                              jne   .Lx382_90
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_90:              cmp              esi, 2;                              jne   .Lx382_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_89
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_91:              cmp              al, 72;                              jne   .Lx382_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_89
                        cmp              rax, rcx;                            je    .Lx382_89
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx382_92
                        cmp              al, 104;                             je    .Lx382_92
                        cmp              al, 72;                              jne   .Lx382_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx382_92
                                                                              jmp   .Lx382_93
.Lx382_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx382_94
.Lx382_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx382_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx382_77
.Lx382_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx382_77
.Lx382_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx382_77:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n333_var_ref_α
n332_call_builtin_prolog_β:
                                                                              jmp   n347_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n334_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n335_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_prolog_α:
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
.Lx387_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              esi, 1;                              jne   .Lx387_55
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_55:              cmp              esi, 2;                              jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_56:              cmp              al, 72;                              jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              rax, r8;                             je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_41:              lea              r9, [rsp + 496]
.Lx387_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              esi, 1;                              jne   .Lx387_57
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_57:              cmp              esi, 2;                              jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_58:              cmp              al, 72;                              jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              rax, r9;                             je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_43:              cmp              r8, r9;                              je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx387_44
                        cmp              al, 104;                             je    .Lx387_44
                        cmp              al, 72;                              jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx387_44
                                                                              jmp   .Lx387_45
.Lx387_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_53
                        cmp              al, 104;                             je    .Lx387_53
                        cmp              al, 72;                              jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_53
                                                                              jmp   .Lx387_46
.Lx387_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx387_51
.Lx387_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_47
                        cmp              al, 104;                             je    .Lx387_47
                        cmp              al, 72;                              jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_47
                                                                              jmp   .Lx387_48
.Lx387_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx387_51
.Lx387_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx387_49
                        cmp              dl, 80;                              je    .Lx387_53
                                                                              jmp   .Lx387_52
.Lx387_49:              cmp              dl, 80;                              je    .Lx387_52
                        cmp              cl, 5;                               je    .Lx387_53
                        cmp              dl, 5;                               je    .Lx387_53
                        cmp              cl, 3;                               jne   .Lx387_50
                        cmp              dl, 3;                               jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx387_51
                                                                              jmp   .Lx387_52
.Lx387_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx387_53
.Lx387_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx387_54
.Lx387_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx387_54
.Lx387_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx387_54:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n336_var_ref_α
n335_call_builtin_prolog_β:
                                                                              jmp   n347_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n337_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
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
.Lx392_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx392_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx392_41
                        cmp              esi, 1;                              jne   .Lx392_55
                        mov              r8, rax;                             jmp   .Lx392_40
.Lx392_55:              cmp              esi, 2;                              jne   .Lx392_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx392_41
                        mov              r8, rax;                             jmp   .Lx392_40
.Lx392_56:              cmp              al, 72;                              jne   .Lx392_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx392_41
                        cmp              rax, r8;                             je    .Lx392_41
                        mov              r8, rax;                             jmp   .Lx392_40
.Lx392_41:              lea              r9, [rsp + 416]
.Lx392_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx392_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx392_43
                        cmp              esi, 1;                              jne   .Lx392_57
                        mov              r9, rax;                             jmp   .Lx392_42
.Lx392_57:              cmp              esi, 2;                              jne   .Lx392_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx392_43
                        mov              r9, rax;                             jmp   .Lx392_42
.Lx392_58:              cmp              al, 72;                              jne   .Lx392_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx392_43
                        cmp              rax, r9;                             je    .Lx392_43
                        mov              r9, rax;                             jmp   .Lx392_42
.Lx392_43:              cmp              r8, r9;                              je    .Lx392_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx392_44
                        cmp              al, 104;                             je    .Lx392_44
                        cmp              al, 72;                              jne   .Lx392_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx392_44
                                                                              jmp   .Lx392_45
.Lx392_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx392_53
                        cmp              al, 104;                             je    .Lx392_53
                        cmp              al, 72;                              jne   .Lx392_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx392_53
                                                                              jmp   .Lx392_46
.Lx392_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx392_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx392_51
.Lx392_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx392_47
                        cmp              al, 104;                             je    .Lx392_47
                        cmp              al, 72;                              jne   .Lx392_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx392_47
                                                                              jmp   .Lx392_48
.Lx392_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx392_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx392_51
.Lx392_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx392_49
                        cmp              dl, 80;                              je    .Lx392_53
                                                                              jmp   .Lx392_52
.Lx392_49:              cmp              dl, 80;                              je    .Lx392_52
                        cmp              cl, 5;                               je    .Lx392_53
                        cmp              dl, 5;                               je    .Lx392_53
                        cmp              cl, 3;                               jne   .Lx392_50
                        cmp              dl, 3;                               jne   .Lx392_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx392_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx392_51
                                                                              jmp   .Lx392_52
.Lx392_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx392_53
.Lx392_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx392_54
.Lx392_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx392_54
.Lx392_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx392_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n339_var_ref_α
n338_call_builtin_prolog_β:
                                                                              jmp   n347_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n342_var_ref_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n343_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n344_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 280]
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
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n345_call_proc_staged_α
n344_call_builtin_prolog_β:
                                                                              jmp   n347_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx404_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx404_21
.Lx404_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx404_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx404_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx404_23
.Lx404_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx404_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx404_24
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx404_25
.Lx404_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx404_25:              lea              rax, [rip + .Lx404_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4];               jmp   rax
.Lx404_3:               mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx404_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx404_2
.Lx404_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx404_2
.Lx404_4:               mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx404_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx404_2
.Lx404_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx404_2
.Lx404_1:               call             rt_faildescr@PLT
.Lx404_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx404_29
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
.Lx404_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                                                                              jmp   n346_suspend_α
n345_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n347_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1168
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
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n347_call_builtin_prolog_α
                        lea              r11, [rip + .Lx404_7]
                        push             r11
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4];               jmp   rax
.Lx404_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n347_call_builtin_prolog_α
                                                                              jmp   n346_suspend_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n346_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx406_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.Lx406_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n346_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n346_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse1$2F3_γ
n346_suspend_β:                                                               jmp   n345_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    reverse1$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   reverse1$2F3_ω
n347_call_builtin_prolog_β:
                                                                              jmp   reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
reverse1$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reverse1$2F3_β:
                                                                              jmp   n323_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
reverse1$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx407_50
                        mov              qword ptr [rsp + 1168], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.Lx407_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reverse1$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__prolog_name$2F1:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
prolog_name$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx415_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx415_101
.Lx415_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx415_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx415_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx415_101
.Lx415_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx415_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    prolog_name$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n409_var_ref_α
n408_call_builtin_prolog_β:
                                                                              jmp   prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 10
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n411_call_builtin_prolog_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "YAP Prolog"
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx419_2];     jmp   .Lx419_3
.Lx419_2:               .quad            .Lx419_2_s
.Lx419_2_s:             .string          "YAP Prolog"
.Lx419_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n414_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n412_move_label_α
n411_call_builtin_prolog_β:
                                                                              jmp   n414_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n412_move_label_α:      lea              rax, [rip + n414_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   prolog_name$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n413_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    prolog_name$2F1_ω
                                                                              jmp   rax
n413_disjunction_β:                                                           jmp   prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    prolog_name$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   prolog_name$2F1_ω
n414_call_builtin_prolog_β:
                                                                              jmp   prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
prolog_name$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
prolog_name$2F1_β:
                                                                              jmp   n413_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
prolog_name$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_name$2F1_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_name$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx425_2]
                        lea              rdx, [rip + .Lx425_3];               jmp   FN__prolog_name$2F1
.Lx425_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx425_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__prolog_date$2F1:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
prolog_date$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx433_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx433_101
.Lx433_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx433_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx433_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx433_101
.Lx433_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx433_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    prolog_date$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n427_var_ref_α
n426_call_builtin_prolog_β:
                                                                              jmp   prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 4
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n429_call_builtin_prolog_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "2000"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx437_2];     jmp   .Lx437_3
.Lx437_2:               .quad            .Lx437_2_s
.Lx437_2_s:             .string          "2000"
.Lx437_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n432_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n430_move_label_α
n429_call_builtin_prolog_β:
                                                                              jmp   n432_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n430_move_label_α:      lea              rax, [rip + n432_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   prolog_date$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n431_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    prolog_date$2F1_ω
                                                                              jmp   rax
n431_disjunction_β:                                                           jmp   prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    prolog_date$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   prolog_date$2F1_ω
n432_call_builtin_prolog_β:
                                                                              jmp   prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
prolog_date$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
prolog_date$2F1_β:
                                                                              jmp   n431_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
prolog_date$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_date$2F1_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
prolog_date$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx443_2]
                        lea              rdx, [rip + .Lx443_3];               jmp   FN__prolog_date$2F1
.Lx443_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx443_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__g_assign$2F2:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
g_assign$2F2_α_body:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx456_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx456_101
.Lx456_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx456_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx456_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx456_101
.Lx456_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx456_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    g_assign$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n445_var_ref_α
n444_call_builtin_prolog_β:
                                                                              jmp   g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n446_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n447_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
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
.Lx461_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx461_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx461_41
                        cmp              esi, 1;                              jne   .Lx461_55
                        mov              r8, rax;                             jmp   .Lx461_40
.Lx461_55:              cmp              esi, 2;                              jne   .Lx461_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx461_41
                        mov              r8, rax;                             jmp   .Lx461_40
.Lx461_56:              cmp              al, 72;                              jne   .Lx461_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx461_41
                        cmp              rax, r8;                             je    .Lx461_41
                        mov              r8, rax;                             jmp   .Lx461_40
.Lx461_41:              lea              r9, [rsp + 320]
.Lx461_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx461_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx461_43
                        cmp              esi, 1;                              jne   .Lx461_57
                        mov              r9, rax;                             jmp   .Lx461_42
.Lx461_57:              cmp              esi, 2;                              jne   .Lx461_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx461_43
                        mov              r9, rax;                             jmp   .Lx461_42
.Lx461_58:              cmp              al, 72;                              jne   .Lx461_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx461_43
                        cmp              rax, r9;                             je    .Lx461_43
                        mov              r9, rax;                             jmp   .Lx461_42
.Lx461_43:              cmp              r8, r9;                              je    .Lx461_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx461_44
                        cmp              al, 104;                             je    .Lx461_44
                        cmp              al, 72;                              jne   .Lx461_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx461_44
                                                                              jmp   .Lx461_45
.Lx461_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx461_53
                        cmp              al, 104;                             je    .Lx461_53
                        cmp              al, 72;                              jne   .Lx461_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx461_53
                                                                              jmp   .Lx461_46
.Lx461_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx461_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx461_51
.Lx461_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx461_47
                        cmp              al, 104;                             je    .Lx461_47
                        cmp              al, 72;                              jne   .Lx461_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx461_47
                                                                              jmp   .Lx461_48
.Lx461_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx461_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx461_51
.Lx461_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx461_49
                        cmp              dl, 80;                              je    .Lx461_53
                                                                              jmp   .Lx461_52
.Lx461_49:              cmp              dl, 80;                              je    .Lx461_52
                        cmp              cl, 5;                               je    .Lx461_53
                        cmp              dl, 5;                               je    .Lx461_53
                        cmp              cl, 3;                               jne   .Lx461_50
                        cmp              dl, 3;                               jne   .Lx461_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx461_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx461_51
                                                                              jmp   .Lx461_52
.Lx461_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx461_53
.Lx461_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx461_54
.Lx461_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx461_54
.Lx461_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx461_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n455_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n448_var_ref_α
n447_call_builtin_prolog_β:
                                                                              jmp   n455_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n449_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n450_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
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
.Lx466_41:              lea              r9, [rsp + 240]
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
.Lx466_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n455_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n451_var_ref_α
n450_call_builtin_prolog_β:
                                                                              jmp   n455_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n452_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n453_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx472_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx472_21
.Lx472_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx472_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx472_22
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx472_23
.Lx472_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx472_23:              mov              rdi, qword ptr [rip + .Lx472_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx472_1
                        mov              rdi, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx472_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx472_3]
                        push             rcx
                        lea              rcx, [rip + .Lx472_3]
                        lea              rdx, [rip + .Lx472_4];               jmp   rax
.Lx472_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx472_2
.Lx472_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx472_2
.Lx472_1:               call             rt_faildescr@PLT
.Lx472_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx472_29
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
.Lx472_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n455_call_builtin_prolog_α
                                                                              jmp   n454_suspend_α
n453_call_proc_staged_β:
                                                                              jmp   n455_call_builtin_prolog_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "bb_put/2"
#-----------------------------------------------------------------------------------------------------------------------
n454_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx474_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx474_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n454_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   g_assign$2F2_γ
n454_suspend_β:                                                               jmp   n453_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    g_assign$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   g_assign$2F2_ω
n455_call_builtin_prolog_β:
                                                                              jmp   g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
g_assign$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
g_assign$2F2_β:
                                                                              jmp   n454_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
g_assign$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx475_50
                        mov              qword ptr [rsp + 368], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx475_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_assign$2F2_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__g_read$2F2:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 560
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
g_read$2F2_α_body:
                        lea              rax, [rip + n490_suspend_β]
                        mov              qword ptr [rsp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx492_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx492_101
.Lx492_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx492_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx492_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx492_101
.Lx492_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx492_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    g_read$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n477_var_ref_α
n476_call_builtin_prolog_β:
                                                                              jmp   g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx497_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx497_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx497_41
                        cmp              esi, 1;                              jne   .Lx497_55
                        mov              r8, rax;                             jmp   .Lx497_40
.Lx497_55:              cmp              esi, 2;                              jne   .Lx497_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx497_41
                        mov              r8, rax;                             jmp   .Lx497_40
.Lx497_56:              cmp              al, 72;                              jne   .Lx497_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx497_41
                        cmp              rax, r8;                             je    .Lx497_41
                        mov              r8, rax;                             jmp   .Lx497_40
.Lx497_41:              lea              r9, [rsp + 432]
.Lx497_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx497_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx497_43
                        cmp              esi, 1;                              jne   .Lx497_57
                        mov              r9, rax;                             jmp   .Lx497_42
.Lx497_57:              cmp              esi, 2;                              jne   .Lx497_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx497_43
                        mov              r9, rax;                             jmp   .Lx497_42
.Lx497_58:              cmp              al, 72;                              jne   .Lx497_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx497_43
                        cmp              rax, r9;                             je    .Lx497_43
                        mov              r9, rax;                             jmp   .Lx497_42
.Lx497_43:              cmp              r8, r9;                              je    .Lx497_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx497_44
                        cmp              al, 104;                             je    .Lx497_44
                        cmp              al, 72;                              jne   .Lx497_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx497_44
                                                                              jmp   .Lx497_45
.Lx497_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx497_53
                        cmp              al, 104;                             je    .Lx497_53
                        cmp              al, 72;                              jne   .Lx497_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx497_53
                                                                              jmp   .Lx497_46
.Lx497_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx497_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx497_51
.Lx497_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx497_47
                        cmp              al, 104;                             je    .Lx497_47
                        cmp              al, 72;                              jne   .Lx497_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx497_47
                                                                              jmp   .Lx497_48
.Lx497_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx497_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx497_51
.Lx497_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx497_49
                        cmp              dl, 80;                              je    .Lx497_53
                                                                              jmp   .Lx497_52
.Lx497_49:              cmp              dl, 80;                              je    .Lx497_52
                        cmp              cl, 5;                               je    .Lx497_53
                        cmp              dl, 5;                               je    .Lx497_53
                        cmp              cl, 3;                               jne   .Lx497_50
                        cmp              dl, 3;                               jne   .Lx497_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx497_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx497_51
                                                                              jmp   .Lx497_52
.Lx497_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx497_53
.Lx497_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx497_54
.Lx497_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx497_54
.Lx497_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx497_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n491_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n480_var_ref_α
n479_call_builtin_prolog_β:
                                                                              jmp   n491_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n482_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx502_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx502_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx502_41
                        cmp              esi, 1;                              jne   .Lx502_55
                        mov              r8, rax;                             jmp   .Lx502_40
.Lx502_55:              cmp              esi, 2;                              jne   .Lx502_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_41
                        mov              r8, rax;                             jmp   .Lx502_40
.Lx502_56:              cmp              al, 72;                              jne   .Lx502_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx502_41
                        cmp              rax, r8;                             je    .Lx502_41
                        mov              r8, rax;                             jmp   .Lx502_40
.Lx502_41:              lea              r9, [rsp + 352]
.Lx502_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx502_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_43
                        cmp              esi, 1;                              jne   .Lx502_57
                        mov              r9, rax;                             jmp   .Lx502_42
.Lx502_57:              cmp              esi, 2;                              jne   .Lx502_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_43
                        mov              r9, rax;                             jmp   .Lx502_42
.Lx502_58:              cmp              al, 72;                              jne   .Lx502_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_43
                        cmp              rax, r9;                             je    .Lx502_43
                        mov              r9, rax;                             jmp   .Lx502_42
.Lx502_43:              cmp              r8, r9;                              je    .Lx502_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx502_44
                        cmp              al, 104;                             je    .Lx502_44
                        cmp              al, 72;                              jne   .Lx502_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx502_44
                                                                              jmp   .Lx502_45
.Lx502_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx502_53
                        cmp              al, 104;                             je    .Lx502_53
                        cmp              al, 72;                              jne   .Lx502_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx502_53
                                                                              jmp   .Lx502_46
.Lx502_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx502_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx502_51
.Lx502_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx502_47
                        cmp              al, 104;                             je    .Lx502_47
                        cmp              al, 72;                              jne   .Lx502_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx502_47
                                                                              jmp   .Lx502_48
.Lx502_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx502_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx502_51
.Lx502_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx502_49
                        cmp              dl, 80;                              je    .Lx502_53
                                                                              jmp   .Lx502_52
.Lx502_49:              cmp              dl, 80;                              je    .Lx502_52
                        cmp              cl, 5;                               je    .Lx502_53
                        cmp              dl, 5;                               je    .Lx502_53
                        cmp              cl, 3;                               jne   .Lx502_50
                        cmp              dl, 3;                               jne   .Lx502_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx502_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx502_51
                                                                              jmp   .Lx502_52
.Lx502_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx502_53
.Lx502_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx502_54
.Lx502_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx502_54
.Lx502_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx502_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n491_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n483_var_ref_α
n482_call_builtin_prolog_β:
                                                                              jmp   n491_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n485_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_proc_staged_α:
                        mov              qword ptr [rsp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx508_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx508_21
.Lx508_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx508_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx508_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx508_23
.Lx508_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx508_23:              lea              rax, [rip + .Lx508_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx508_1
                        lea              rcx, [rip + .Lx508_3]
                        lea              rdx, [rip + .Lx508_4];               jmp   rax
.Lx508_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx508_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx508_2
.Lx508_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx508_2
.Lx508_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx508_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx508_2
.Lx508_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx508_2
.Lx508_1:               call             rt_faildescr@PLT
.Lx508_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx508_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx508_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n491_call_builtin_prolog_α
                                                                              jmp   n486_cut_α
n485_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n491_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n491_call_builtin_prolog_α
                        lea              r11, [rip + .Lx508_7]
                        push             r11
                        lea              rcx, [rip + .Lx508_3]
                        lea              rdx, [rip + .Lx508_4];               jmp   rax
.Lx508_7:               add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n491_call_builtin_prolog_α
                                                                              jmp   n486_cut_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n486_cut_α:                                                                   jmp   n487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx514_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx514_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx514_41
                        cmp              esi, 1;                              jne   .Lx514_55
                        mov              r8, rax;                             jmp   .Lx514_40
.Lx514_55:              cmp              esi, 2;                              jne   .Lx514_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_41
                        mov              r8, rax;                             jmp   .Lx514_40
.Lx514_56:              cmp              al, 72;                              jne   .Lx514_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx514_41
                        cmp              rax, r8;                             je    .Lx514_41
                        mov              r8, rax;                             jmp   .Lx514_40
.Lx514_41:              lea              r9, [rsp + 160]
.Lx514_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx514_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_43
                        cmp              esi, 1;                              jne   .Lx514_57
                        mov              r9, rax;                             jmp   .Lx514_42
.Lx514_57:              cmp              esi, 2;                              jne   .Lx514_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_43
                        mov              r9, rax;                             jmp   .Lx514_42
.Lx514_58:              cmp              al, 72;                              jne   .Lx514_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_43
                        cmp              rax, r9;                             je    .Lx514_43
                        mov              r9, rax;                             jmp   .Lx514_42
.Lx514_43:              cmp              r8, r9;                              je    .Lx514_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx514_44
                        cmp              al, 104;                             je    .Lx514_44
                        cmp              al, 72;                              jne   .Lx514_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx514_44
                                                                              jmp   .Lx514_45
.Lx514_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx514_53
                        cmp              al, 104;                             je    .Lx514_53
                        cmp              al, 72;                              jne   .Lx514_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx514_53
                                                                              jmp   .Lx514_46
.Lx514_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx514_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx514_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx514_51
.Lx514_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx514_47
                        cmp              al, 104;                             je    .Lx514_47
                        cmp              al, 72;                              jne   .Lx514_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx514_47
                                                                              jmp   .Lx514_48
.Lx514_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx514_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx514_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx514_51
.Lx514_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx514_49
                        cmp              dl, 80;                              je    .Lx514_53
                                                                              jmp   .Lx514_52
.Lx514_49:              cmp              dl, 80;                              je    .Lx514_52
                        cmp              cl, 5;                               je    .Lx514_53
                        cmp              dl, 5;                               je    .Lx514_53
                        cmp              cl, 3;                               jne   .Lx514_50
                        cmp              dl, 3;                               jne   .Lx514_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx514_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx514_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx514_51
                                                                              jmp   .Lx514_52
.Lx514_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx514_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx514_53
.Lx514_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx514_54
.Lx514_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx514_54
.Lx514_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx514_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n491_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n490_suspend_α
n489_call_builtin_prolog_β:
                                                                              jmp   n491_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n490_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx516_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx516_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n490_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n490_suspend_β]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   g_read$2F2_γ
n490_suspend_β:                                                               jmp   n491_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    g_read$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   g_read$2F2_ω
n491_call_builtin_prolog_β:
                                                                              jmp   g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
g_read$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
g_read$2F2_β:
                                                                              jmp   n490_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
g_read$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx517_50
                        mov              qword ptr [rsp + 480], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx517_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 568]
                        add              rsp, 592;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_read$2F2_ω:
                        mov              rcx, qword ptr [rsp + 576]
                        add              rsp, 592;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__go_other1$2F1:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 560
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
go_other1$2F1_α_body:
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rsp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx537_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx537_101
.Lx537_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx537_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx537_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx537_101
.Lx537_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx537_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    go_other1$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n519_var_ref_α
n518_call_builtin_prolog_β:
                                                                              jmp   go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n520_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n521_lit_string_α
.Lx540_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 2
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n522_call_builtin_prolog_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n522_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx542_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx542_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx542_111
                        cmp              esi, 1;                              jne   .Lx542_112
                        mov              r8, rax;                             jmp   .Lx542_110
.Lx542_112:             cmp              esi, 2;                              jne   .Lx542_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx542_111
                        mov              r8, rax;                             jmp   .Lx542_110
.Lx542_113:             cmp              al, 72;                              jne   .Lx542_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx542_111
                        cmp              rax, r8;                             je    .Lx542_111
                        mov              r8, rax;                             jmp   .Lx542_110
.Lx542_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx542_114
                        cmp              al, 104;                             je    .Lx542_114
                        cmp              al, 72;                              jne   .Lx542_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx542_114
                                                                              jmp   .Lx542_118
.Lx542_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx542_115
                        cmp              al, 3;                               je    .Lx542_114
                        cmp              al, 2;                               jne   .Lx542_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx542_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx542_114
                                                                              jmp   .Lx542_116
.Lx542_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx542_117
.Lx542_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx542_117
.Lx542_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx542_117:             mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n529_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n523_var_ref_α
n522_call_builtin_prolog_β:
                                                                              jmp   n529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 2
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n525_call_builtin_prolog_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n525_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              rsi, qword ptr [rip + .Lx546_2];     jmp   .Lx546_3
.Lx546_2:               .quad            .Lx546_2_s
.Lx546_2_s:             .string          "[]"
.Lx546_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n528_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n526_cut_α
n525_call_builtin_prolog_β:
                                                                              jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n526_cut_α:                                                                   jmp   n527_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n527_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx549_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512];          jmp   rax
.Lx549_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n527_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   go_other1$2F1_γ
n527_suspend_β:                                                               jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    go_other1$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n529_var_ref_α
n528_call_builtin_prolog_β:
                                                                              jmp   go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n530_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n531_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n531_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
.Lx555_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx555_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx555_41
                        cmp              esi, 1;                              jne   .Lx555_55
                        mov              r8, rax;                             jmp   .Lx555_40
.Lx555_55:              cmp              esi, 2;                              jne   .Lx555_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_41
                        mov              r8, rax;                             jmp   .Lx555_40
.Lx555_56:              cmp              al, 72;                              jne   .Lx555_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx555_41
                        cmp              rax, r8;                             je    .Lx555_41
                        mov              r8, rax;                             jmp   .Lx555_40
.Lx555_41:              lea              r9, [rsp + 224]
.Lx555_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx555_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_43
                        cmp              esi, 1;                              jne   .Lx555_57
                        mov              r9, rax;                             jmp   .Lx555_42
.Lx555_57:              cmp              esi, 2;                              jne   .Lx555_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_43
                        mov              r9, rax;                             jmp   .Lx555_42
.Lx555_58:              cmp              al, 72;                              jne   .Lx555_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_43
                        cmp              rax, r9;                             je    .Lx555_43
                        mov              r9, rax;                             jmp   .Lx555_42
.Lx555_43:              cmp              r8, r9;                              je    .Lx555_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx555_44
                        cmp              al, 104;                             je    .Lx555_44
                        cmp              al, 72;                              jne   .Lx555_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx555_44
                                                                              jmp   .Lx555_45
.Lx555_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx555_53
                        cmp              al, 104;                             je    .Lx555_53
                        cmp              al, 72;                              jne   .Lx555_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx555_53
                                                                              jmp   .Lx555_46
.Lx555_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx555_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx555_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx555_51
.Lx555_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx555_47
                        cmp              al, 104;                             je    .Lx555_47
                        cmp              al, 72;                              jne   .Lx555_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx555_47
                                                                              jmp   .Lx555_48
.Lx555_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx555_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx555_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx555_51
.Lx555_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx555_49
                        cmp              dl, 80;                              je    .Lx555_53
                                                                              jmp   .Lx555_52
.Lx555_49:              cmp              dl, 80;                              je    .Lx555_52
                        cmp              cl, 5;                               je    .Lx555_53
                        cmp              dl, 5;                               je    .Lx555_53
                        cmp              cl, 3;                               jne   .Lx555_50
                        cmp              dl, 3;                               jne   .Lx555_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx555_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx555_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx555_51
                                                                              jmp   .Lx555_52
.Lx555_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx555_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx555_53
.Lx555_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx555_54
.Lx555_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx555_54
.Lx555_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx555_54:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n536_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n532_var_ref_α
n531_call_builtin_prolog_β:
                                                                              jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n533_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx559_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx559_21
.Lx559_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx559_21:              mov              rdi, qword ptr [rip + .Lx559_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx559_1
                        mov              rdi, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx559_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx559_3]
                        push             rcx
                        lea              rcx, [rip + .Lx559_3]
                        lea              rdx, [rip + .Lx559_4];               jmp   rax
.Lx559_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx559_2
.Lx559_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx559_2
.Lx559_1:               call             rt_faildescr@PLT
.Lx559_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx559_29
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
.Lx559_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n536_call_builtin_prolog_α
                                                                              jmp   n534_call_proc_staged_α
n533_call_proc_staged_β:
                                                                              jmp   n536_call_builtin_prolog_α
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "pl2wam/1"
#-----------------------------------------------------------------------------------------------------------------------
n534_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx561_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx561_1
                        mov              rdi, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx561_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx561_3]
                        push             rcx
                        lea              rcx, [rip + .Lx561_3]
                        lea              rdx, [rip + .Lx561_4];               jmp   rax
.Lx561_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx561_2
.Lx561_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx561_2
.Lx561_1:               call             rt_faildescr@PLT
.Lx561_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx561_29
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
.Lx561_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n533_call_proc_staged_β
                                                                              jmp   n535_suspend_α
n534_call_proc_staged_β:
                                                                              jmp   n533_call_proc_staged_β
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n535_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx563_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512];          jmp   rax
.Lx563_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n535_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n535_suspend_β]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   go_other1$2F1_γ
n535_suspend_β:                                                               jmp   n534_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    go_other1$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   go_other1$2F1_ω
n536_call_builtin_prolog_β:
                                                                              jmp   go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
go_other1$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
go_other1$2F1_β:
                                                                              jmp   n527_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
go_other1$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx564_50
                        mov              qword ptr [rsp + 512], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512];          jmp   rax
.Lx564_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 568]
                        add              rsp, 592;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
go_other1$2F1_ω:
                        mov              rcx, qword ptr [rsp + 576]
                        add              rsp, 592;                            jmp   rcx
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
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 176
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n566_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n566_call_proc_staged_α:
                        lea              rsi, [rsp + 128]
                        call             argument_list$2F1_dcα;               jmp   .Lx572_2
.Lx572_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx572_29
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
.Lx572_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n567_var_ref_α
n566_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n568_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n568_call_proc_staged_α:
                        mov              qword ptr [rsp + 32], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx576_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx576_21
.Lx576_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx576_21:              lea              rax, [rip + .Lx576_7]
                        push             rax
                        mov              edi, 12
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx576_1
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4];               jmp   rax
.Lx576_3:               mov              qword ptr [rsp + 40], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax;                            jne   .Lx576_5
                        mov              qword ptr [rsp + 32], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx576_2
.Lx576_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx576_2
.Lx576_4:               mov              rax, qword ptr [rsp + 32]
                        test             rax, rax;                            jne   .Lx576_6
                        mov              qword ptr [rsp + 32], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx576_2
.Lx576_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx576_2
.Lx576_1:               call             rt_faildescr@PLT
.Lx576_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx576_29
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
.Lx576_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n566_call_proc_staged_β
                                                                              jmp   main_γ
n568_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 32], 0
                        lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n566_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              ecx, 32
                        mov              r8d, 512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 12
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n566_call_proc_staged_β
                        lea              r11, [rip + .Lx576_7]
                        push             r11
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4];               jmp   rax
.Lx576_7:               add              rsp, 8
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n566_call_proc_staged_β
                                                                              jmp   main_γ
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "prolog_copyright/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__prolog_copyright$2F1
                        .quad            prolog_copyright$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "prolog_version/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__prolog_version$2F1
                        .quad            prolog_version$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "reverse/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__reverse$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1056
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "go_other/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__go_other$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "append/3"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$disj0/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__$disj0$2F2
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "argument_list/1"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__argument_list$2F1
                        .quad            argument_list$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "reverse1/3"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__reverse1$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1248
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "prolog_name/1"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__prolog_name$2F1
                        .quad            prolog_name$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "prolog_date/1"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__prolog_date$2F1
                        .quad            prolog_date$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "g_assign/2"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__g_assign$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "g_read/2"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__g_read$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            544
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "go_other1/1"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__go_other1$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            544
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
