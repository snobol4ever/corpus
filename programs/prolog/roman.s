                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__roman$2F2:
                        sub              rsp, 8848
                        mov              qword ptr [rsp + 8824], rcx
                        mov              qword ptr [rsp + 8832], rdx
                        mov              qword ptr [rsp + 8840], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 8816
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
roman$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx327_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx327_101
.Lx327_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx327_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx327_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx327_101
.Lx327_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx327_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8688], rax
                        mov              qword ptr [rsp + 8696], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 8704], 3            # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n3_lit_integer_α
.Lx330_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 8720], 3            # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 8728], rax;         jmp   n4_call_builtin_prolog_α
.Lx331_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 8720]
                        mov              qword ptr [rsp + 8672], rax
                        mov              rax, qword ptr [rsp + 8728]
                        mov              qword ptr [rsp + 8680], rax
                        mov              rax, qword ptr [rsp + 8704]
                        mov              qword ptr [rsp + 8656], rax
                        mov              rax, qword ptr [rsp + 8712]
                        mov              qword ptr [rsp + 8664], rax
                        mov              rax, qword ptr [rsp + 8688]
                        mov              qword ptr [rsp + 8640], rax
                        mov              rax, qword ptr [rsp + 8696]
                        mov              qword ptr [rsp + 8648], rax
                        lea              rdi, [rsp + 8640]
                        lea              r8, [rsp + 8640]
.Lx332_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx332_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx332_111
                        cmp              esi, 1;                              jne   .Lx332_112
                        mov              r8, rax;                             jmp   .Lx332_110
.Lx332_112:             cmp              esi, 2;                              jne   .Lx332_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_111
                        mov              r8, rax;                             jmp   .Lx332_110
.Lx332_113:             cmp              al, 72;                              jne   .Lx332_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx332_111
                        cmp              rax, r8;                             je    .Lx332_111
                        mov              r8, rax;                             jmp   .Lx332_110
.Lx332_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx332_114
                        cmp              al, 104;                             je    .Lx332_114
                        cmp              al, 72;                              jne   .Lx332_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx332_114
                                                                              jmp   .Lx332_118
.Lx332_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx332_115
                        cmp              al, 3;                               jne   .Lx332_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx332_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx332_115
                                                                              jmp   .Lx332_114
.Lx332_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx332_117
.Lx332_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx332_117
.Lx332_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx332_117:             mov              qword ptr [rsp + 8624], rax
                        mov              qword ptr [rsp + 8632], rdx
                        cmp              al, 104;                             je    n14_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8592], rax
                        mov              qword ptr [rsp + 8600], rdx;         jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 8608], 3            # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n7_call_builtin_prolog_α
.Lx335_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8568], rax
                        lea              rdi, [rsp + 8560]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8544], rax
                        mov              qword ptr [rsp + 8552], rdx
                        cmp              al, 104;                             je    n13_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 8512], rax
                        mov              qword ptr [rsp + 8520], rdx;         jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 8528], 2            # result
                        mov              dword ptr [rsp + 8532], 0
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 8536], rax;         jmp   n10_call_builtin_prolog_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 8512]
                        mov              qword ptr [rsp + 8480], rax
                        mov              rax, qword ptr [rsp + 8520]
                        mov              qword ptr [rsp + 8488], rax
                        lea              rdi, [rsp + 8480]
                        mov              rsi, qword ptr [rip + .Lx340_2];     jmp   .Lx340_3
.Lx340_2:               .quad            .Lx340_2_s
.Lx340_2_s:             .string          ""
.Lx340_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8464], rax
                        mov              qword ptr [rsp + 8472], rdx
                        cmp              al, 104;                             je    n13_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_cut_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_cut_α:              mov              r11, 12;                             jmp   n12_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n12_move_label_α:       mov              r11, 13
                        lea              rax, [rip + n13_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 8448], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8456], rax
                        lea              rdi, [rsp + 8448]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8432], rax
                        mov              qword ptr [rsp + 8440], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8400], rax
                        mov              qword ptr [rsp + 8408], rdx;         jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 8416], rax
                        mov              qword ptr [rsp + 8424], rdx;         jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 8416]
                        mov              qword ptr [rsp + 8384], rax
                        mov              rax, qword ptr [rsp + 8424]
                        mov              qword ptr [rsp + 8392], rax
                        mov              rax, qword ptr [rsp + 8400]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8408]
                        mov              qword ptr [rsp + 8376], rax
                        lea              rdi, [rsp + 8368]
                        lea              r8, [rsp + 8368]
.Lx349_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx349_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx349_41
                        cmp              esi, 1;                              jne   .Lx349_55
                        mov              r8, rax;                             jmp   .Lx349_40
.Lx349_55:              cmp              esi, 2;                              jne   .Lx349_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx349_41
                        mov              r8, rax;                             jmp   .Lx349_40
.Lx349_56:              cmp              al, 72;                              jne   .Lx349_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx349_41
                        cmp              rax, r8;                             je    .Lx349_41
                        mov              r8, rax;                             jmp   .Lx349_40
.Lx349_41:              lea              r9, [rsp + 8384]
.Lx349_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx349_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx349_43
                        cmp              esi, 1;                              jne   .Lx349_57
                        mov              r9, rax;                             jmp   .Lx349_42
.Lx349_57:              cmp              esi, 2;                              jne   .Lx349_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx349_43
                        mov              r9, rax;                             jmp   .Lx349_42
.Lx349_58:              cmp              al, 72;                              jne   .Lx349_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx349_43
                        cmp              rax, r9;                             je    .Lx349_43
                        mov              r9, rax;                             jmp   .Lx349_42
.Lx349_43:              cmp              r8, r9;                              je    .Lx349_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx349_44
                        cmp              al, 104;                             je    .Lx349_44
                        cmp              al, 72;                              jne   .Lx349_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx349_44
                                                                              jmp   .Lx349_45
.Lx349_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx349_53
                        cmp              al, 104;                             je    .Lx349_53
                        cmp              al, 72;                              jne   .Lx349_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx349_53
                                                                              jmp   .Lx349_46
.Lx349_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx349_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx349_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx349_51
.Lx349_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx349_47
                        cmp              al, 104;                             je    .Lx349_47
                        cmp              al, 72;                              jne   .Lx349_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx349_47
                                                                              jmp   .Lx349_48
.Lx349_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx349_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx349_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx349_51
.Lx349_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx349_49
                        cmp              dl, 80;                              je    .Lx349_53
                                                                              jmp   .Lx349_52
.Lx349_49:              cmp              dl, 80;                              je    .Lx349_52
                        cmp              cl, 5;                               je    .Lx349_53
                        cmp              dl, 5;                               je    .Lx349_53
                        cmp              cl, 3;                               jne   .Lx349_50
                        cmp              dl, 3;                               jne   .Lx349_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx349_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx349_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx349_51
                                                                              jmp   .Lx349_52
.Lx349_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx349_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx349_53
.Lx349_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx349_54
.Lx349_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx349_54
.Lx349_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx349_54:              mov              qword ptr [rsp + 8352], rax
                        mov              qword ptr [rsp + 8360], rdx
                        cmp              al, 104;                             je    n37_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 8320], rax
                        mov              qword ptr [rsp + 8328], rdx;         jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 8336], rax
                        mov              qword ptr [rsp + 8344], rdx;         jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 8336]
                        mov              qword ptr [rsp + 8304], rax
                        mov              rax, qword ptr [rsp + 8344]
                        mov              qword ptr [rsp + 8312], rax
                        mov              rax, qword ptr [rsp + 8320]
                        mov              qword ptr [rsp + 8288], rax
                        mov              rax, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 8296], rax
                        lea              rdi, [rsp + 8288]
                        lea              r8, [rsp + 8288]
.Lx354_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx354_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx354_41
                        cmp              esi, 1;                              jne   .Lx354_55
                        mov              r8, rax;                             jmp   .Lx354_40
.Lx354_55:              cmp              esi, 2;                              jne   .Lx354_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx354_41
                        mov              r8, rax;                             jmp   .Lx354_40
.Lx354_56:              cmp              al, 72;                              jne   .Lx354_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx354_41
                        cmp              rax, r8;                             je    .Lx354_41
                        mov              r8, rax;                             jmp   .Lx354_40
.Lx354_41:              lea              r9, [rsp + 8304]
.Lx354_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx354_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx354_43
                        cmp              esi, 1;                              jne   .Lx354_57
                        mov              r9, rax;                             jmp   .Lx354_42
.Lx354_57:              cmp              esi, 2;                              jne   .Lx354_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx354_43
                        mov              r9, rax;                             jmp   .Lx354_42
.Lx354_58:              cmp              al, 72;                              jne   .Lx354_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx354_43
                        cmp              rax, r9;                             je    .Lx354_43
                        mov              r9, rax;                             jmp   .Lx354_42
.Lx354_43:              cmp              r8, r9;                              je    .Lx354_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx354_44
                        cmp              al, 104;                             je    .Lx354_44
                        cmp              al, 72;                              jne   .Lx354_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx354_44
                                                                              jmp   .Lx354_45
.Lx354_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx354_53
                        cmp              al, 104;                             je    .Lx354_53
                        cmp              al, 72;                              jne   .Lx354_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx354_53
                                                                              jmp   .Lx354_46
.Lx354_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx354_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx354_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx354_51
.Lx354_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx354_47
                        cmp              al, 104;                             je    .Lx354_47
                        cmp              al, 72;                              jne   .Lx354_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx354_47
                                                                              jmp   .Lx354_48
.Lx354_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx354_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx354_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx354_51
.Lx354_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx354_49
                        cmp              dl, 80;                              je    .Lx354_53
                                                                              jmp   .Lx354_52
.Lx354_49:              cmp              dl, 80;                              je    .Lx354_52
                        cmp              cl, 5;                               je    .Lx354_53
                        cmp              dl, 5;                               je    .Lx354_53
                        cmp              cl, 3;                               jne   .Lx354_50
                        cmp              dl, 3;                               jne   .Lx354_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx354_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx354_51
                                                                              jmp   .Lx354_52
.Lx354_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx354_53
.Lx354_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx354_54
.Lx354_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx354_54
.Lx354_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx354_54:              mov              qword ptr [rsp + 8272], rax
                        mov              qword ptr [rsp + 8280], rdx
                        cmp              al, 104;                             je    n37_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_var_α
n19_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 8240], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 8248], rax;         jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 8256], 3            # result
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8264], rax;         jmp   n22_call_builtin_prolog_α
.Lx357_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8232], rax
                        mov              rax, qword ptr [rsp + 8240]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 8248]
                        mov              qword ptr [rsp + 8216], rax
                        lea              rdi, [rsp + 8208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8192], rax
                        mov              qword ptr [rsp + 8200], rdx
                        cmp              al, 104;                             je    n37_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_cut_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_cut_α:              mov              r11, 24;                             jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 8160], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 8168], rax;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 8176], 3            # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 8184], rax;         jmp   n27_call_builtin_prolog_α
.Lx364_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 8176]
                        mov              qword ptr [rsp + 8128], rax
                        mov              rax, qword ptr [rsp + 8184]
                        mov              qword ptr [rsp + 8136], rax
                        mov              rax, qword ptr [rsp + 8160]
                        mov              qword ptr [rsp + 8112], rax
                        mov              rax, qword ptr [rsp + 8168]
                        mov              qword ptr [rsp + 8120], rax
                        lea              rdi, [rsp + 8112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_call_builtin_prolog_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8064], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8072], rax
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8056], rax
                        lea              rdi, [rsp + 8048]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8032], rax
                        mov              qword ptr [rsp + 8040], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 8000], rax
                        mov              qword ptr [rsp + 8008], rdx;         jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx;         jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 32
                        lea              rsi, [rsp + 8000]
                        lea              rdx, [rsp + 8016]
                        call             roman$2F2_dcα;                       jmp   .Lx372_2
.Lx372_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx372_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7936], rax
                        mov              qword ptr [rsp + 7944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7936]
                        mov              rdx, qword ptr [rsp + 7944]
.Lx372_29:              mov              qword ptr [rsp + 7936], rax
                        mov              qword ptr [rsp + 7944], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n32_lit_string_α
n31_call_proc_staged_β: mov              r11, 32;                             jmp   n326_call_builtin_prolog_α
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 7888], 2            # result
                        mov              dword ptr [rsp + 7892], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 7896], rax;         jmp   n33_var_ref_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx;         jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 7920]
                        mov              qword ptr [rsp + 7872], rax
                        mov              rax, qword ptr [rsp + 7928]
                        mov              qword ptr [rsp + 7880], rax
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7856], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7864], rax
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7848], rax
                        .section         .rodata
.Lrkfn379:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rsp + 7840]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n31_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_move_label_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n31_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n36_move_label_α:       mov              r11, 37
                        lea              rax, [rip + n31_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 7816], rax
                        lea              rdi, [rsp + 7808]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_var_ref_α
n37_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7760], rax
                        mov              qword ptr [rsp + 7768], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx;         jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 7776]
                        mov              qword ptr [rsp + 7744], rax
                        mov              rax, qword ptr [rsp + 7784]
                        mov              qword ptr [rsp + 7752], rax
                        mov              rax, qword ptr [rsp + 7760]
                        mov              qword ptr [rsp + 7728], rax
                        mov              rax, qword ptr [rsp + 7768]
                        mov              qword ptr [rsp + 7736], rax
                        lea              rdi, [rsp + 7728]
                        lea              r8, [rsp + 7728]
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
.Lx387_41:              lea              r9, [rsp + 7744]
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
.Lx387_54:              mov              qword ptr [rsp + 7712], rax
                        mov              qword ptr [rsp + 7720], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7680], rax
                        mov              qword ptr [rsp + 7688], rdx;         jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 7696], rax
                        mov              qword ptr [rsp + 7704], rdx;         jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 7696]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7704]
                        mov              qword ptr [rsp + 7672], rax
                        mov              rax, qword ptr [rsp + 7680]
                        mov              qword ptr [rsp + 7648], rax
                        mov              rax, qword ptr [rsp + 7688]
                        mov              qword ptr [rsp + 7656], rax
                        lea              rdi, [rsp + 7648]
                        lea              r8, [rsp + 7648]
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
.Lx392_41:              lea              r9, [rsp + 7664]
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
.Lx392_54:              mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_var_α
n43_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 7600], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 7608], rax;         jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 7616], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 7624], rax;         jmp   n46_call_builtin_prolog_α
.Lx395_0:               .quad            900
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7592], rax
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7568], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7576], rax
                        lea              rdi, [rsp + 7568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_cut_α
n46_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_cut_α:              mov              r11, 48;                             jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 7440], rax
                        mov              qword ptr [rsp + 7448], rdx;         jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 7520], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 7528], rax;         jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              r11, 51
                        mov              qword ptr [rsp + 7536], 3            # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 7544], rax;         jmp   n51_call_builtin_prolog_α
.Lx402_0:               .quad            900
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 7536]
                        mov              qword ptr [rsp + 7488], rax
                        mov              rax, qword ptr [rsp + 7544]
                        mov              qword ptr [rsp + 7496], rax
                        mov              rax, qword ptr [rsp + 7520]
                        mov              qword ptr [rsp + 7472], rax
                        mov              rax, qword ptr [rsp + 7528]
                        mov              qword ptr [rsp + 7480], rax
                        lea              rdi, [rsp + 7472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7456], rax
                        mov              qword ptr [rsp + 7464], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_call_builtin_prolog_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 7456]
                        mov              qword ptr [rsp + 7424], rax
                        mov              rax, qword ptr [rsp + 7464]
                        mov              qword ptr [rsp + 7432], rax
                        mov              rax, qword ptr [rsp + 7440]
                        mov              qword ptr [rsp + 7408], rax
                        mov              rax, qword ptr [rsp + 7448]
                        mov              qword ptr [rsp + 7416], rax
                        lea              rdi, [rsp + 7408]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_ref_α
n52_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 7360], rax
                        mov              qword ptr [rsp + 7368], rdx;         jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α: mov              r11, 56
                        lea              rsi, [rsp + 7360]
                        lea              rdx, [rsp + 7376]
                        call             roman$2F2_dcα;                       jmp   .Lx410_2
.Lx410_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx410_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lx410_29:              mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n56_lit_string_α
n55_call_proc_staged_β: mov              r11, 56;                             jmp   n326_call_builtin_prolog_α
.Lx410_0:               .quad            .Lx410_0_s
.Lx410_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 2
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n57_var_ref_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "CM"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx;         jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 7280], rax
                        mov              qword ptr [rsp + 7288], rdx;         jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 7280]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7288]
                        mov              qword ptr [rsp + 7240], rax
                        mov              rax, qword ptr [rsp + 7264]
                        mov              qword ptr [rsp + 7216], rax
                        mov              rax, qword ptr [rsp + 7272]
                        mov              qword ptr [rsp + 7224], rax
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7208], rax
                        .section         .rodata
.Lrkfn417:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rsp + 7200]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7184], rax
                        mov              qword ptr [rsp + 7192], rdx
                        cmp              al, 104;                             je    n55_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_move_label_α
n59_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   n55_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n60_move_label_α:       mov              r11, 61
                        lea              rax, [rip + n55_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 7168], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 7176], rax
                        lea              rdi, [rsp + 7168]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_var_ref_α
n61_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7120], rax
                        mov              qword ptr [rsp + 7128], rdx;         jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx;         jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 7136]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 7144]
                        mov              qword ptr [rsp + 7112], rax
                        mov              rax, qword ptr [rsp + 7120]
                        mov              qword ptr [rsp + 7088], rax
                        mov              rax, qword ptr [rsp + 7128]
                        mov              qword ptr [rsp + 7096], rax
                        lea              rdi, [rsp + 7088]
                        lea              r8, [rsp + 7088]
.Lx425_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx425_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx425_41
                        cmp              esi, 1;                              jne   .Lx425_55
                        mov              r8, rax;                             jmp   .Lx425_40
.Lx425_55:              cmp              esi, 2;                              jne   .Lx425_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx425_41
                        mov              r8, rax;                             jmp   .Lx425_40
.Lx425_56:              cmp              al, 72;                              jne   .Lx425_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx425_41
                        cmp              rax, r8;                             je    .Lx425_41
                        mov              r8, rax;                             jmp   .Lx425_40
.Lx425_41:              lea              r9, [rsp + 7104]
.Lx425_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx425_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx425_43
                        cmp              esi, 1;                              jne   .Lx425_57
                        mov              r9, rax;                             jmp   .Lx425_42
.Lx425_57:              cmp              esi, 2;                              jne   .Lx425_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx425_43
                        mov              r9, rax;                             jmp   .Lx425_42
.Lx425_58:              cmp              al, 72;                              jne   .Lx425_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx425_43
                        cmp              rax, r9;                             je    .Lx425_43
                        mov              r9, rax;                             jmp   .Lx425_42
.Lx425_43:              cmp              r8, r9;                              je    .Lx425_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx425_44
                        cmp              al, 104;                             je    .Lx425_44
                        cmp              al, 72;                              jne   .Lx425_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx425_44
                                                                              jmp   .Lx425_45
.Lx425_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx425_53
                        cmp              al, 104;                             je    .Lx425_53
                        cmp              al, 72;                              jne   .Lx425_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx425_53
                                                                              jmp   .Lx425_46
.Lx425_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx425_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx425_51
.Lx425_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx425_47
                        cmp              al, 104;                             je    .Lx425_47
                        cmp              al, 72;                              jne   .Lx425_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx425_47
                                                                              jmp   .Lx425_48
.Lx425_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx425_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx425_51
.Lx425_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx425_49
                        cmp              dl, 80;                              je    .Lx425_53
                                                                              jmp   .Lx425_52
.Lx425_49:              cmp              dl, 80;                              je    .Lx425_52
                        cmp              cl, 5;                               je    .Lx425_53
                        cmp              dl, 5;                               je    .Lx425_53
                        cmp              cl, 3;                               jne   .Lx425_50
                        cmp              dl, 3;                               jne   .Lx425_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx425_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx425_51
                                                                              jmp   .Lx425_52
.Lx425_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx425_53
.Lx425_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx425_54
.Lx425_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx425_54
.Lx425_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx425_54:              mov              qword ptr [rsp + 7072], rax
                        mov              qword ptr [rsp + 7080], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_var_ref_α
n64_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx;         jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7032], rax
                        mov              rax, qword ptr [rsp + 7040]
                        mov              qword ptr [rsp + 7008], rax
                        mov              rax, qword ptr [rsp + 7048]
                        mov              qword ptr [rsp + 7016], rax
                        lea              rdi, [rsp + 7008]
                        lea              r8, [rsp + 7008]
.Lx430_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx430_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx430_41
                        cmp              esi, 1;                              jne   .Lx430_55
                        mov              r8, rax;                             jmp   .Lx430_40
.Lx430_55:              cmp              esi, 2;                              jne   .Lx430_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx430_41
                        mov              r8, rax;                             jmp   .Lx430_40
.Lx430_56:              cmp              al, 72;                              jne   .Lx430_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx430_41
                        cmp              rax, r8;                             je    .Lx430_41
                        mov              r8, rax;                             jmp   .Lx430_40
.Lx430_41:              lea              r9, [rsp + 7024]
.Lx430_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx430_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx430_43
                        cmp              esi, 1;                              jne   .Lx430_57
                        mov              r9, rax;                             jmp   .Lx430_42
.Lx430_57:              cmp              esi, 2;                              jne   .Lx430_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx430_43
                        mov              r9, rax;                             jmp   .Lx430_42
.Lx430_58:              cmp              al, 72;                              jne   .Lx430_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx430_43
                        cmp              rax, r9;                             je    .Lx430_43
                        mov              r9, rax;                             jmp   .Lx430_42
.Lx430_43:              cmp              r8, r9;                              je    .Lx430_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx430_44
                        cmp              al, 104;                             je    .Lx430_44
                        cmp              al, 72;                              jne   .Lx430_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx430_44
                                                                              jmp   .Lx430_45
.Lx430_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx430_53
                        cmp              al, 104;                             je    .Lx430_53
                        cmp              al, 72;                              jne   .Lx430_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx430_53
                                                                              jmp   .Lx430_46
.Lx430_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx430_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx430_51
.Lx430_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx430_47
                        cmp              al, 104;                             je    .Lx430_47
                        cmp              al, 72;                              jne   .Lx430_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx430_47
                                                                              jmp   .Lx430_48
.Lx430_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx430_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx430_51
.Lx430_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx430_49
                        cmp              dl, 80;                              je    .Lx430_53
                                                                              jmp   .Lx430_52
.Lx430_49:              cmp              dl, 80;                              je    .Lx430_52
                        cmp              cl, 5;                               je    .Lx430_53
                        cmp              dl, 5;                               je    .Lx430_53
                        cmp              cl, 3;                               jne   .Lx430_50
                        cmp              dl, 3;                               jne   .Lx430_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx430_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx430_51
                                                                              jmp   .Lx430_52
.Lx430_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx430_53
.Lx430_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx430_54
.Lx430_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx430_54
.Lx430_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx430_54:              mov              qword ptr [rsp + 6992], rax
                        mov              qword ptr [rsp + 7000], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_var_α
n67_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6960], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6968], rax;         jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              r11, 70
                        mov              qword ptr [rsp + 6976], 3            # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 6984], rax;         jmp   n70_call_builtin_prolog_α
.Lx433_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 6976]
                        mov              qword ptr [rsp + 6944], rax
                        mov              rax, qword ptr [rsp + 6984]
                        mov              qword ptr [rsp + 6952], rax
                        mov              rax, qword ptr [rsp + 6960]
                        mov              qword ptr [rsp + 6928], rax
                        mov              rax, qword ptr [rsp + 6968]
                        mov              qword ptr [rsp + 6936], rax
                        lea              rdi, [rsp + 6928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_cut_α
n70_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_cut_α:              mov              r11, 72;                             jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 6800], rax
                        mov              qword ptr [rsp + 6808], rdx;         jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6880], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6888], rax;         jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 75
                        mov              qword ptr [rsp + 6896], 3            # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 6904], rax;         jmp   n75_call_builtin_prolog_α
.Lx440_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 6896]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 6904]
                        mov              qword ptr [rsp + 6856], rax
                        mov              rax, qword ptr [rsp + 6880]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6888]
                        mov              qword ptr [rsp + 6840], rax
                        lea              rdi, [rsp + 6832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6816], rax
                        mov              qword ptr [rsp + 6824], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_call_builtin_prolog_α
n75_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 6816]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 6824]
                        mov              qword ptr [rsp + 6792], rax
                        mov              rax, qword ptr [rsp + 6800]
                        mov              qword ptr [rsp + 6768], rax
                        mov              rax, qword ptr [rsp + 6808]
                        mov              qword ptr [rsp + 6776], rax
                        lea              rdi, [rsp + 6768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 6720], rax
                        mov              qword ptr [rsp + 6728], rdx;         jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n79_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α: mov              r11, 80
                        lea              rsi, [rsp + 6720]
                        lea              rdx, [rsp + 6736]
                        call             roman$2F2_dcα;                       jmp   .Lx448_2
.Lx448_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx448_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6656]
                        mov              rdx, qword ptr [rsp + 6664]
.Lx448_29:              mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n80_lit_string_α
n79_call_proc_staged_β: mov              r11, 80;                             jmp   n326_call_builtin_prolog_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 6608], 2            # result
                        mov              dword ptr [rsp + 6612], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n81_var_ref_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx;         jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 6640]
                        mov              qword ptr [rsp + 6592], rax
                        mov              rax, qword ptr [rsp + 6648]
                        mov              qword ptr [rsp + 6600], rax
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6584], rax
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6568], rax
                        .section         .rodata
.Lrkfn455:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rsp + 6560]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx
                        cmp              al, 104;                             je    n79_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_move_label_α
n83_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n79_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n84_move_label_α:       mov              r11, 85
                        lea              rax, [rip + n79_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 6528], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 6536], rax
                        lea              rdi, [rsp + 6528]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_var_ref_α
n85_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6480], rax
                        mov              qword ptr [rsp + 6488], rdx;         jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx;         jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6472], rax
                        mov              rax, qword ptr [rsp + 6480]
                        mov              qword ptr [rsp + 6448], rax
                        mov              rax, qword ptr [rsp + 6488]
                        mov              qword ptr [rsp + 6456], rax
                        lea              rdi, [rsp + 6448]
                        lea              r8, [rsp + 6448]
.Lx463_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              esi, 1;                              jne   .Lx463_55
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_55:              cmp              esi, 2;                              jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_56:              cmp              al, 72;                              jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              rax, r8;                             je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_41:              lea              r9, [rsp + 6464]
.Lx463_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              esi, 1;                              jne   .Lx463_57
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_57:              cmp              esi, 2;                              jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_58:              cmp              al, 72;                              jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              rax, r9;                             je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_43:              cmp              r8, r9;                              je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx463_44
                        cmp              al, 104;                             je    .Lx463_44
                        cmp              al, 72;                              jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx463_44
                                                                              jmp   .Lx463_45
.Lx463_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_53
                        cmp              al, 104;                             je    .Lx463_53
                        cmp              al, 72;                              jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_53
                                                                              jmp   .Lx463_46
.Lx463_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx463_51
.Lx463_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_47
                        cmp              al, 104;                             je    .Lx463_47
                        cmp              al, 72;                              jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_47
                                                                              jmp   .Lx463_48
.Lx463_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx463_51
.Lx463_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx463_49
                        cmp              dl, 80;                              je    .Lx463_53
                                                                              jmp   .Lx463_52
.Lx463_49:              cmp              dl, 80;                              je    .Lx463_52
                        cmp              cl, 5;                               je    .Lx463_53
                        cmp              dl, 5;                               je    .Lx463_53
                        cmp              cl, 3;                               jne   .Lx463_50
                        cmp              dl, 3;                               jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx463_51
                                                                              jmp   .Lx463_52
.Lx463_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx463_53
.Lx463_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx463_54
.Lx463_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx463_54
.Lx463_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx463_54:              mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              al, 104;                             je    n109_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx;         jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 6416], rax
                        mov              qword ptr [rsp + 6424], rdx;         jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 6416]
                        mov              qword ptr [rsp + 6384], rax
                        mov              rax, qword ptr [rsp + 6424]
                        mov              qword ptr [rsp + 6392], rax
                        mov              rax, qword ptr [rsp + 6400]
                        mov              qword ptr [rsp + 6368], rax
                        mov              rax, qword ptr [rsp + 6408]
                        mov              qword ptr [rsp + 6376], rax
                        lea              rdi, [rsp + 6368]
                        lea              r8, [rsp + 6368]
.Lx468_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx468_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx468_41
                        cmp              esi, 1;                              jne   .Lx468_55
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_55:              cmp              esi, 2;                              jne   .Lx468_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx468_41
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_56:              cmp              al, 72;                              jne   .Lx468_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx468_41
                        cmp              rax, r8;                             je    .Lx468_41
                        mov              r8, rax;                             jmp   .Lx468_40
.Lx468_41:              lea              r9, [rsp + 6384]
.Lx468_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx468_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx468_43
                        cmp              esi, 1;                              jne   .Lx468_57
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_57:              cmp              esi, 2;                              jne   .Lx468_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx468_43
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_58:              cmp              al, 72;                              jne   .Lx468_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx468_43
                        cmp              rax, r9;                             je    .Lx468_43
                        mov              r9, rax;                             jmp   .Lx468_42
.Lx468_43:              cmp              r8, r9;                              je    .Lx468_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx468_44
                        cmp              al, 104;                             je    .Lx468_44
                        cmp              al, 72;                              jne   .Lx468_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx468_44
                                                                              jmp   .Lx468_45
.Lx468_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx468_53
                        cmp              al, 104;                             je    .Lx468_53
                        cmp              al, 72;                              jne   .Lx468_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx468_53
                                                                              jmp   .Lx468_46
.Lx468_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx468_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx468_51
.Lx468_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx468_47
                        cmp              al, 104;                             je    .Lx468_47
                        cmp              al, 72;                              jne   .Lx468_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx468_47
                                                                              jmp   .Lx468_48
.Lx468_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx468_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx468_51
.Lx468_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx468_49
                        cmp              dl, 80;                              je    .Lx468_53
                                                                              jmp   .Lx468_52
.Lx468_49:              cmp              dl, 80;                              je    .Lx468_52
                        cmp              cl, 5;                               je    .Lx468_53
                        cmp              dl, 5;                               je    .Lx468_53
                        cmp              cl, 3;                               jne   .Lx468_50
                        cmp              dl, 3;                               jne   .Lx468_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx468_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx468_51
                                                                              jmp   .Lx468_52
.Lx468_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx468_53
.Lx468_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx468_54
.Lx468_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx468_54
.Lx468_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx468_54:              mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx
                        cmp              al, 104;                             je    n109_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_var_α
n91_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 93
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6328], rax;         jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 6336], 3            # result
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n94_call_builtin_prolog_α
.Lx471_0:               .quad            400
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 6312], rax
                        mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6296], rax
                        lea              rdi, [rsp + 6288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6272], rax
                        mov              qword ptr [rsp + 6280], rdx
                        cmp              al, 104;                             je    n109_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_cut_α
n94_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_cut_α:              mov              r11, 96;                             jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 98
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6248], rax;         jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 99
                        mov              qword ptr [rsp + 6256], 3            # result
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 6264], rax;         jmp   n99_call_builtin_prolog_α
.Lx478_0:               .quad            400
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 6256]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6264]
                        mov              qword ptr [rsp + 6216], rax
                        mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6200], rax
                        lea              rdi, [rsp + 6192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_call_builtin_prolog_α
n99_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6152], rax
                        mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6136], rax
                        lea              rdi, [rsp + 6128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_var_ref_α
n100_call_builtin_prolog_β:
                        mov              r11, 101;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx;         jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        mov              r11, 104
                        lea              rsi, [rsp + 6080]
                        lea              rdx, [rsp + 6096]
                        call             roman$2F2_dcα;                       jmp   .Lx486_2
.Lx486_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx486_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6016]
                        mov              rdx, qword ptr [rsp + 6024]
.Lx486_29:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n104_lit_string_α
n103_call_proc_staged_β:
                        mov              r11, 104;                            jmp   n326_call_builtin_prolog_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 5968], 2            # result
                        mov              dword ptr [rsp + 5972], 2
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n105_var_ref_α
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          "CD"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx;         jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx;         jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 5984]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 5992]
                        mov              qword ptr [rsp + 5944], rax
                        mov              rax, qword ptr [rsp + 5968]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 5976]
                        mov              qword ptr [rsp + 5928], rax
                        .section         .rodata
.Lrkfn493:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn493]
                        lea              rsi, [rsp + 5920]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              al, 104;                             je    n103_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_move_label_α
n107_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n103_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n108_move_label_α:      mov              r11, 109
                        lea              rax, [rip + n103_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 5896], rax
                        lea              rdi, [rsp + 5888]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n111_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx;         jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5832], rax
                        mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5816], rax
                        lea              rdi, [rsp + 5808]
                        lea              r8, [rsp + 5808]
.Lx501_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx501_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx501_41
                        cmp              esi, 1;                              jne   .Lx501_55
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_55:              cmp              esi, 2;                              jne   .Lx501_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx501_41
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_56:              cmp              al, 72;                              jne   .Lx501_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx501_41
                        cmp              rax, r8;                             je    .Lx501_41
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_41:              lea              r9, [rsp + 5824]
.Lx501_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx501_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx501_43
                        cmp              esi, 1;                              jne   .Lx501_57
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_57:              cmp              esi, 2;                              jne   .Lx501_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx501_43
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_58:              cmp              al, 72;                              jne   .Lx501_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx501_43
                        cmp              rax, r9;                             je    .Lx501_43
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_43:              cmp              r8, r9;                              je    .Lx501_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx501_44
                        cmp              al, 104;                             je    .Lx501_44
                        cmp              al, 72;                              jne   .Lx501_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx501_44
                                                                              jmp   .Lx501_45
.Lx501_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx501_53
                        cmp              al, 104;                             je    .Lx501_53
                        cmp              al, 72;                              jne   .Lx501_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx501_53
                                                                              jmp   .Lx501_46
.Lx501_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx501_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx501_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx501_51
.Lx501_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx501_47
                        cmp              al, 104;                             je    .Lx501_47
                        cmp              al, 72;                              jne   .Lx501_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx501_47
                                                                              jmp   .Lx501_48
.Lx501_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx501_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx501_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx501_51
.Lx501_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx501_49
                        cmp              dl, 80;                              je    .Lx501_53
                                                                              jmp   .Lx501_52
.Lx501_49:              cmp              dl, 80;                              je    .Lx501_52
                        cmp              cl, 5;                               je    .Lx501_53
                        cmp              dl, 5;                               je    .Lx501_53
                        cmp              cl, 3;                               jne   .Lx501_50
                        cmp              dl, 3;                               jne   .Lx501_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx501_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx501_51
                                                                              jmp   .Lx501_52
.Lx501_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx501_53
.Lx501_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx501_54
.Lx501_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx501_54
.Lx501_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx501_54:              mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_var_ref_α
n112_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5760], rax
                        mov              qword ptr [rsp + 5768], rdx;         jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx;         jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 5736], rax
                        lea              rdi, [rsp + 5728]
                        lea              r8, [rsp + 5728]
.Lx506_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx506_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx506_41
                        cmp              esi, 1;                              jne   .Lx506_55
                        mov              r8, rax;                             jmp   .Lx506_40
.Lx506_55:              cmp              esi, 2;                              jne   .Lx506_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx506_41
                        mov              r8, rax;                             jmp   .Lx506_40
.Lx506_56:              cmp              al, 72;                              jne   .Lx506_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx506_41
                        cmp              rax, r8;                             je    .Lx506_41
                        mov              r8, rax;                             jmp   .Lx506_40
.Lx506_41:              lea              r9, [rsp + 5744]
.Lx506_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx506_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx506_43
                        cmp              esi, 1;                              jne   .Lx506_57
                        mov              r9, rax;                             jmp   .Lx506_42
.Lx506_57:              cmp              esi, 2;                              jne   .Lx506_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx506_43
                        mov              r9, rax;                             jmp   .Lx506_42
.Lx506_58:              cmp              al, 72;                              jne   .Lx506_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx506_43
                        cmp              rax, r9;                             je    .Lx506_43
                        mov              r9, rax;                             jmp   .Lx506_42
.Lx506_43:              cmp              r8, r9;                              je    .Lx506_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx506_44
                        cmp              al, 104;                             je    .Lx506_44
                        cmp              al, 72;                              jne   .Lx506_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx506_44
                                                                              jmp   .Lx506_45
.Lx506_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx506_53
                        cmp              al, 104;                             je    .Lx506_53
                        cmp              al, 72;                              jne   .Lx506_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx506_53
                                                                              jmp   .Lx506_46
.Lx506_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx506_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx506_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx506_51
.Lx506_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx506_47
                        cmp              al, 104;                             je    .Lx506_47
                        cmp              al, 72;                              jne   .Lx506_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx506_47
                                                                              jmp   .Lx506_48
.Lx506_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx506_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx506_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx506_51
.Lx506_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx506_49
                        cmp              dl, 80;                              je    .Lx506_53
                                                                              jmp   .Lx506_52
.Lx506_49:              cmp              dl, 80;                              je    .Lx506_52
                        cmp              cl, 5;                               je    .Lx506_53
                        cmp              dl, 5;                               je    .Lx506_53
                        cmp              cl, 3;                               jne   .Lx506_50
                        cmp              dl, 3;                               jne   .Lx506_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx506_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx506_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx506_51
                                                                              jmp   .Lx506_52
.Lx506_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx506_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx506_53
.Lx506_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx506_54
.Lx506_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx506_54
.Lx506_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx506_54:              mov              qword ptr [rsp + 5712], rax
                        mov              qword ptr [rsp + 5720], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_var_α
n115_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 5696], 3            # result
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 5704], rax;         jmp   n118_call_builtin_prolog_α
.Lx509_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5664], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5672], rax
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5656], rax
                        lea              rdi, [rsp + 5648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_cut_α
n118_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_cut_α:             mov              r11, 120;                            jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx;         jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 5608], rax;         jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rsp + 5616], 3            # result
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 5624], rax;         jmp   n123_call_builtin_prolog_α
.Lx516_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5576], rax
                        mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5560], rax
                        lea              rdi, [rsp + 5552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_call_builtin_prolog_α
n123_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 125
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5504], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5512], rax
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5488], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5496], rax
                        lea              rdi, [rsp + 5488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 125;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 128
                        lea              rsi, [rsp + 5440]
                        lea              rdx, [rsp + 5456]
                        call             roman$2F2_dcα;                       jmp   .Lx524_2
.Lx524_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx524_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5376]
                        mov              rdx, qword ptr [rsp + 5384]
.Lx524_29:              mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n128_lit_string_α
n127_call_proc_staged_β:
                        mov              r11, 128;                            jmp   n326_call_builtin_prolog_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 1
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n129_var_ref_α
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx;         jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx;         jmp   n131_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 132
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5320], rax
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5288], rax
                        .section         .rodata
.Lrkfn531:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn531]
                        lea              rsi, [rsp + 5280]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n127_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_move_label_α
n131_call_builtin_prolog_β:
                        mov              r11, 132;                            jmp   n127_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n132_move_label_α:      mov              r11, 133
                        lea              rax, [rip + n127_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 5256], rax
                        lea              rdi, [rsp + 5248]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx;         jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx;         jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 137
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5192], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5176], rax
                        lea              rdi, [rsp + 5168]
                        lea              r8, [rsp + 5168]
.Lx539_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx539_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx539_41
                        cmp              esi, 1;                              jne   .Lx539_55
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_55:              cmp              esi, 2;                              jne   .Lx539_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx539_41
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_56:              cmp              al, 72;                              jne   .Lx539_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx539_41
                        cmp              rax, r8;                             je    .Lx539_41
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_41:              lea              r9, [rsp + 5184]
.Lx539_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx539_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx539_43
                        cmp              esi, 1;                              jne   .Lx539_57
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_57:              cmp              esi, 2;                              jne   .Lx539_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx539_43
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_58:              cmp              al, 72;                              jne   .Lx539_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx539_43
                        cmp              rax, r9;                             je    .Lx539_43
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_43:              cmp              r8, r9;                              je    .Lx539_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx539_44
                        cmp              al, 104;                             je    .Lx539_44
                        cmp              al, 72;                              jne   .Lx539_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx539_44
                                                                              jmp   .Lx539_45
.Lx539_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx539_53
                        cmp              al, 104;                             je    .Lx539_53
                        cmp              al, 72;                              jne   .Lx539_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx539_53
                                                                              jmp   .Lx539_46
.Lx539_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx539_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx539_51
.Lx539_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx539_47
                        cmp              al, 104;                             je    .Lx539_47
                        cmp              al, 72;                              jne   .Lx539_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx539_47
                                                                              jmp   .Lx539_48
.Lx539_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx539_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx539_51
.Lx539_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx539_49
                        cmp              dl, 80;                              je    .Lx539_53
                                                                              jmp   .Lx539_52
.Lx539_49:              cmp              dl, 80;                              je    .Lx539_52
                        cmp              cl, 5;                               je    .Lx539_53
                        cmp              dl, 5;                               je    .Lx539_53
                        cmp              cl, 3;                               jne   .Lx539_50
                        cmp              dl, 3;                               jne   .Lx539_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx539_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx539_51
                                                                              jmp   .Lx539_52
.Lx539_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx539_53
.Lx539_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx539_54
.Lx539_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx539_54
.Lx539_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx539_54:              mov              qword ptr [rsp + 5152], rax
                        mov              qword ptr [rsp + 5160], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx;         jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx;         jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5112], rax
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5096], rax
                        lea              rdi, [rsp + 5088]
                        lea              r8, [rsp + 5088]
.Lx544_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx544_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx544_41
                        cmp              esi, 1;                              jne   .Lx544_55
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_55:              cmp              esi, 2;                              jne   .Lx544_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx544_41
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_56:              cmp              al, 72;                              jne   .Lx544_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx544_41
                        cmp              rax, r8;                             je    .Lx544_41
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_41:              lea              r9, [rsp + 5104]
.Lx544_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx544_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx544_43
                        cmp              esi, 1;                              jne   .Lx544_57
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_57:              cmp              esi, 2;                              jne   .Lx544_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx544_43
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_58:              cmp              al, 72;                              jne   .Lx544_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx544_43
                        cmp              rax, r9;                             je    .Lx544_43
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_43:              cmp              r8, r9;                              je    .Lx544_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx544_44
                        cmp              al, 104;                             je    .Lx544_44
                        cmp              al, 72;                              jne   .Lx544_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx544_44
                                                                              jmp   .Lx544_45
.Lx544_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx544_53
                        cmp              al, 104;                             je    .Lx544_53
                        cmp              al, 72;                              jne   .Lx544_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx544_53
                                                                              jmp   .Lx544_46
.Lx544_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx544_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx544_51
.Lx544_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx544_47
                        cmp              al, 104;                             je    .Lx544_47
                        cmp              al, 72;                              jne   .Lx544_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx544_47
                                                                              jmp   .Lx544_48
.Lx544_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx544_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx544_51
.Lx544_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx544_49
                        cmp              dl, 80;                              je    .Lx544_53
                                                                              jmp   .Lx544_52
.Lx544_49:              cmp              dl, 80;                              je    .Lx544_52
                        cmp              cl, 5;                               je    .Lx544_53
                        cmp              dl, 5;                               je    .Lx544_53
                        cmp              cl, 3;                               jne   .Lx544_50
                        cmp              dl, 3;                               jne   .Lx544_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx544_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx544_51
                                                                              jmp   .Lx544_52
.Lx544_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx544_53
.Lx544_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx544_54
.Lx544_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx544_54
.Lx544_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx544_54:              mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_var_α
n139_call_builtin_prolog_β:
                        mov              r11, 140;                            jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              r11, 141
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 5048], rax;         jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 5056], 3            # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n142_call_builtin_prolog_α
.Lx547_0:               .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5032], rax
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_cut_α
n142_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_cut_α:             mov              r11, 144;                            jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 4880], rax
                        mov              qword ptr [rsp + 4888], rdx;         jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n147_call_builtin_prolog_α
.Lx554_0:               .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4936], rax
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4912], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4920], rax
                        lea              rdi, [rsp + 4912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_call_builtin_prolog_α
n147_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              r11, 149
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4856], rax
                        lea              rdi, [rsp + 4848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                        mov              r11, 149;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 152
                        lea              rsi, [rsp + 4800]
                        lea              rdx, [rsp + 4816]
                        call             roman$2F2_dcα;                       jmp   .Lx562_2
.Lx562_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx562_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4736]
                        mov              rdx, qword ptr [rsp + 4744]
.Lx562_29:              mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n152_lit_string_α
n151_call_proc_staged_β:
                        mov              r11, 152;                            jmp   n326_call_builtin_prolog_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 2
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n153_var_ref_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "XC"
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx;         jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4680], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4664], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4648], rax
                        .section         .rodata
.Lrkfn569:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn569]
                        lea              rsi, [rsp + 4640]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_move_label_α
n155_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   n151_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n156_move_label_α:      mov              r11, 157
                        lea              rax, [rip + n151_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 4616], rax
                        lea              rdi, [rsp + 4608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_var_ref_α
n157_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx;         jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4552], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4536], rax
                        lea              rdi, [rsp + 4528]
                        lea              r8, [rsp + 4528]
.Lx577_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx577_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx577_41
                        cmp              esi, 1;                              jne   .Lx577_55
                        mov              r8, rax;                             jmp   .Lx577_40
.Lx577_55:              cmp              esi, 2;                              jne   .Lx577_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx577_41
                        mov              r8, rax;                             jmp   .Lx577_40
.Lx577_56:              cmp              al, 72;                              jne   .Lx577_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx577_41
                        cmp              rax, r8;                             je    .Lx577_41
                        mov              r8, rax;                             jmp   .Lx577_40
.Lx577_41:              lea              r9, [rsp + 4544]
.Lx577_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx577_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx577_43
                        cmp              esi, 1;                              jne   .Lx577_57
                        mov              r9, rax;                             jmp   .Lx577_42
.Lx577_57:              cmp              esi, 2;                              jne   .Lx577_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx577_43
                        mov              r9, rax;                             jmp   .Lx577_42
.Lx577_58:              cmp              al, 72;                              jne   .Lx577_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx577_43
                        cmp              rax, r9;                             je    .Lx577_43
                        mov              r9, rax;                             jmp   .Lx577_42
.Lx577_43:              cmp              r8, r9;                              je    .Lx577_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx577_44
                        cmp              al, 104;                             je    .Lx577_44
                        cmp              al, 72;                              jne   .Lx577_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx577_44
                                                                              jmp   .Lx577_45
.Lx577_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx577_53
                        cmp              al, 104;                             je    .Lx577_53
                        cmp              al, 72;                              jne   .Lx577_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx577_53
                                                                              jmp   .Lx577_46
.Lx577_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx577_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx577_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx577_51
.Lx577_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx577_47
                        cmp              al, 104;                             je    .Lx577_47
                        cmp              al, 72;                              jne   .Lx577_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx577_47
                                                                              jmp   .Lx577_48
.Lx577_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx577_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx577_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx577_51
.Lx577_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx577_49
                        cmp              dl, 80;                              je    .Lx577_53
                                                                              jmp   .Lx577_52
.Lx577_49:              cmp              dl, 80;                              je    .Lx577_52
                        cmp              cl, 5;                               je    .Lx577_53
                        cmp              dl, 5;                               je    .Lx577_53
                        cmp              cl, 3;                               jne   .Lx577_50
                        cmp              dl, 3;                               jne   .Lx577_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx577_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx577_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx577_51
                                                                              jmp   .Lx577_52
.Lx577_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx577_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx577_53
.Lx577_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx577_54
.Lx577_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx577_54
.Lx577_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx577_54:              mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              al, 104;                             je    n181_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_var_ref_α
n160_call_builtin_prolog_β:
                        mov              r11, 161;                            jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n163_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4456], rax
                        lea              rdi, [rsp + 4448]
                        lea              r8, [rsp + 4448]
.Lx582_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx582_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx582_41
                        cmp              esi, 1;                              jne   .Lx582_55
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_55:              cmp              esi, 2;                              jne   .Lx582_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx582_41
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_56:              cmp              al, 72;                              jne   .Lx582_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx582_41
                        cmp              rax, r8;                             je    .Lx582_41
                        mov              r8, rax;                             jmp   .Lx582_40
.Lx582_41:              lea              r9, [rsp + 4464]
.Lx582_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx582_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx582_43
                        cmp              esi, 1;                              jne   .Lx582_57
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_57:              cmp              esi, 2;                              jne   .Lx582_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx582_43
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_58:              cmp              al, 72;                              jne   .Lx582_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx582_43
                        cmp              rax, r9;                             je    .Lx582_43
                        mov              r9, rax;                             jmp   .Lx582_42
.Lx582_43:              cmp              r8, r9;                              je    .Lx582_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx582_44
                        cmp              al, 104;                             je    .Lx582_44
                        cmp              al, 72;                              jne   .Lx582_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx582_44
                                                                              jmp   .Lx582_45
.Lx582_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx582_53
                        cmp              al, 104;                             je    .Lx582_53
                        cmp              al, 72;                              jne   .Lx582_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx582_53
                                                                              jmp   .Lx582_46
.Lx582_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx582_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx582_51
.Lx582_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx582_47
                        cmp              al, 104;                             je    .Lx582_47
                        cmp              al, 72;                              jne   .Lx582_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx582_47
                                                                              jmp   .Lx582_48
.Lx582_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx582_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx582_51
.Lx582_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx582_49
                        cmp              dl, 80;                              je    .Lx582_53
                                                                              jmp   .Lx582_52
.Lx582_49:              cmp              dl, 80;                              je    .Lx582_52
                        cmp              cl, 5;                               je    .Lx582_53
                        cmp              dl, 5;                               je    .Lx582_53
                        cmp              cl, 3;                               jne   .Lx582_50
                        cmp              dl, 3;                               jne   .Lx582_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx582_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx582_51
                                                                              jmp   .Lx582_52
.Lx582_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx582_53
.Lx582_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx582_54
.Lx582_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx582_54
.Lx582_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx582_54:              mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx
                        cmp              al, 104;                             je    n181_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_var_α
n163_call_builtin_prolog_β:
                        mov              r11, 164;                            jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 165
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 4416], 3            # result
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n166_call_builtin_prolog_α
.Lx585_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4376], rax
                        lea              rdi, [rsp + 4368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n181_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_cut_α
n166_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_cut_α:             mov              r11, 168;                            jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             mov              r11, 170
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n170_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rsp + 4336], 3            # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n171_call_builtin_prolog_α
.Lx592_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4296], rax
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 4280], rax
                        lea              rdi, [rsp + 4272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n172_call_builtin_prolog_α
n171_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4232], rax
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4216], rax
                        lea              rdi, [rsp + 4208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_var_ref_α
n172_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx;         jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx;         jmp   n175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 176
                        lea              rsi, [rsp + 4160]
                        lea              rdx, [rsp + 4176]
                        call             roman$2F2_dcα;                       jmp   .Lx600_2
.Lx600_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx600_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4096]
                        mov              rdx, qword ptr [rsp + 4104]
.Lx600_29:              mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n176_lit_string_α
n175_call_proc_staged_β:
                        mov              r11, 176;                            jmp   n326_call_builtin_prolog_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 4048], 2            # result
                        mov              dword ptr [rsp + 4052], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n177_var_ref_α
.Lx601_0:               .quad            .Lx601_0_s
.Lx601_0_s:             .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4024], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4008], rax
                        .section         .rodata
.Lrkfn607:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rsp + 4000]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              al, 104;                             je    n175_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_move_label_α
n179_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   n175_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n180_move_label_α:      mov              r11, 181
                        lea              rax, [rip + n175_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_var_ref_α
n181_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              r11, 185
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        lea              r8, [rsp + 3888]
.Lx615_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx615_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx615_41
                        cmp              esi, 1;                              jne   .Lx615_55
                        mov              r8, rax;                             jmp   .Lx615_40
.Lx615_55:              cmp              esi, 2;                              jne   .Lx615_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx615_41
                        mov              r8, rax;                             jmp   .Lx615_40
.Lx615_56:              cmp              al, 72;                              jne   .Lx615_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx615_41
                        cmp              rax, r8;                             je    .Lx615_41
                        mov              r8, rax;                             jmp   .Lx615_40
.Lx615_41:              lea              r9, [rsp + 3904]
.Lx615_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx615_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx615_43
                        cmp              esi, 1;                              jne   .Lx615_57
                        mov              r9, rax;                             jmp   .Lx615_42
.Lx615_57:              cmp              esi, 2;                              jne   .Lx615_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx615_43
                        mov              r9, rax;                             jmp   .Lx615_42
.Lx615_58:              cmp              al, 72;                              jne   .Lx615_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx615_43
                        cmp              rax, r9;                             je    .Lx615_43
                        mov              r9, rax;                             jmp   .Lx615_42
.Lx615_43:              cmp              r8, r9;                              je    .Lx615_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx615_44
                        cmp              al, 104;                             je    .Lx615_44
                        cmp              al, 72;                              jne   .Lx615_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx615_44
                                                                              jmp   .Lx615_45
.Lx615_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx615_53
                        cmp              al, 104;                             je    .Lx615_53
                        cmp              al, 72;                              jne   .Lx615_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx615_53
                                                                              jmp   .Lx615_46
.Lx615_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx615_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx615_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx615_51
.Lx615_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx615_47
                        cmp              al, 104;                             je    .Lx615_47
                        cmp              al, 72;                              jne   .Lx615_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx615_47
                                                                              jmp   .Lx615_48
.Lx615_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx615_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx615_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx615_51
.Lx615_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx615_49
                        cmp              dl, 80;                              je    .Lx615_53
                                                                              jmp   .Lx615_52
.Lx615_49:              cmp              dl, 80;                              je    .Lx615_52
                        cmp              cl, 5;                               je    .Lx615_53
                        cmp              dl, 5;                               je    .Lx615_53
                        cmp              cl, 3;                               jne   .Lx615_50
                        cmp              dl, 3;                               jne   .Lx615_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx615_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx615_51
                                                                              jmp   .Lx615_52
.Lx615_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx615_53
.Lx615_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx615_54
.Lx615_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx615_54
.Lx615_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx615_54:              mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        lea              r8, [rsp + 3808]
.Lx620_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx620_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx620_41
                        cmp              esi, 1;                              jne   .Lx620_55
                        mov              r8, rax;                             jmp   .Lx620_40
.Lx620_55:              cmp              esi, 2;                              jne   .Lx620_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx620_41
                        mov              r8, rax;                             jmp   .Lx620_40
.Lx620_56:              cmp              al, 72;                              jne   .Lx620_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx620_41
                        cmp              rax, r8;                             je    .Lx620_41
                        mov              r8, rax;                             jmp   .Lx620_40
.Lx620_41:              lea              r9, [rsp + 3824]
.Lx620_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx620_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx620_43
                        cmp              esi, 1;                              jne   .Lx620_57
                        mov              r9, rax;                             jmp   .Lx620_42
.Lx620_57:              cmp              esi, 2;                              jne   .Lx620_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx620_43
                        mov              r9, rax;                             jmp   .Lx620_42
.Lx620_58:              cmp              al, 72;                              jne   .Lx620_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx620_43
                        cmp              rax, r9;                             je    .Lx620_43
                        mov              r9, rax;                             jmp   .Lx620_42
.Lx620_43:              cmp              r8, r9;                              je    .Lx620_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx620_44
                        cmp              al, 104;                             je    .Lx620_44
                        cmp              al, 72;                              jne   .Lx620_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx620_44
                                                                              jmp   .Lx620_45
.Lx620_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx620_53
                        cmp              al, 104;                             je    .Lx620_53
                        cmp              al, 72;                              jne   .Lx620_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx620_53
                                                                              jmp   .Lx620_46
.Lx620_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx620_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx620_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx620_51
.Lx620_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx620_47
                        cmp              al, 104;                             je    .Lx620_47
                        cmp              al, 72;                              jne   .Lx620_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx620_47
                                                                              jmp   .Lx620_48
.Lx620_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx620_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx620_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx620_51
.Lx620_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx620_49
                        cmp              dl, 80;                              je    .Lx620_53
                                                                              jmp   .Lx620_52
.Lx620_49:              cmp              dl, 80;                              je    .Lx620_52
                        cmp              cl, 5;                               je    .Lx620_53
                        cmp              dl, 5;                               je    .Lx620_53
                        cmp              cl, 3;                               jne   .Lx620_50
                        cmp              dl, 3;                               jne   .Lx620_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx620_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx620_51
                                                                              jmp   .Lx620_52
.Lx620_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx620_53
.Lx620_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx620_54
.Lx620_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx620_54
.Lx620_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx620_54:              mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_var_α
n187_call_builtin_prolog_β:
                        mov              r11, 188;                            jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n190_call_builtin_prolog_α
.Lx623_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
                        mov              r11, 191
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3736], rax
                        lea              rdi, [rsp + 3728]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_cut_α
n190_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_cut_α:             mov              r11, 192;                            jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n195_call_builtin_prolog_α
.Lx630_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n196_call_builtin_prolog_α
n195_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              r11, 197
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3576], rax
                        lea              rdi, [rsp + 3568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_var_ref_α
n196_call_builtin_prolog_β:
                        mov              r11, 197;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n198_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n199_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        mov              r11, 200
                        lea              rsi, [rsp + 3520]
                        lea              rdx, [rsp + 3536]
                        call             roman$2F2_dcα;                       jmp   .Lx638_2
.Lx638_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx638_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3456]
                        mov              rdx, qword ptr [rsp + 3464]
.Lx638_29:              mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n200_lit_string_α
n199_call_proc_staged_β:
                        mov              r11, 200;                            jmp   n326_call_builtin_prolog_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 2
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n201_var_ref_α
.Lx639_0:               .quad            .Lx639_0_s
.Lx639_0_s:             .string          "XL"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn645:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n199_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_move_label_α
n203_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   n199_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n204_move_label_α:      mov              r11, 205
                        lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              r11, 206
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3336], rax
                        lea              rdi, [rsp + 3328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                        mov              r11, 206;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n208_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        lea              rdi, [rsp + 3248]
                        lea              r8, [rsp + 3248]
.Lx653_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx653_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              esi, 1;                              jne   .Lx653_55
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_55:              cmp              esi, 2;                              jne   .Lx653_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_56:              cmp              al, 72;                              jne   .Lx653_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              rax, r8;                             je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_41:              lea              r9, [rsp + 3264]
.Lx653_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx653_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              esi, 1;                              jne   .Lx653_57
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_57:              cmp              esi, 2;                              jne   .Lx653_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_58:              cmp              al, 72;                              jne   .Lx653_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              rax, r9;                             je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_43:              cmp              r8, r9;                              je    .Lx653_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx653_44
                        cmp              al, 104;                             je    .Lx653_44
                        cmp              al, 72;                              jne   .Lx653_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx653_44
                                                                              jmp   .Lx653_45
.Lx653_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_53
                        cmp              al, 104;                             je    .Lx653_53
                        cmp              al, 72;                              jne   .Lx653_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_53
                                                                              jmp   .Lx653_46
.Lx653_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx653_51
.Lx653_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_47
                        cmp              al, 104;                             je    .Lx653_47
                        cmp              al, 72;                              jne   .Lx653_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_47
                                                                              jmp   .Lx653_48
.Lx653_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx653_51
.Lx653_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx653_49
                        cmp              dl, 80;                              je    .Lx653_53
                                                                              jmp   .Lx653_52
.Lx653_49:              cmp              dl, 80;                              je    .Lx653_52
                        cmp              cl, 5;                               je    .Lx653_53
                        cmp              dl, 5;                               je    .Lx653_53
                        cmp              cl, 3;                               jne   .Lx653_50
                        cmp              dl, 3;                               jne   .Lx653_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx653_51
                                                                              jmp   .Lx653_52
.Lx653_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx653_53
.Lx653_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx653_54
.Lx653_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx653_54
.Lx653_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx653_54:              mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_var_ref_α
n208_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx;         jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx;         jmp   n211_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_prolog_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3176], rax
                        lea              rdi, [rsp + 3168]
                        lea              r8, [rsp + 3168]
.Lx658_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx658_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx658_41
                        cmp              esi, 1;                              jne   .Lx658_55
                        mov              r8, rax;                             jmp   .Lx658_40
.Lx658_55:              cmp              esi, 2;                              jne   .Lx658_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx658_41
                        mov              r8, rax;                             jmp   .Lx658_40
.Lx658_56:              cmp              al, 72;                              jne   .Lx658_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx658_41
                        cmp              rax, r8;                             je    .Lx658_41
                        mov              r8, rax;                             jmp   .Lx658_40
.Lx658_41:              lea              r9, [rsp + 3184]
.Lx658_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx658_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx658_43
                        cmp              esi, 1;                              jne   .Lx658_57
                        mov              r9, rax;                             jmp   .Lx658_42
.Lx658_57:              cmp              esi, 2;                              jne   .Lx658_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx658_43
                        mov              r9, rax;                             jmp   .Lx658_42
.Lx658_58:              cmp              al, 72;                              jne   .Lx658_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx658_43
                        cmp              rax, r9;                             je    .Lx658_43
                        mov              r9, rax;                             jmp   .Lx658_42
.Lx658_43:              cmp              r8, r9;                              je    .Lx658_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx658_44
                        cmp              al, 104;                             je    .Lx658_44
                        cmp              al, 72;                              jne   .Lx658_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx658_44
                                                                              jmp   .Lx658_45
.Lx658_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx658_53
                        cmp              al, 104;                             je    .Lx658_53
                        cmp              al, 72;                              jne   .Lx658_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx658_53
                                                                              jmp   .Lx658_46
.Lx658_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx658_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx658_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx658_51
.Lx658_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx658_47
                        cmp              al, 104;                             je    .Lx658_47
                        cmp              al, 72;                              jne   .Lx658_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx658_47
                                                                              jmp   .Lx658_48
.Lx658_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx658_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx658_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx658_51
.Lx658_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx658_49
                        cmp              dl, 80;                              je    .Lx658_53
                                                                              jmp   .Lx658_52
.Lx658_49:              cmp              dl, 80;                              je    .Lx658_52
                        cmp              cl, 5;                               je    .Lx658_53
                        cmp              dl, 5;                               je    .Lx658_53
                        cmp              cl, 3;                               jne   .Lx658_50
                        cmp              dl, 3;                               jne   .Lx658_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx658_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx658_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx658_51
                                                                              jmp   .Lx658_52
.Lx658_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx658_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx658_53
.Lx658_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx658_54
.Lx658_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx658_54
.Lx658_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx658_54:              mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_var_α
n211_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n213_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n214_call_builtin_prolog_α
.Lx661_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
                        mov              r11, 215
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        lea              rdi, [rsp + 3088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_cut_α
n214_call_builtin_prolog_β:
                        mov              r11, 215;                            jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n215_cut_α:             mov              r11, 216;                            jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n217_var_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n218_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     mov              r11, 219
                        mov              qword ptr [rsp + 3056], 3            # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n219_call_builtin_prolog_α
.Lx668_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_prolog_α:
                        mov              r11, 220
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3000], rax
                        lea              rdi, [rsp + 2992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n220_call_builtin_prolog_α
n219_call_builtin_prolog_β:
                        mov              r11, 220;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              r11, 221
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_var_ref_α
n220_call_builtin_prolog_β:
                        mov              r11, 221;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              r11, 224
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             roman$2F2_dcα;                       jmp   .Lx676_2
.Lx676_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx676_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx676_29:              mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n224_lit_string_α
n223_call_proc_staged_β:
                        mov              r11, 224;                            jmp   n326_call_builtin_prolog_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n225_var_ref_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              r11, 228
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2728], rax
                        .section         .rodata
.Lrkfn683:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rsp + 2720]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_move_label_α
n227_call_builtin_prolog_β:
                        mov              r11, 228;                            jmp   n223_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n228_move_label_α:      mov              r11, 229
                        lea              rax, [rip + n223_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
                        mov              r11, 230
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2696], rax
                        lea              rdi, [rsp + 2688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_var_ref_α
n229_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              r11, 233
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2616], rax
                        lea              rdi, [rsp + 2608]
                        lea              r8, [rsp + 2608]
.Lx691_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx691_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx691_41
                        cmp              esi, 1;                              jne   .Lx691_55
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_55:              cmp              esi, 2;                              jne   .Lx691_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx691_41
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_56:              cmp              al, 72;                              jne   .Lx691_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx691_41
                        cmp              rax, r8;                             je    .Lx691_41
                        mov              r8, rax;                             jmp   .Lx691_40
.Lx691_41:              lea              r9, [rsp + 2624]
.Lx691_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx691_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx691_43
                        cmp              esi, 1;                              jne   .Lx691_57
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_57:              cmp              esi, 2;                              jne   .Lx691_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx691_43
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_58:              cmp              al, 72;                              jne   .Lx691_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx691_43
                        cmp              rax, r9;                             je    .Lx691_43
                        mov              r9, rax;                             jmp   .Lx691_42
.Lx691_43:              cmp              r8, r9;                              je    .Lx691_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx691_44
                        cmp              al, 104;                             je    .Lx691_44
                        cmp              al, 72;                              jne   .Lx691_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx691_44
                                                                              jmp   .Lx691_45
.Lx691_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx691_53
                        cmp              al, 104;                             je    .Lx691_53
                        cmp              al, 72;                              jne   .Lx691_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx691_53
                                                                              jmp   .Lx691_46
.Lx691_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx691_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx691_51
.Lx691_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx691_47
                        cmp              al, 104;                             je    .Lx691_47
                        cmp              al, 72;                              jne   .Lx691_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx691_47
                                                                              jmp   .Lx691_48
.Lx691_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx691_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx691_51
.Lx691_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx691_49
                        cmp              dl, 80;                              je    .Lx691_53
                                                                              jmp   .Lx691_52
.Lx691_49:              cmp              dl, 80;                              je    .Lx691_52
                        cmp              cl, 5;                               je    .Lx691_53
                        cmp              dl, 5;                               je    .Lx691_53
                        cmp              cl, 3;                               jne   .Lx691_50
                        cmp              dl, 3;                               jne   .Lx691_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx691_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx691_51
                                                                              jmp   .Lx691_52
.Lx691_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx691_53
.Lx691_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx691_54
.Lx691_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx691_54
.Lx691_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx691_54:              mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                        mov              r11, 233;                            jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n234_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n235_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_prolog_α:
                        mov              r11, 236
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2536], rax
                        lea              rdi, [rsp + 2528]
                        lea              r8, [rsp + 2528]
.Lx696_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx696_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx696_41
                        cmp              esi, 1;                              jne   .Lx696_55
                        mov              r8, rax;                             jmp   .Lx696_40
.Lx696_55:              cmp              esi, 2;                              jne   .Lx696_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx696_41
                        mov              r8, rax;                             jmp   .Lx696_40
.Lx696_56:              cmp              al, 72;                              jne   .Lx696_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx696_41
                        cmp              rax, r8;                             je    .Lx696_41
                        mov              r8, rax;                             jmp   .Lx696_40
.Lx696_41:              lea              r9, [rsp + 2544]
.Lx696_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx696_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx696_43
                        cmp              esi, 1;                              jne   .Lx696_57
                        mov              r9, rax;                             jmp   .Lx696_42
.Lx696_57:              cmp              esi, 2;                              jne   .Lx696_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx696_43
                        mov              r9, rax;                             jmp   .Lx696_42
.Lx696_58:              cmp              al, 72;                              jne   .Lx696_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx696_43
                        cmp              rax, r9;                             je    .Lx696_43
                        mov              r9, rax;                             jmp   .Lx696_42
.Lx696_43:              cmp              r8, r9;                              je    .Lx696_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx696_44
                        cmp              al, 104;                             je    .Lx696_44
                        cmp              al, 72;                              jne   .Lx696_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx696_44
                                                                              jmp   .Lx696_45
.Lx696_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx696_53
                        cmp              al, 104;                             je    .Lx696_53
                        cmp              al, 72;                              jne   .Lx696_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx696_53
                                                                              jmp   .Lx696_46
.Lx696_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx696_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx696_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx696_51
.Lx696_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx696_47
                        cmp              al, 104;                             je    .Lx696_47
                        cmp              al, 72;                              jne   .Lx696_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx696_47
                                                                              jmp   .Lx696_48
.Lx696_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx696_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx696_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx696_51
.Lx696_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx696_49
                        cmp              dl, 80;                              je    .Lx696_53
                                                                              jmp   .Lx696_52
.Lx696_49:              cmp              dl, 80;                              je    .Lx696_52
                        cmp              cl, 5;                               je    .Lx696_53
                        cmp              dl, 5;                               je    .Lx696_53
                        cmp              cl, 3;                               jne   .Lx696_50
                        cmp              dl, 3;                               jne   .Lx696_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx696_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx696_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx696_51
                                                                              jmp   .Lx696_52
.Lx696_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx696_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx696_53
.Lx696_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx696_54
.Lx696_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx696_54
.Lx696_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx696_54:              mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_var_α
n235_call_builtin_prolog_β:
                        mov              r11, 236;                            jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n237_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     mov              r11, 238
                        mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n238_call_builtin_prolog_α
.Lx699_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
                        mov              r11, 239
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2456], rax
                        lea              rdi, [rsp + 2448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_cut_α
n238_call_builtin_prolog_β:
                        mov              r11, 239;                            jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_cut_α:             mov              r11, 240;                            jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n241_var_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n243_call_builtin_prolog_α
.Lx706_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_prolog_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_call_builtin_prolog_α
n243_call_builtin_prolog_β:
                        mov              r11, 244;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              r11, 245
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        lea              rdi, [rsp + 2288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_var_ref_α
n244_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n247_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_proc_staged_α:
                        mov              r11, 248
                        lea              rsi, [rsp + 2240]
                        lea              rdx, [rsp + 2256]
                        call             roman$2F2_dcα;                       jmp   .Lx714_2
.Lx714_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx714_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
.Lx714_29:              mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n248_lit_string_α
n247_call_proc_staged_β:
                        mov              r11, 248;                            jmp   n326_call_builtin_prolog_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 2
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n249_var_ref_α
.Lx715_0:               .quad            .Lx715_0_s
.Lx715_0_s:             .string          "IX"
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n251_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn721:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n252_move_label_α
n251_call_builtin_prolog_β:
                        mov              r11, 252;                            jmp   n247_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n252_move_label_α:      mov              r11, 253
                        lea              rax, [rip + n247_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2056], rax
                        lea              rdi, [rsp + 2048]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_var_ref_α
n253_call_builtin_prolog_β:
                        mov              r11, 254;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              r11, 257
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        lea              r8, [rsp + 1968]
.Lx729_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              esi, 1;                              jne   .Lx729_55
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_55:              cmp              esi, 2;                              jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_56:              cmp              al, 72;                              jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              rax, r8;                             je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_41:              lea              r9, [rsp + 1984]
.Lx729_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              esi, 1;                              jne   .Lx729_57
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_57:              cmp              esi, 2;                              jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_58:              cmp              al, 72;                              jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              rax, r9;                             je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_43:              cmp              r8, r9;                              je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx729_44
                        cmp              al, 104;                             je    .Lx729_44
                        cmp              al, 72;                              jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx729_44
                                                                              jmp   .Lx729_45
.Lx729_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx729_53
                        cmp              al, 104;                             je    .Lx729_53
                        cmp              al, 72;                              jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_53
                                                                              jmp   .Lx729_46
.Lx729_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx729_51
.Lx729_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx729_47
                        cmp              al, 104;                             je    .Lx729_47
                        cmp              al, 72;                              jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_47
                                                                              jmp   .Lx729_48
.Lx729_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx729_51
.Lx729_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx729_49
                        cmp              dl, 80;                              je    .Lx729_53
                                                                              jmp   .Lx729_52
.Lx729_49:              cmp              dl, 80;                              je    .Lx729_52
                        cmp              cl, 5;                               je    .Lx729_53
                        cmp              dl, 5;                               je    .Lx729_53
                        cmp              cl, 3;                               jne   .Lx729_50
                        cmp              dl, 3;                               jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx729_51
                                                                              jmp   .Lx729_52
.Lx729_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx729_53
.Lx729_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx729_54
.Lx729_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx729_54
.Lx729_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx729_54:              mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n277_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n257_var_ref_α
n256_call_builtin_prolog_β:
                        mov              r11, 257;                            jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
                        mov              r11, 260
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lx734_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              esi, 1;                              jne   .Lx734_55
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_55:              cmp              esi, 2;                              jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_56:              cmp              al, 72;                              jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              rax, r8;                             je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_41:              lea              r9, [rsp + 1904]
.Lx734_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              esi, 1;                              jne   .Lx734_57
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_57:              cmp              esi, 2;                              jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_58:              cmp              al, 72;                              jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              rax, r9;                             je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_43:              cmp              r8, r9;                              je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx734_44
                        cmp              al, 104;                             je    .Lx734_44
                        cmp              al, 72;                              jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx734_44
                                                                              jmp   .Lx734_45
.Lx734_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx734_53
                        cmp              al, 104;                             je    .Lx734_53
                        cmp              al, 72;                              jne   .Lx734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_53
                                                                              jmp   .Lx734_46
.Lx734_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx734_51
.Lx734_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx734_47
                        cmp              al, 104;                             je    .Lx734_47
                        cmp              al, 72;                              jne   .Lx734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_47
                                                                              jmp   .Lx734_48
.Lx734_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx734_51
.Lx734_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx734_49
                        cmp              dl, 80;                              je    .Lx734_53
                                                                              jmp   .Lx734_52
.Lx734_49:              cmp              dl, 80;                              je    .Lx734_52
                        cmp              cl, 5;                               je    .Lx734_53
                        cmp              dl, 5;                               je    .Lx734_53
                        cmp              cl, 3;                               jne   .Lx734_50
                        cmp              dl, 3;                               jne   .Lx734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx734_51
                                                                              jmp   .Lx734_52
.Lx734_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx734_53
.Lx734_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx734_54
.Lx734_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx734_54
.Lx734_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx734_54:              mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n277_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n260_var_α
n259_call_builtin_prolog_β:
                        mov              r11, 260;                            jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n262_call_builtin_prolog_α
.Lx737_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
                        mov              r11, 263
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n277_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_cut_α
n262_call_builtin_prolog_β:
                        mov              r11, 263;                            jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n263_cut_α:             mov              r11, 264;                            jmp   n264_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              r11, 266
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 267
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n267_call_builtin_prolog_α
.Lx744_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_prolog_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_call_builtin_prolog_α
n267_call_builtin_prolog_β:
                        mov              r11, 268;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              r11, 269
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n269_var_ref_α
n268_call_builtin_prolog_β:
                        mov              r11, 269;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n270_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n271_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        mov              r11, 272
                        lea              rsi, [rsp + 1600]
                        lea              rdx, [rsp + 1616]
                        call             roman$2F2_dcα;                       jmp   .Lx752_2
.Lx752_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx752_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
.Lx752_29:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n272_lit_string_α
n271_call_proc_staged_β:
                        mov              r11, 272;                            jmp   n326_call_builtin_prolog_α
.Lx752_0:               .quad            .Lx752_0_s
.Lx752_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 1
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n273_var_ref_α
.Lx753_0:               .quad            .Lx753_0_s
.Lx753_0_s:             .string          "V"
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n274_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_prolog_α:
                        mov              r11, 276
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
                        .section         .rodata
.Lrkfn759:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn759]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n271_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n276_move_label_α
n275_call_builtin_prolog_β:
                        mov              r11, 276;                            jmp   n271_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n276_move_label_α:      mov              r11, 277
                        lea              rax, [rip + n271_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_prolog_α:
                        mov              r11, 278
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n278_var_ref_α
n277_call_builtin_prolog_β:
                        mov              r11, 278;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n279_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n280_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
                        mov              r11, 281
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        lea              r8, [rsp + 1328]
.Lx767_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx767_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx767_41
                        cmp              esi, 1;                              jne   .Lx767_55
                        mov              r8, rax;                             jmp   .Lx767_40
.Lx767_55:              cmp              esi, 2;                              jne   .Lx767_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx767_41
                        mov              r8, rax;                             jmp   .Lx767_40
.Lx767_56:              cmp              al, 72;                              jne   .Lx767_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx767_41
                        cmp              rax, r8;                             je    .Lx767_41
                        mov              r8, rax;                             jmp   .Lx767_40
.Lx767_41:              lea              r9, [rsp + 1344]
.Lx767_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx767_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx767_43
                        cmp              esi, 1;                              jne   .Lx767_57
                        mov              r9, rax;                             jmp   .Lx767_42
.Lx767_57:              cmp              esi, 2;                              jne   .Lx767_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx767_43
                        mov              r9, rax;                             jmp   .Lx767_42
.Lx767_58:              cmp              al, 72;                              jne   .Lx767_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx767_43
                        cmp              rax, r9;                             je    .Lx767_43
                        mov              r9, rax;                             jmp   .Lx767_42
.Lx767_43:              cmp              r8, r9;                              je    .Lx767_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx767_44
                        cmp              al, 104;                             je    .Lx767_44
                        cmp              al, 72;                              jne   .Lx767_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx767_44
                                                                              jmp   .Lx767_45
.Lx767_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx767_53
                        cmp              al, 104;                             je    .Lx767_53
                        cmp              al, 72;                              jne   .Lx767_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx767_53
                                                                              jmp   .Lx767_46
.Lx767_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx767_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx767_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx767_51
.Lx767_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx767_47
                        cmp              al, 104;                             je    .Lx767_47
                        cmp              al, 72;                              jne   .Lx767_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx767_47
                                                                              jmp   .Lx767_48
.Lx767_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx767_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx767_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx767_51
.Lx767_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx767_49
                        cmp              dl, 80;                              je    .Lx767_53
                                                                              jmp   .Lx767_52
.Lx767_49:              cmp              dl, 80;                              je    .Lx767_52
                        cmp              cl, 5;                               je    .Lx767_53
                        cmp              dl, 5;                               je    .Lx767_53
                        cmp              cl, 3;                               jne   .Lx767_50
                        cmp              dl, 3;                               jne   .Lx767_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx767_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx767_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx767_51
                                                                              jmp   .Lx767_52
.Lx767_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx767_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx767_53
.Lx767_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx767_54
.Lx767_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx767_54
.Lx767_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx767_54:              mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n301_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                        mov              r11, 281;                            jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n282_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n283_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        mov              r11, 284
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        lea              r8, [rsp + 1248]
.Lx772_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx772_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx772_41
                        cmp              esi, 1;                              jne   .Lx772_55
                        mov              r8, rax;                             jmp   .Lx772_40
.Lx772_55:              cmp              esi, 2;                              jne   .Lx772_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx772_41
                        mov              r8, rax;                             jmp   .Lx772_40
.Lx772_56:              cmp              al, 72;                              jne   .Lx772_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx772_41
                        cmp              rax, r8;                             je    .Lx772_41
                        mov              r8, rax;                             jmp   .Lx772_40
.Lx772_41:              lea              r9, [rsp + 1264]
.Lx772_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx772_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx772_43
                        cmp              esi, 1;                              jne   .Lx772_57
                        mov              r9, rax;                             jmp   .Lx772_42
.Lx772_57:              cmp              esi, 2;                              jne   .Lx772_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx772_43
                        mov              r9, rax;                             jmp   .Lx772_42
.Lx772_58:              cmp              al, 72;                              jne   .Lx772_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx772_43
                        cmp              rax, r9;                             je    .Lx772_43
                        mov              r9, rax;                             jmp   .Lx772_42
.Lx772_43:              cmp              r8, r9;                              je    .Lx772_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx772_44
                        cmp              al, 104;                             je    .Lx772_44
                        cmp              al, 72;                              jne   .Lx772_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx772_44
                                                                              jmp   .Lx772_45
.Lx772_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx772_53
                        cmp              al, 104;                             je    .Lx772_53
                        cmp              al, 72;                              jne   .Lx772_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx772_53
                                                                              jmp   .Lx772_46
.Lx772_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx772_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx772_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx772_51
.Lx772_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx772_47
                        cmp              al, 104;                             je    .Lx772_47
                        cmp              al, 72;                              jne   .Lx772_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx772_47
                                                                              jmp   .Lx772_48
.Lx772_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx772_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx772_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx772_51
.Lx772_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx772_49
                        cmp              dl, 80;                              je    .Lx772_53
                                                                              jmp   .Lx772_52
.Lx772_49:              cmp              dl, 80;                              je    .Lx772_52
                        cmp              cl, 5;                               je    .Lx772_53
                        cmp              dl, 5;                               je    .Lx772_53
                        cmp              cl, 3;                               jne   .Lx772_50
                        cmp              dl, 3;                               jne   .Lx772_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx772_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx772_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx772_51
                                                                              jmp   .Lx772_52
.Lx772_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx772_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx772_53
.Lx772_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx772_54
.Lx772_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx772_54
.Lx772_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx772_54:              mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n301_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_var_α
n283_call_builtin_prolog_β:
                        mov              r11, 284;                            jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             mov              r11, 285
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n285_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     mov              r11, 286
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n286_call_builtin_prolog_α
.Lx775_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              r11, 287
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n301_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_cut_α
n286_call_builtin_prolog_β:
                        mov              r11, 287;                            jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n287_cut_α:             mov              r11, 288;                            jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             mov              r11, 290
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n290_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n291_call_builtin_prolog_α
.Lx782_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        mov              r11, 292
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_call_builtin_prolog_α
n291_call_builtin_prolog_β:
                        mov              r11, 292;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              r11, 293
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n293_var_ref_α
n292_call_builtin_prolog_β:
                        mov              r11, 293;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n294_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n295_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_proc_staged_α:
                        mov              r11, 296
                        lea              rsi, [rsp + 960]
                        lea              rdx, [rsp + 976]
                        call             roman$2F2_dcα;                       jmp   .Lx790_2
.Lx790_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx790_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
.Lx790_29:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n296_lit_string_α
n295_call_proc_staged_β:
                        mov              r11, 296;                            jmp   n326_call_builtin_prolog_α
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 2
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n297_var_ref_α
.Lx791_0:               .quad            .Lx791_0_s
.Lx791_0_s:             .string          "IV"
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              r11, 300
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
                        .section         .rodata
.Lrkfn797:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]
                        lea              rsi, [rsp + 800]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n295_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n300_move_label_α
n299_call_builtin_prolog_β:
                        mov              r11, 300;                            jmp   n295_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n300_move_label_α:      mov              r11, 301
                        lea              rax, [rip + n295_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_prolog_α:
                        mov              r11, 302
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n302_var_ref_α
n301_call_builtin_prolog_β:
                        mov              r11, 302;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 304
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8784]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              r11, 305
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx805_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx805_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx805_41
                        cmp              esi, 1;                              jne   .Lx805_55
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_55:              cmp              esi, 2;                              jne   .Lx805_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx805_41
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_56:              cmp              al, 72;                              jne   .Lx805_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx805_41
                        cmp              rax, r8;                             je    .Lx805_41
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_41:              lea              r9, [rsp + 704]
.Lx805_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx805_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx805_43
                        cmp              esi, 1;                              jne   .Lx805_57
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_57:              cmp              esi, 2;                              jne   .Lx805_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx805_43
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_58:              cmp              al, 72;                              jne   .Lx805_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx805_43
                        cmp              rax, r9;                             je    .Lx805_43
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_43:              cmp              r8, r9;                              je    .Lx805_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx805_44
                        cmp              al, 104;                             je    .Lx805_44
                        cmp              al, 72;                              jne   .Lx805_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx805_44
                                                                              jmp   .Lx805_45
.Lx805_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx805_53
                        cmp              al, 104;                             je    .Lx805_53
                        cmp              al, 72;                              jne   .Lx805_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx805_53
                                                                              jmp   .Lx805_46
.Lx805_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx805_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx805_51
.Lx805_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx805_47
                        cmp              al, 104;                             je    .Lx805_47
                        cmp              al, 72;                              jne   .Lx805_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx805_47
                                                                              jmp   .Lx805_48
.Lx805_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx805_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx805_51
.Lx805_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx805_49
                        cmp              dl, 80;                              je    .Lx805_53
                                                                              jmp   .Lx805_52
.Lx805_49:              cmp              dl, 80;                              je    .Lx805_52
                        cmp              cl, 5;                               je    .Lx805_53
                        cmp              dl, 5;                               je    .Lx805_53
                        cmp              cl, 3;                               jne   .Lx805_50
                        cmp              dl, 3;                               jne   .Lx805_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx805_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx805_51
                                                                              jmp   .Lx805_52
.Lx805_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx805_53
.Lx805_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx805_54
.Lx805_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx805_54
.Lx805_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx805_54:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_var_ref_α
n304_call_builtin_prolog_β:
                        mov              r11, 305;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
                        mov              r11, 308
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lx810_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx810_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx810_41
                        cmp              esi, 1;                              jne   .Lx810_55
                        mov              r8, rax;                             jmp   .Lx810_40
.Lx810_55:              cmp              esi, 2;                              jne   .Lx810_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx810_41
                        mov              r8, rax;                             jmp   .Lx810_40
.Lx810_56:              cmp              al, 72;                              jne   .Lx810_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx810_41
                        cmp              rax, r8;                             je    .Lx810_41
                        mov              r8, rax;                             jmp   .Lx810_40
.Lx810_41:              lea              r9, [rsp + 624]
.Lx810_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx810_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx810_43
                        cmp              esi, 1;                              jne   .Lx810_57
                        mov              r9, rax;                             jmp   .Lx810_42
.Lx810_57:              cmp              esi, 2;                              jne   .Lx810_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx810_43
                        mov              r9, rax;                             jmp   .Lx810_42
.Lx810_58:              cmp              al, 72;                              jne   .Lx810_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx810_43
                        cmp              rax, r9;                             je    .Lx810_43
                        mov              r9, rax;                             jmp   .Lx810_42
.Lx810_43:              cmp              r8, r9;                              je    .Lx810_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx810_44
                        cmp              al, 104;                             je    .Lx810_44
                        cmp              al, 72;                              jne   .Lx810_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx810_44
                                                                              jmp   .Lx810_45
.Lx810_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx810_53
                        cmp              al, 104;                             je    .Lx810_53
                        cmp              al, 72;                              jne   .Lx810_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx810_53
                                                                              jmp   .Lx810_46
.Lx810_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx810_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx810_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx810_51
.Lx810_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx810_47
                        cmp              al, 104;                             je    .Lx810_47
                        cmp              al, 72;                              jne   .Lx810_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx810_47
                                                                              jmp   .Lx810_48
.Lx810_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx810_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx810_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx810_51
.Lx810_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx810_49
                        cmp              dl, 80;                              je    .Lx810_53
                                                                              jmp   .Lx810_52
.Lx810_49:              cmp              dl, 80;                              je    .Lx810_52
                        cmp              cl, 5;                               je    .Lx810_53
                        cmp              dl, 5;                               je    .Lx810_53
                        cmp              cl, 3;                               jne   .Lx810_50
                        cmp              dl, 3;                               jne   .Lx810_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx810_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx810_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx810_51
                                                                              jmp   .Lx810_52
.Lx810_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx810_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx810_53
.Lx810_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx810_54
.Lx810_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx810_54
.Lx810_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx810_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n308_var_α
n307_call_builtin_prolog_β:
                        mov              r11, 308;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             mov              r11, 309
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 568], rax;          jmp   n309_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n310_call_builtin_prolog_α
.Lx813_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_prolog_α:
                        mov              r11, 311
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n311_cut_α
n310_call_builtin_prolog_β:
                        mov              r11, 311;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_cut_α:             mov              r11, 312;                            jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              r11, 314
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 488], rax;          jmp   n314_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:     mov              r11, 315
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n315_call_builtin_prolog_α
.Lx820_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              r11, 316
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n316_call_builtin_prolog_α
n315_call_builtin_prolog_β:
                        mov              r11, 316;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              r11, 317
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_var_ref_α
n316_call_builtin_prolog_β:
                        mov              r11, 317;                            jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8768]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n319_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_proc_staged_α:
                        mov              r11, 320
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 336]
                        call             roman$2F2_dcα;                       jmp   .Lx828_2
.Lx828_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx828_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx828_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                                                                              jmp   n320_lit_string_α
n319_call_proc_staged_β:
                        mov              r11, 320;                            jmp   n326_call_builtin_prolog_α
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n321_var_ref_α
.Lx829_0:               .quad            .Lx829_0_s
.Lx829_0_s:             .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8736]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n322_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8752]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n323_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
                        mov              r11, 324
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn835:              .string          "$atom_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn835]
                        lea              rsi, [rsp + 160]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n319_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n324_move_label_α
n323_call_builtin_prolog_β:
                        mov              r11, 324;                            jmp   n319_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n324_move_label_α:      mov              r11, 325
                        lea              rax, [rip + n319_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   roman$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n325_disjunction_α:     mov              r11, 326
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    roman$2F2_ω
                                                                              jmp   rax
n325_disjunction_β:     mov              r11, 326;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              r11, 327
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
                        cmp              al, 104;                             je    roman$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   roman$2F2_ω
n326_call_builtin_prolog_β:
                        mov              r11, 327;                            jmp   roman$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
roman$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
roman$2F2_β:
                                                                              jmp   n325_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
roman$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8824]
                        add              rsp, 8848;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
roman$2F2_ω:
                        mov              rcx, qword ptr [rsp + 8832]
                        add              rsp, 8848;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
roman$2F2_dcα:
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
                        lea              rcx, [rip + .Lx841_2]
                        lea              rdx, [rip + .Lx841_3];               jmp   FN__roman$2F2
.Lx841_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx841_3:               pop              r11
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
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 736
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
n842_call_builtin_prolog_α:
                        mov              r11, 328
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx867_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx867_101
.Lx867_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx867_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx867_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx867_101
.Lx867_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx867_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n843_lit_integer_α
n842_call_builtin_prolog_β:
                        mov              r11, 328;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n843_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n844_var_ref_α
.Lx868_0:               .quad            1776
#-----------------------------------------------------------------------------------------------------------------------
n844_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n845_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n845_call_proc_staged_α:
                        mov              r11, 331
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 656]
                        call             roman$2F2_dcα;                       jmp   .Lx872_2
.Lx872_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx872_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lx872_29:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n866_call_builtin_prolog_α
                                                                              jmp   n846_var_α
n845_call_proc_staged_β:
                        mov              r11, 331;                            jmp   n866_call_builtin_prolog_α
.Lx872_0:               .quad            .Lx872_0_s
.Lx872_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n847_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n847_call_builtin_prolog_α:
                        mov              r11, 333
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn876:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn876]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n845_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n848_lit_string_α
n847_call_builtin_prolog_β:
                        mov              r11, 333;                            jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n848_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 0
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n849_call_builtin_prolog_α
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n849_call_builtin_prolog_α:
                        mov              r11, 335
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn879:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n845_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n850_lit_integer_α
n849_call_builtin_prolog_β:
                        mov              r11, 335;                            jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n851_var_ref_α
.Lx880_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n851_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n852_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n852_call_proc_staged_α:
                        mov              r11, 338
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 464]
                        call             roman$2F2_dcα;                       jmp   .Lx884_2
.Lx884_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx884_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx884_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n845_call_proc_staged_β
                                                                              jmp   n853_var_α
n852_call_proc_staged_β:
                        mov              r11, 338;                            jmp   n845_call_proc_staged_β
.Lx884_0:               .quad            .Lx884_0_s
.Lx884_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 376], rax;          jmp   n854_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n854_call_builtin_prolog_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn888:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn888]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n852_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n855_lit_string_α
n854_call_builtin_prolog_β:
                        mov              r11, 340;                            jmp   n852_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 0
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n856_call_builtin_prolog_α
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n856_call_builtin_prolog_α:
                        mov              r11, 342
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn891:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn891]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n852_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n857_lit_integer_α
n856_call_builtin_prolog_β:
                        mov              r11, 342;                            jmp   n852_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n858_var_ref_α
.Lx892_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n858_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n859_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n859_call_proc_staged_α:
                        mov              r11, 345
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 272]
                        call             roman$2F2_dcα;                       jmp   .Lx896_2
.Lx896_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx896_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx896_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n852_call_proc_staged_β
                                                                              jmp   n860_var_α
n859_call_proc_staged_β:
                        mov              r11, 345;                            jmp   n852_call_proc_staged_β
.Lx896_0:               .quad            .Lx896_0_s
.Lx896_0_s:             .string          "roman/2"
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:             mov              r11, 346
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 184], rax;          jmp   n861_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n861_call_builtin_prolog_α:
                        mov              r11, 347
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn900:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n859_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n862_lit_string_α
n861_call_builtin_prolog_β:
                        mov              r11, 347;                            jmp   n859_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n862_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n863_call_builtin_prolog_α
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n863_call_builtin_prolog_α:
                        mov              r11, 349
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn903:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn903]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n859_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n864_move_label_α
n863_call_builtin_prolog_β:
                        mov              r11, 349;                            jmp   n859_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n864_move_label_α:      mov              r11, 350
                        lea              rax, [rip + n859_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n865_disjunction_α:     mov              r11, 351
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n865_disjunction_β:     mov              r11, 351;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n866_call_builtin_prolog_α:
                        mov              r11, 352
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
n866_call_builtin_prolog_β:
                        mov              r11, 352;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n865_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "roman/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__roman$2F2
                        .quad            roman$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            8800
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
