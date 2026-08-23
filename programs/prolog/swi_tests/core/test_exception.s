                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 4144
                        mov              qword ptr [rsp + 4120], rcx
                        mov              qword ptr [rsp + 4128], rdx
                        mov              qword ptr [rsp + 4136], rsp
                        mov              rdi, rsp
                        mov              esi, 4048
                        mov              edx, 4112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
test$2F2_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx126_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx126_101
.Lx126_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx126_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx126_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx126_101
.Lx126_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx126_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 5
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n3_call_builtin_prolog_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3992], rax
                        lea              rdi, [rsp + 3984]
                        mov              rsi, qword ptr [rip + .Lx130_2];     jmp   .Lx130_3
.Lx130_2:               .quad            .Lx130_2_s
.Lx130_2_s:             .string          "error"
.Lx130_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 5
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n6_lit_string_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 19
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n7_call_builtin_prolog_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_call_builtin_prolog_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3832], rax
                        lea              rdi, [rsp + 3824]
                        lea              r8, [rsp + 3824]
.Lx136_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx136_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              esi, 1;                              jne   .Lx136_55
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_55:              cmp              esi, 2;                              jne   .Lx136_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_56:              cmp              al, 72;                              jne   .Lx136_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              rax, r8;                             je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_41:              lea              r9, [rsp + 3840]
.Lx136_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx136_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              esi, 1;                              jne   .Lx136_57
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_57:              cmp              esi, 2;                              jne   .Lx136_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_58:              cmp              al, 72;                              jne   .Lx136_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              rax, r9;                             je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_43:              cmp              r8, r9;                              je    .Lx136_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx136_44
                        cmp              al, 104;                             je    .Lx136_44
                        cmp              al, 72;                              jne   .Lx136_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx136_44
                                                                              jmp   .Lx136_45
.Lx136_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx136_53
                        cmp              al, 104;                             je    .Lx136_53
                        cmp              al, 72;                              jne   .Lx136_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_53
                                                                              jmp   .Lx136_46
.Lx136_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx136_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx136_51
.Lx136_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx136_47
                        cmp              al, 104;                             je    .Lx136_47
                        cmp              al, 72;                              jne   .Lx136_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_47
                                                                              jmp   .Lx136_48
.Lx136_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx136_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx136_51
.Lx136_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx136_49
                        cmp              dl, 80;                              je    .Lx136_53
                                                                              jmp   .Lx136_52
.Lx136_49:              cmp              dl, 80;                              je    .Lx136_52
                        cmp              cl, 5;                               je    .Lx136_53
                        cmp              dl, 5;                               je    .Lx136_53
                        cmp              cl, 3;                               jne   .Lx136_50
                        cmp              dl, 3;                               jne   .Lx136_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx136_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx136_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx136_51
                                                                              jmp   .Lx136_52
.Lx136_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx136_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx136_53
.Lx136_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx136_54
.Lx136_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx136_54
.Lx136_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx136_54:              mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx;         jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3784], rax
                        .section         .rodata
.Lrkfn140:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rsp + 3776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx142_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx142_61:              mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3736], rax
                        lea              rdi, [rsp + 3728]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 3696], 2            # result
                        mov              dword ptr [rsp + 3700], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n15_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "ground"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3656], rax
                        lea              rdi, [rsp + 3648]
                        mov              rsi, qword ptr [rip + .Lx147_2];     jmp   .Lx147_3
.Lx147_2:               .quad            .Lx147_2_s
.Lx147_2_s:             .string          "ground"
.Lx147_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n18_lit_string_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 3536], 2            # result
                        mov              dword ptr [rsp + 3540], 5
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n19_lit_string_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 3456], 2            # result
                        mov              dword ptr [rsp + 3460], 5
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n20_call_builtin_prolog_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3496], rax
                        lea              rdi, [rsp + 3488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3576], rax
                        lea              rdi, [rsp + 3568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3432], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3416], rax
                        lea              rdi, [rsp + 3408]
                        lea              r8, [rsp + 3408]
.Lx155_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx155_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              esi, 1;                              jne   .Lx155_55
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_55:              cmp              esi, 2;                              jne   .Lx155_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_56:              cmp              al, 72;                              jne   .Lx155_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              rax, r8;                             je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_41:              lea              r9, [rsp + 3424]
.Lx155_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx155_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              esi, 1;                              jne   .Lx155_57
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_57:              cmp              esi, 2;                              jne   .Lx155_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_58:              cmp              al, 72;                              jne   .Lx155_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              rax, r9;                             je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_43:              cmp              r8, r9;                              je    .Lx155_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx155_44
                        cmp              al, 104;                             je    .Lx155_44
                        cmp              al, 72;                              jne   .Lx155_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx155_44
                                                                              jmp   .Lx155_45
.Lx155_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_53
                        cmp              al, 104;                             je    .Lx155_53
                        cmp              al, 72;                              jne   .Lx155_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_53
                                                                              jmp   .Lx155_46
.Lx155_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx155_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx155_51
.Lx155_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_47
                        cmp              al, 104;                             je    .Lx155_47
                        cmp              al, 72;                              jne   .Lx155_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_47
                                                                              jmp   .Lx155_48
.Lx155_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx155_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx155_51
.Lx155_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx155_49
                        cmp              dl, 80;                              je    .Lx155_53
                                                                              jmp   .Lx155_52
.Lx155_49:              cmp              dl, 80;                              je    .Lx155_52
                        cmp              cl, 5;                               je    .Lx155_53
                        cmp              dl, 5;                               je    .Lx155_53
                        cmp              cl, 3;                               jne   .Lx155_50
                        cmp              dl, 3;                               jne   .Lx155_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx155_51
                                                                              jmp   .Lx155_52
.Lx155_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx155_53
.Lx155_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx155_54
.Lx155_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx155_54
.Lx155_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx155_54:              mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 5
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n24_lit_string_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 5
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n25_call_builtin_prolog_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3336], rax
                        lea              rdi, [rsp + 3328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_call_builtin_prolog_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3288], rax
                        .section         .rodata
.Lrkfn160:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_suspend_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_suspend_α:          mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx162_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx162_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n27_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n27_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n27_suspend_β:          mov              r11, 28;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3240], rax
                        lea              rdi, [rsp + 3232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 7
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n31_call_builtin_prolog_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "unbound"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3160], rax
                        lea              rdi, [rsp + 3152]
                        mov              rsi, qword ptr [rip + .Lx167_2];     jmp   .Lx167_3
.Lx167_2:               .quad            .Lx167_2_s
.Lx167_2_s:             .string          "unbound"
.Lx167_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 3120], 2            # result
                        mov              dword ptr [rsp + 3124], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n34_lit_string_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 5
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n35_lit_string_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 2944], 2            # result
                        mov              dword ptr [rsp + 2948], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n36_var_ref_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 5
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n38_var_ref_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4080]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_call_builtin_prolog_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2920], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2888], rax
                        lea              rdi, [rsp + 2880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_call_builtin_prolog_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 2984], rax
                        lea              rdi, [rsp + 2976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_lit_string_α
n41_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n43_lit_string_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n44_var_ref_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        lea              rdi, [rsp + 2592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_lit_string_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 2
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n47_call_builtin_prolog_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_call_builtin_prolog_α
n47_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3064], rax
                        lea              rdi, [rsp + 3056]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        lea              r8, [rsp + 2496]
.Lx189_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx189_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx189_41
                        cmp              esi, 1;                              jne   .Lx189_55
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_55:              cmp              esi, 2;                              jne   .Lx189_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx189_41
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_56:              cmp              al, 72;                              jne   .Lx189_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx189_41
                        cmp              rax, r8;                             je    .Lx189_41
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_41:              lea              r9, [rsp + 2512]
.Lx189_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx189_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx189_43
                        cmp              esi, 1;                              jne   .Lx189_57
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_57:              cmp              esi, 2;                              jne   .Lx189_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx189_43
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_58:              cmp              al, 72;                              jne   .Lx189_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx189_43
                        cmp              rax, r9;                             je    .Lx189_43
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_43:              cmp              r8, r9;                              je    .Lx189_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx189_44
                        cmp              al, 104;                             je    .Lx189_44
                        cmp              al, 72;                              jne   .Lx189_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx189_44
                                                                              jmp   .Lx189_45
.Lx189_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx189_53
                        cmp              al, 104;                             je    .Lx189_53
                        cmp              al, 72;                              jne   .Lx189_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx189_53
                                                                              jmp   .Lx189_46
.Lx189_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx189_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx189_51
.Lx189_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx189_47
                        cmp              al, 104;                             je    .Lx189_47
                        cmp              al, 72;                              jne   .Lx189_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx189_47
                                                                              jmp   .Lx189_48
.Lx189_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx189_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx189_51
.Lx189_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx189_49
                        cmp              dl, 80;                              je    .Lx189_53
                                                                              jmp   .Lx189_52
.Lx189_49:              cmp              dl, 80;                              je    .Lx189_52
                        cmp              cl, 5;                               je    .Lx189_53
                        cmp              dl, 5;                               je    .Lx189_53
                        cmp              cl, 3;                               jne   .Lx189_50
                        cmp              dl, 3;                               jne   .Lx189_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx189_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx189_51
                                                                              jmp   .Lx189_52
.Lx189_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx189_53
.Lx189_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx189_54
.Lx189_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx189_54
.Lx189_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_54:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_var_ref_α
n49_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn193:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_suspend_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_suspend_α:          mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx195_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx195_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n52_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n52_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n52_suspend_β:          mov              r11, 53;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2408], rax
                        lea              rdi, [rsp + 2400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_var_ref_α
n53_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n56_call_builtin_prolog_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "cyclic"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2328], rax
                        lea              rdi, [rsp + 2320]
                        mov              rsi, qword ptr [rip + .Lx200_2];     jmp   .Lx200_3
.Lx200_2:               .quad            .Lx200_2_s
.Lx200_2_s:             .string          "cyclic"
.Lx200_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n83_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n59_lit_string_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 3
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n60_lit_string_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 14
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n61_call_builtin_prolog_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_lit_string_α
n61_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n63_lit_string_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 5
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n64_lit_string_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n65_var_ref_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 5
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n67_var_ref_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_call_builtin_prolog_α
n68_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1864], rax
                        lea              rdi, [rsp + 1856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_call_builtin_prolog_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        lea              rdi, [rsp + 1952]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_lit_string_α
n70_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n72_lit_string_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n73_var_ref_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_lit_string_α
n74_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n76_call_builtin_prolog_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_call_builtin_prolog_α
n76_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        lea              rdi, [rsp + 2032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_call_builtin_prolog_α
n77_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2232], rax
                        lea              rdi, [rsp + 2224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n83_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_call_builtin_prolog_α
n78_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        lea              r8, [rsp + 1472]
.Lx227_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx227_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx227_41
                        cmp              esi, 1;                              jne   .Lx227_55
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_55:              cmp              esi, 2;                              jne   .Lx227_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx227_41
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_56:              cmp              al, 72;                              jne   .Lx227_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx227_41
                        cmp              rax, r8;                             je    .Lx227_41
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_41:              lea              r9, [rsp + 1488]
.Lx227_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx227_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx227_43
                        cmp              esi, 1;                              jne   .Lx227_57
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_57:              cmp              esi, 2;                              jne   .Lx227_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx227_43
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_58:              cmp              al, 72;                              jne   .Lx227_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx227_43
                        cmp              rax, r9;                             je    .Lx227_43
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_43:              cmp              r8, r9;                              je    .Lx227_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx227_44
                        cmp              al, 104;                             je    .Lx227_44
                        cmp              al, 72;                              jne   .Lx227_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx227_44
                                                                              jmp   .Lx227_45
.Lx227_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx227_53
                        cmp              al, 104;                             je    .Lx227_53
                        cmp              al, 72;                              jne   .Lx227_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx227_53
                                                                              jmp   .Lx227_46
.Lx227_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx227_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx227_51
.Lx227_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx227_47
                        cmp              al, 104;                             je    .Lx227_47
                        cmp              al, 72;                              jne   .Lx227_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx227_47
                                                                              jmp   .Lx227_48
.Lx227_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx227_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx227_51
.Lx227_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx227_49
                        cmp              dl, 80;                              je    .Lx227_53
                                                                              jmp   .Lx227_52
.Lx227_49:              cmp              dl, 80;                              je    .Lx227_52
                        cmp              cl, 5;                               je    .Lx227_53
                        cmp              dl, 5;                               je    .Lx227_53
                        cmp              cl, 3;                               jne   .Lx227_50
                        cmp              dl, 3;                               jne   .Lx227_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx227_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx227_51
                                                                              jmp   .Lx227_52
.Lx227_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx227_53
.Lx227_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx227_54
.Lx227_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx227_54
.Lx227_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx227_54:              mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n83_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn231:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n83_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_suspend_α
n81_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:          mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx233_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx233_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n82_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n82_suspend_β:          mov              r11, 83;                             jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 3
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n86_call_builtin_prolog_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              rsi, qword ptr [rip + .Lx238_2];     jmp   .Lx238_3
.Lx238_2:               .quad            .Lx238_2_s
.Lx238_2_s:             .string          "not"
.Lx238_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_var_ref_α
n86_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 5
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n89_lit_string_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 3
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n90_call_builtin_prolog_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_call_builtin_prolog_α
n90_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        lea              r8, [rsp + 1136]
.Lx244_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx244_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx244_41
                        cmp              esi, 1;                              jne   .Lx244_55
                        mov              r8, rax;                             jmp   .Lx244_40
.Lx244_55:              cmp              esi, 2;                              jne   .Lx244_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx244_41
                        mov              r8, rax;                             jmp   .Lx244_40
.Lx244_56:              cmp              al, 72;                              jne   .Lx244_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx244_41
                        cmp              rax, r8;                             je    .Lx244_41
                        mov              r8, rax;                             jmp   .Lx244_40
.Lx244_41:              lea              r9, [rsp + 1152]
.Lx244_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx244_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx244_43
                        cmp              esi, 1;                              jne   .Lx244_57
                        mov              r9, rax;                             jmp   .Lx244_42
.Lx244_57:              cmp              esi, 2;                              jne   .Lx244_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx244_43
                        mov              r9, rax;                             jmp   .Lx244_42
.Lx244_58:              cmp              al, 72;                              jne   .Lx244_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx244_43
                        cmp              rax, r9;                             je    .Lx244_43
                        mov              r9, rax;                             jmp   .Lx244_42
.Lx244_43:              cmp              r8, r9;                              je    .Lx244_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx244_44
                        cmp              al, 104;                             je    .Lx244_44
                        cmp              al, 72;                              jne   .Lx244_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx244_44
                                                                              jmp   .Lx244_45
.Lx244_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx244_53
                        cmp              al, 104;                             je    .Lx244_53
                        cmp              al, 72;                              jne   .Lx244_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx244_53
                                                                              jmp   .Lx244_46
.Lx244_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx244_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx244_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx244_51
.Lx244_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx244_47
                        cmp              al, 104;                             je    .Lx244_47
                        cmp              al, 72;                              jne   .Lx244_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx244_47
                                                                              jmp   .Lx244_48
.Lx244_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx244_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx244_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx244_51
.Lx244_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx244_49
                        cmp              dl, 80;                              je    .Lx244_53
                                                                              jmp   .Lx244_52
.Lx244_49:              cmp              dl, 80;                              je    .Lx244_52
                        cmp              cl, 5;                               je    .Lx244_53
                        cmp              dl, 5;                               je    .Lx244_53
                        cmp              cl, 3;                               jne   .Lx244_50
                        cmp              dl, 3;                               jne   .Lx244_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx244_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx244_51
                                                                              jmp   .Lx244_52
.Lx244_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx244_53
.Lx244_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx244_54
.Lx244_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx244_54
.Lx244_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx244_54:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 94
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n94_lit_string_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 95
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n95_lit_string_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 96
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 3
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n96_lit_string_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 97
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 3
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n97_call_builtin_prolog_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 98
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_call_builtin_prolog_α
n97_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_call_proc_staged_α
n98_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: mov              r11, 100
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx254_200
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx254_201
.Lx254_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx254_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx254_202
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx254_203
.Lx254_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx254_203:             mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx254_1
                        mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx254_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx254_3]
                        push             rcx
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4];               jmp   rax
.Lx254_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx254_2
.Lx254_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx254_2
.Lx254_1:               call             rt_faildescr@PLT
.Lx254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
.Lx254_29:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n104_call_builtin_prolog_α
                                                                              jmp   n100_var_ref_α
n99_call_proc_staged_β: mov              r11, 100;                            jmp   n104_call_builtin_prolog_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "freeze/2"
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n102_call_builtin_prolog_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              r11, 103
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              rsi, qword ptr [rip + .Lx258_2];     jmp   .Lx258_3
.Lx258_2:               .quad            .Lx258_2_s
.Lx258_2_s:             .string          "x"
.Lx258_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n103_suspend_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_call_proc_staged_β
n102_call_builtin_prolog_β:
                        mov              r11, 103;                            jmp   n103_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n103_suspend_α:         mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx260_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx260_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n103_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n103_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n103_suspend_β:         mov              r11, 104;                            jmp   n99_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_var_ref_α
n104_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 9
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n107_call_builtin_prolog_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "non_unify"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              rsi, qword ptr [rip + .Lx265_2];     jmp   .Lx265_3
.Lx265_2:               .quad            .Lx265_2_s
.Lx265_2_s:             .string          "non_unify"
.Lx265_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n125_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_var_ref_α
n107_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 5
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n110_lit_string_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 3
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n111_call_builtin_prolog_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n125_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lx271_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx271_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx271_41
                        cmp              esi, 1;                              jne   .Lx271_55
                        mov              r8, rax;                             jmp   .Lx271_40
.Lx271_55:              cmp              esi, 2;                              jne   .Lx271_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx271_41
                        mov              r8, rax;                             jmp   .Lx271_40
.Lx271_56:              cmp              al, 72;                              jne   .Lx271_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx271_41
                        cmp              rax, r8;                             je    .Lx271_41
                        mov              r8, rax;                             jmp   .Lx271_40
.Lx271_41:              lea              r9, [rsp + 512]
.Lx271_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx271_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx271_43
                        cmp              esi, 1;                              jne   .Lx271_57
                        mov              r9, rax;                             jmp   .Lx271_42
.Lx271_57:              cmp              esi, 2;                              jne   .Lx271_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx271_43
                        mov              r9, rax;                             jmp   .Lx271_42
.Lx271_58:              cmp              al, 72;                              jne   .Lx271_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx271_43
                        cmp              rax, r9;                             je    .Lx271_43
                        mov              r9, rax;                             jmp   .Lx271_42
.Lx271_43:              cmp              r8, r9;                              je    .Lx271_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx271_44
                        cmp              al, 104;                             je    .Lx271_44
                        cmp              al, 72;                              jne   .Lx271_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx271_44
                                                                              jmp   .Lx271_45
.Lx271_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx271_53
                        cmp              al, 104;                             je    .Lx271_53
                        cmp              al, 72;                              jne   .Lx271_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx271_53
                                                                              jmp   .Lx271_46
.Lx271_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx271_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx271_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx271_51
.Lx271_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx271_47
                        cmp              al, 104;                             je    .Lx271_47
                        cmp              al, 72;                              jne   .Lx271_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx271_47
                                                                              jmp   .Lx271_48
.Lx271_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx271_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx271_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx271_51
.Lx271_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx271_49
                        cmp              dl, 80;                              je    .Lx271_53
                                                                              jmp   .Lx271_52
.Lx271_49:              cmp              dl, 80;                              je    .Lx271_52
                        cmp              cl, 5;                               je    .Lx271_53
                        cmp              dl, 5;                               je    .Lx271_53
                        cmp              cl, 3;                               jne   .Lx271_50
                        cmp              dl, 3;                               jne   .Lx271_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx271_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx271_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx271_51
                                                                              jmp   .Lx271_52
.Lx271_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx271_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx271_53
.Lx271_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx271_54
.Lx271_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx271_54
.Lx271_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx271_54:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n125_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_var_ref_α
n112_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 5
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n115_lit_string_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 5
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n116_lit_string_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n117_lit_string_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 3
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n118_call_builtin_prolog_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_call_builtin_prolog_α
n118_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 120
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n125_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_call_proc_staged_α
n119_call_builtin_prolog_β:
                        mov              r11, 120;                            jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_proc_staged_α:
                        mov              r11, 121
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx281_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx281_201
.Lx281_200:             mov              edi, 0
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
.Lx281_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx281_202
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx281_203
.Lx281_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx281_203:             mov              rdi, qword ptr [rip + .Lx281_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx281_1
                        mov              rdi, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx281_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx281_3]
                        push             rcx
                        lea              rcx, [rip + .Lx281_3]
                        lea              rdx, [rip + .Lx281_4];               jmp   rax
.Lx281_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx281_2
.Lx281_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx281_2
.Lx281_1:               call             rt_faildescr@PLT
.Lx281_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx281_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx281_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n125_call_builtin_prolog_α
                                                                              jmp   n121_var_ref_α
n120_call_proc_staged_β:
                        mov              r11, 121;                            jmp   n125_call_builtin_prolog_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "freeze/2"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4064]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n123_call_builtin_prolog_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              rsi, qword ptr [rip + .Lx285_2];     jmp   .Lx285_3
.Lx285_2:               .quad            .Lx285_2_s
.Lx285_2_s:             .string          "x"
.Lx285_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n124_suspend_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_call_proc_staged_β
n123_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n124_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n124_suspend_α:         mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx287_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx287_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n124_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n124_suspend_β]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n124_suspend_β:         mov              r11, 125;                            jmp   n120_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              r11, 126
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
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   test$2F2_ω
n125_call_builtin_prolog_β:
                        mov              r11, 126;                            jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx288_50
                        mov              qword ptr [rsp + 4048], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048];         jmp   rax
.Lx288_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4120]
                        add              rsp, 4144;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 4128]
                        add              rsp, 4144;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 5696
                        mov              qword ptr [rsp + 5672], rcx
                        mov              qword ptr [rsp + 5680], rdx
                        mov              qword ptr [rsp + 5688], rsp
                        mov              rdi, rsp
                        mov              esi, 5600
                        mov              edx, 5664
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_test$2F4_α_body:
                        lea              rax, [rip + n306_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              r11, 127
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx459_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx459_101
.Lx459_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx459_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx459_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx459_101
.Lx459_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx459_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 5584], 2            # result
                        mov              dword ptr [rsp + 5588], 5
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n292_call_builtin_prolog_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              r11, 130
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5544], rax
                        lea              rdi, [rsp + 5536]
                        mov              rsi, qword ptr [rip + .Lx463_2];     jmp   .Lx463_3
.Lx463_2:               .quad            .Lx463_2_s
.Lx463_2_s:             .string          "throw"
.Lx463_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n293_var_ref_α
n292_call_builtin_prolog_β:
                        mov              r11, 130;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n294_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 5504], 2            # result
                        mov              dword ptr [rsp + 5508], 5
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n295_call_builtin_prolog_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5464], rax
                        lea              rdi, [rsp + 5456]
                        mov              rsi, qword ptr [rip + .Lx467_2];     jmp   .Lx467_3
.Lx467_2:               .quad            .Lx467_2_s
.Lx467_2_s:             .string          "error"
.Lx467_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5328], rax
                        mov              qword ptr [rsp + 5336], rdx;         jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 5424], 2            # result
                        mov              dword ptr [rsp + 5428], 5
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n298_lit_string_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 5344], 2            # result
                        mov              dword ptr [rsp + 5348], 19
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n299_call_builtin_prolog_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              r11, 137
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5400], rax
                        mov              rax, qword ptr [rsp + 5424]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5432]
                        mov              qword ptr [rsp + 5384], rax
                        lea              rdi, [rsp + 5376]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n300_call_builtin_prolog_α
n299_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              r11, 138
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5320], rax
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5304], rax
                        lea              rdi, [rsp + 5296]
                        lea              r8, [rsp + 5296]
.Lx473_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_41
                        cmp              esi, 1;                              jne   .Lx473_55
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_55:              cmp              esi, 2;                              jne   .Lx473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx473_41
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_56:              cmp              al, 72;                              jne   .Lx473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_41
                        cmp              rax, r8;                             je    .Lx473_41
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_41:              lea              r9, [rsp + 5312]
.Lx473_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx473_43
                        cmp              esi, 1;                              jne   .Lx473_57
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_57:              cmp              esi, 2;                              jne   .Lx473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx473_43
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_58:              cmp              al, 72;                              jne   .Lx473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx473_43
                        cmp              rax, r9;                             je    .Lx473_43
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_43:              cmp              r8, r9;                              je    .Lx473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx473_44
                        cmp              al, 104;                             je    .Lx473_44
                        cmp              al, 72;                              jne   .Lx473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx473_44
                                                                              jmp   .Lx473_45
.Lx473_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx473_53
                        cmp              al, 104;                             je    .Lx473_53
                        cmp              al, 72;                              jne   .Lx473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx473_53
                                                                              jmp   .Lx473_46
.Lx473_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx473_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx473_51
.Lx473_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx473_47
                        cmp              al, 104;                             je    .Lx473_47
                        cmp              al, 72;                              jne   .Lx473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx473_47
                                                                              jmp   .Lx473_48
.Lx473_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx473_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx473_51
.Lx473_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx473_49
                        cmp              dl, 80;                              je    .Lx473_53
                                                                              jmp   .Lx473_52
.Lx473_49:              cmp              dl, 80;                              je    .Lx473_52
                        cmp              cl, 5;                               je    .Lx473_53
                        cmp              dl, 5;                               je    .Lx473_53
                        cmp              cl, 3;                               jne   .Lx473_50
                        cmp              dl, 3;                               jne   .Lx473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx473_51
                                                                              jmp   .Lx473_52
.Lx473_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx473_53
.Lx473_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx473_54
.Lx473_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx473_54
.Lx473_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx473_54:              mov              qword ptr [rsp + 5280], rax
                        mov              qword ptr [rsp + 5288], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                        mov              r11, 138;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 5
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n303_var_ref_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx;         jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_call_builtin_prolog_α
n304_call_builtin_prolog_β:
                        mov              r11, 142;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5144], rax
                        lea              rdi, [rsp + 5136]
                        lea              r8, [rsp + 5136]
.Lx480_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx480_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx480_41
                        cmp              esi, 1;                              jne   .Lx480_55
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_55:              cmp              esi, 2;                              jne   .Lx480_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx480_41
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_56:              cmp              al, 72;                              jne   .Lx480_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx480_41
                        cmp              rax, r8;                             je    .Lx480_41
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_41:              lea              r9, [rsp + 5152]
.Lx480_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx480_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx480_43
                        cmp              esi, 1;                              jne   .Lx480_57
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_57:              cmp              esi, 2;                              jne   .Lx480_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx480_43
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_58:              cmp              al, 72;                              jne   .Lx480_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx480_43
                        cmp              rax, r9;                             je    .Lx480_43
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_43:              cmp              r8, r9;                              je    .Lx480_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx480_44
                        cmp              al, 104;                             je    .Lx480_44
                        cmp              al, 72;                              jne   .Lx480_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx480_44
                                                                              jmp   .Lx480_45
.Lx480_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx480_53
                        cmp              al, 104;                             je    .Lx480_53
                        cmp              al, 72;                              jne   .Lx480_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx480_53
                                                                              jmp   .Lx480_46
.Lx480_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx480_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx480_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx480_51
.Lx480_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx480_47
                        cmp              al, 104;                             je    .Lx480_47
                        cmp              al, 72;                              jne   .Lx480_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx480_47
                                                                              jmp   .Lx480_48
.Lx480_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx480_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx480_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx480_51
.Lx480_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx480_49
                        cmp              dl, 80;                              je    .Lx480_53
                                                                              jmp   .Lx480_52
.Lx480_49:              cmp              dl, 80;                              je    .Lx480_52
                        cmp              cl, 5;                               je    .Lx480_53
                        cmp              dl, 5;                               je    .Lx480_53
                        cmp              cl, 3;                               jne   .Lx480_50
                        cmp              dl, 3;                               jne   .Lx480_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx480_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx480_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx480_51
                                                                              jmp   .Lx480_52
.Lx480_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx480_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx480_53
.Lx480_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx480_54
.Lx480_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx480_54
.Lx480_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx480_54:              mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              al, 104;                             je    n307_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_suspend_α
n305_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n306_suspend_α:         mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx482_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx482_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n306_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n306_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n306_suspend_β:         mov              r11, 144;                            jmp   n307_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 5096], rax
                        lea              rdi, [rsp + 5088]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_var_ref_α
n307_call_builtin_prolog_β:
                        mov              r11, 145;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 5
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n310_call_builtin_prolog_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              rsi, qword ptr [rip + .Lx487_2];     jmp   .Lx487_3
.Lx487_2:               .quad            .Lx487_2_s
.Lx487_2_s:             .string          "throw"
.Lx487_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_var_ref_α
n310_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rsp + 4976], 2            # result
                        mov              dword ptr [rsp + 4980], 6
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n313_call_builtin_prolog_α
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "ground"
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_prolog_α:
                        mov              r11, 151
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4936], rax
                        lea              rdi, [rsp + 4928]
                        mov              rsi, qword ptr [rip + .Lx491_2];     jmp   .Lx491_3
.Lx491_2:               .quad            .Lx491_2_s
.Lx491_2_s:             .string          "ground"
.Lx491_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n314_var_ref_α
n313_call_builtin_prolog_β:
                        mov              r11, 151;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx;         jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 6
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n316_lit_string_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 5
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n317_lit_string_α
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 4736], 2            # result
                        mov              dword ptr [rsp + 4740], 5
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n318_call_builtin_prolog_α
.Lx496_0:               .quad            .Lx496_0_s
.Lx496_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4776], rax
                        lea              rdi, [rsp + 4768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_call_builtin_prolog_α
n318_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
                        mov              r11, 157
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4856], rax
                        lea              rdi, [rsp + 4848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n320_call_builtin_prolog_α
n319_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4712], rax
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4688], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4696], rax
                        lea              rdi, [rsp + 4688]
                        lea              r8, [rsp + 4688]
.Lx499_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx499_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx499_41
                        cmp              esi, 1;                              jne   .Lx499_55
                        mov              r8, rax;                             jmp   .Lx499_40
.Lx499_55:              cmp              esi, 2;                              jne   .Lx499_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx499_41
                        mov              r8, rax;                             jmp   .Lx499_40
.Lx499_56:              cmp              al, 72;                              jne   .Lx499_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx499_41
                        cmp              rax, r8;                             je    .Lx499_41
                        mov              r8, rax;                             jmp   .Lx499_40
.Lx499_41:              lea              r9, [rsp + 4704]
.Lx499_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx499_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx499_43
                        cmp              esi, 1;                              jne   .Lx499_57
                        mov              r9, rax;                             jmp   .Lx499_42
.Lx499_57:              cmp              esi, 2;                              jne   .Lx499_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx499_43
                        mov              r9, rax;                             jmp   .Lx499_42
.Lx499_58:              cmp              al, 72;                              jne   .Lx499_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx499_43
                        cmp              rax, r9;                             je    .Lx499_43
                        mov              r9, rax;                             jmp   .Lx499_42
.Lx499_43:              cmp              r8, r9;                              je    .Lx499_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx499_44
                        cmp              al, 104;                             je    .Lx499_44
                        cmp              al, 72;                              jne   .Lx499_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx499_44
                                                                              jmp   .Lx499_45
.Lx499_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx499_53
                        cmp              al, 104;                             je    .Lx499_53
                        cmp              al, 72;                              jne   .Lx499_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx499_53
                                                                              jmp   .Lx499_46
.Lx499_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx499_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx499_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx499_51
.Lx499_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx499_47
                        cmp              al, 104;                             je    .Lx499_47
                        cmp              al, 72;                              jne   .Lx499_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx499_47
                                                                              jmp   .Lx499_48
.Lx499_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx499_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx499_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx499_51
.Lx499_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx499_49
                        cmp              dl, 80;                              je    .Lx499_53
                                                                              jmp   .Lx499_52
.Lx499_49:              cmp              dl, 80;                              je    .Lx499_52
                        cmp              cl, 5;                               je    .Lx499_53
                        cmp              dl, 5;                               je    .Lx499_53
                        cmp              cl, 3;                               jne   .Lx499_50
                        cmp              dl, 3;                               jne   .Lx499_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx499_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx499_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx499_51
                                                                              jmp   .Lx499_52
.Lx499_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx499_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx499_53
.Lx499_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx499_54
.Lx499_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx499_54
.Lx499_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx499_54:              mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n321_var_ref_α
n320_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 5
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n323_lit_string_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 4576], 2            # result
                        mov              dword ptr [rsp + 4580], 5
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n324_lit_string_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rsp + 4496], 2            # result
                        mov              dword ptr [rsp + 4500], 5
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n325_call_builtin_prolog_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4552], rax
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4536], rax
                        lea              rdi, [rsp + 4528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n326_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4632], rax
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4616], rax
                        lea              rdi, [rsp + 4608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n327_call_builtin_prolog_α
n326_call_builtin_prolog_β:
                        mov              r11, 164;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_prolog_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4456], rax
                        lea              rdi, [rsp + 4448]
                        lea              r8, [rsp + 4448]
.Lx507_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              esi, 1;                              jne   .Lx507_55
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_55:              cmp              esi, 2;                              jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_56:              cmp              al, 72;                              jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              rax, r8;                             je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_41:              lea              r9, [rsp + 4464]
.Lx507_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              esi, 1;                              jne   .Lx507_57
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_57:              cmp              esi, 2;                              jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_58:              cmp              al, 72;                              jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              rax, r9;                             je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_43:              cmp              r8, r9;                              je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx507_44
                        cmp              al, 104;                             je    .Lx507_44
                        cmp              al, 72;                              jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx507_44
                                                                              jmp   .Lx507_45
.Lx507_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_53
                        cmp              al, 104;                             je    .Lx507_53
                        cmp              al, 72;                              jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_53
                                                                              jmp   .Lx507_46
.Lx507_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx507_51
.Lx507_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_47
                        cmp              al, 104;                             je    .Lx507_47
                        cmp              al, 72;                              jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_47
                                                                              jmp   .Lx507_48
.Lx507_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx507_51
.Lx507_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx507_49
                        cmp              dl, 80;                              je    .Lx507_53
                                                                              jmp   .Lx507_52
.Lx507_49:              cmp              dl, 80;                              je    .Lx507_52
                        cmp              cl, 5;                               je    .Lx507_53
                        cmp              dl, 5;                               je    .Lx507_53
                        cmp              cl, 3;                               jne   .Lx507_50
                        cmp              dl, 3;                               jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx507_51
                                                                              jmp   .Lx507_52
.Lx507_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx507_53
.Lx507_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx507_54
.Lx507_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx507_54
.Lx507_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx507_54:              mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_suspend_α
n327_call_builtin_prolog_β:
                        mov              r11, 165;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n328_suspend_α:         mov              r11, 166
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx509_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx509_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n328_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n328_suspend_β:         mov              r11, 166;                            jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 4408], rax
                        lea              rdi, [rsp + 4400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_var_ref_α
n329_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n331_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 4368], 2            # result
                        mov              dword ptr [rsp + 4372], 5
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n332_call_builtin_prolog_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
                        mov              r11, 170
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4328], rax
                        lea              rdi, [rsp + 4320]
                        mov              rsi, qword ptr [rip + .Lx514_2];     jmp   .Lx514_3
.Lx514_2:               .quad            .Lx514_2_s
.Lx514_2_s:             .string          "throw"
.Lx514_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n333_var_ref_α
n332_call_builtin_prolog_β:
                        mov              r11, 170;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 7
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n335_call_builtin_prolog_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "unbound"
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax
                        lea              rdi, [rsp + 4240]
                        mov              rsi, qword ptr [rip + .Lx518_2];     jmp   .Lx518_3
.Lx518_2:               .quad            .Lx518_2_s
.Lx518_2_s:             .string          "unbound"
.Lx518_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n336_var_ref_α
n335_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n338_lit_string_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 4112], 2            # result
                        mov              dword ptr [rsp + 4116], 5
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n339_lit_string_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n340_var_ref_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 3936], 2            # result
                        mov              dword ptr [rsp + 3940], 5
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n342_var_ref_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5632]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              r11, 181
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n344_call_builtin_prolog_α
n343_call_builtin_prolog_β:
                        mov              r11, 181;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3992], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n345_call_builtin_prolog_α
n344_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_prolog_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 4088], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4072], rax
                        lea              rdi, [rsp + 4064]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n346_lit_string_α
n345_call_builtin_prolog_β:
                        mov              r11, 183;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 3824], 2            # result
                        mov              dword ptr [rsp + 3828], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n347_lit_string_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 6
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n348_var_ref_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n349_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3704], rax
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3688], rax
                        lea              rdi, [rsp + 3680]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n350_lit_string_α
n349_call_builtin_prolog_β:
                        mov              r11, 187;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rsp + 3632], 2            # result
                        mov              dword ptr [rsp + 3636], 2
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n351_call_builtin_prolog_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3784], rax
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3768], rax
                        lea              rdi, [rsp + 3760]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n352_call_builtin_prolog_α
n351_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4152], rax
                        lea              rdi, [rsp + 4144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n353_call_builtin_prolog_α
n352_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n353_call_builtin_prolog_α:
                        mov              r11, 191
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3608], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3592], rax
                        lea              rdi, [rsp + 3584]
                        lea              r8, [rsp + 3584]
.Lx540_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx540_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx540_41
                        cmp              esi, 1;                              jne   .Lx540_55
                        mov              r8, rax;                             jmp   .Lx540_40
.Lx540_55:              cmp              esi, 2;                              jne   .Lx540_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx540_41
                        mov              r8, rax;                             jmp   .Lx540_40
.Lx540_56:              cmp              al, 72;                              jne   .Lx540_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx540_41
                        cmp              rax, r8;                             je    .Lx540_41
                        mov              r8, rax;                             jmp   .Lx540_40
.Lx540_41:              lea              r9, [rsp + 3600]
.Lx540_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx540_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx540_43
                        cmp              esi, 1;                              jne   .Lx540_57
                        mov              r9, rax;                             jmp   .Lx540_42
.Lx540_57:              cmp              esi, 2;                              jne   .Lx540_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx540_43
                        mov              r9, rax;                             jmp   .Lx540_42
.Lx540_58:              cmp              al, 72;                              jne   .Lx540_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx540_43
                        cmp              rax, r9;                             je    .Lx540_43
                        mov              r9, rax;                             jmp   .Lx540_42
.Lx540_43:              cmp              r8, r9;                              je    .Lx540_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx540_44
                        cmp              al, 104;                             je    .Lx540_44
                        cmp              al, 72;                              jne   .Lx540_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx540_44
                                                                              jmp   .Lx540_45
.Lx540_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx540_53
                        cmp              al, 104;                             je    .Lx540_53
                        cmp              al, 72;                              jne   .Lx540_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx540_53
                                                                              jmp   .Lx540_46
.Lx540_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx540_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx540_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx540_51
.Lx540_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx540_47
                        cmp              al, 104;                             je    .Lx540_47
                        cmp              al, 72;                              jne   .Lx540_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx540_47
                                                                              jmp   .Lx540_48
.Lx540_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx540_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx540_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx540_51
.Lx540_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx540_49
                        cmp              dl, 80;                              je    .Lx540_53
                                                                              jmp   .Lx540_52
.Lx540_49:              cmp              dl, 80;                              je    .Lx540_52
                        cmp              cl, 5;                               je    .Lx540_53
                        cmp              dl, 5;                               je    .Lx540_53
                        cmp              cl, 3;                               jne   .Lx540_50
                        cmp              dl, 3;                               jne   .Lx540_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx540_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx540_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx540_51
                                                                              jmp   .Lx540_52
.Lx540_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx540_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx540_53
.Lx540_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx540_54
.Lx540_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx540_54
.Lx540_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx540_54:              mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n354_var_ref_α
n353_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n355_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 5
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n356_var_ref_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx;         jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3512], rax
                        lea              rdi, [rsp + 3504]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_call_builtin_prolog_α
n357_call_builtin_prolog_β:
                        mov              r11, 195;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        lea              r8, [rsp + 3424]
.Lx547_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx547_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx547_41
                        cmp              esi, 1;                              jne   .Lx547_55
                        mov              r8, rax;                             jmp   .Lx547_40
.Lx547_55:              cmp              esi, 2;                              jne   .Lx547_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx547_41
                        mov              r8, rax;                             jmp   .Lx547_40
.Lx547_56:              cmp              al, 72;                              jne   .Lx547_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx547_41
                        cmp              rax, r8;                             je    .Lx547_41
                        mov              r8, rax;                             jmp   .Lx547_40
.Lx547_41:              lea              r9, [rsp + 3440]
.Lx547_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx547_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx547_43
                        cmp              esi, 1;                              jne   .Lx547_57
                        mov              r9, rax;                             jmp   .Lx547_42
.Lx547_57:              cmp              esi, 2;                              jne   .Lx547_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx547_43
                        mov              r9, rax;                             jmp   .Lx547_42
.Lx547_58:              cmp              al, 72;                              jne   .Lx547_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx547_43
                        cmp              rax, r9;                             je    .Lx547_43
                        mov              r9, rax;                             jmp   .Lx547_42
.Lx547_43:              cmp              r8, r9;                              je    .Lx547_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx547_44
                        cmp              al, 104;                             je    .Lx547_44
                        cmp              al, 72;                              jne   .Lx547_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx547_44
                                                                              jmp   .Lx547_45
.Lx547_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx547_53
                        cmp              al, 104;                             je    .Lx547_53
                        cmp              al, 72;                              jne   .Lx547_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx547_53
                                                                              jmp   .Lx547_46
.Lx547_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx547_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx547_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx547_51
.Lx547_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx547_47
                        cmp              al, 104;                             je    .Lx547_47
                        cmp              al, 72;                              jne   .Lx547_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx547_47
                                                                              jmp   .Lx547_48
.Lx547_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx547_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx547_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx547_51
.Lx547_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx547_49
                        cmp              dl, 80;                              je    .Lx547_53
                                                                              jmp   .Lx547_52
.Lx547_49:              cmp              dl, 80;                              je    .Lx547_52
                        cmp              cl, 5;                               je    .Lx547_53
                        cmp              dl, 5;                               je    .Lx547_53
                        cmp              cl, 3;                               jne   .Lx547_50
                        cmp              dl, 3;                               jne   .Lx547_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx547_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx547_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx547_51
                                                                              jmp   .Lx547_52
.Lx547_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx547_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx547_53
.Lx547_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx547_54
.Lx547_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx547_54
.Lx547_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx547_54:              mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n359_suspend_α
n358_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n359_suspend_α:         mov              r11, 197
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx549_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx549_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n359_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n359_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n359_suspend_β:         mov              r11, 197;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3384], rax
                        lea              rdi, [rsp + 3376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_var_ref_α
n360_call_builtin_prolog_β:
                        mov              r11, 198;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx;         jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rsp + 3344], 2            # result
                        mov              dword ptr [rsp + 3348], 5
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n363_call_builtin_prolog_α
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3304], rax
                        lea              rdi, [rsp + 3296]
                        mov              rsi, qword ptr [rip + .Lx554_2];     jmp   .Lx554_3
.Lx554_2:               .quad            .Lx554_2_s
.Lx554_2_s:             .string          "throw"
.Lx554_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n364_var_ref_α
n363_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n365_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 3264], 2            # result
                        mov              dword ptr [rsp + 3268], 6
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n366_call_builtin_prolog_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "cyclic"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        mov              rsi, qword ptr [rip + .Lx558_2];     jmp   .Lx558_3
.Lx558_2:               .quad            .Lx558_2_s
.Lx558_2_s:             .string          "cyclic"
.Lx558_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_var_ref_α
n366_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n369_lit_string_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 3
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n370_lit_string_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 14
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n371_call_builtin_prolog_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_lit_string_α
n371_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n373_lit_string_α
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 5
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n374_lit_string_α
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n375_var_ref_α
.Lx567_0:               .quad            .Lx567_0_s
.Lx567_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], 5
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n377_var_ref_α
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n378_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_builtin_prolog_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_call_builtin_prolog_α
n378_call_builtin_prolog_β:
                        mov              r11, 216;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_prolog_α:
                        mov              r11, 217
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2760], rax
                        lea              rdi, [rsp + 2752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_call_builtin_prolog_α
n379_call_builtin_prolog_β:
                        mov              r11, 217;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              r11, 218
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2872], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n381_lit_string_α
n380_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n382_lit_string_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n383_var_ref_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n384_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_lit_string_α
n384_call_builtin_prolog_β:
                        mov              r11, 222;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 2
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n386_call_builtin_prolog_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_prolog_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2552], rax
                        lea              rdi, [rsp + 2544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n387_call_builtin_prolog_α
n386_call_builtin_prolog_β:
                        mov              r11, 224;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_prolog_α:
                        mov              r11, 225
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_call_builtin_prolog_α
n387_call_builtin_prolog_β:
                        mov              r11, 225;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
                        mov              r11, 226
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3128], rax
                        lea              rdi, [rsp + 3120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n389_call_builtin_prolog_α
n388_call_builtin_prolog_β:
                        mov              r11, 226;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_prolog_α:
                        mov              r11, 227
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        lea              r8, [rsp + 2368]
.Lx585_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx585_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx585_41
                        cmp              esi, 1;                              jne   .Lx585_55
                        mov              r8, rax;                             jmp   .Lx585_40
.Lx585_55:              cmp              esi, 2;                              jne   .Lx585_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx585_41
                        mov              r8, rax;                             jmp   .Lx585_40
.Lx585_56:              cmp              al, 72;                              jne   .Lx585_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx585_41
                        cmp              rax, r8;                             je    .Lx585_41
                        mov              r8, rax;                             jmp   .Lx585_40
.Lx585_41:              lea              r9, [rsp + 2384]
.Lx585_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx585_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx585_43
                        cmp              esi, 1;                              jne   .Lx585_57
                        mov              r9, rax;                             jmp   .Lx585_42
.Lx585_57:              cmp              esi, 2;                              jne   .Lx585_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx585_43
                        mov              r9, rax;                             jmp   .Lx585_42
.Lx585_58:              cmp              al, 72;                              jne   .Lx585_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx585_43
                        cmp              rax, r9;                             je    .Lx585_43
                        mov              r9, rax;                             jmp   .Lx585_42
.Lx585_43:              cmp              r8, r9;                              je    .Lx585_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx585_44
                        cmp              al, 104;                             je    .Lx585_44
                        cmp              al, 72;                              jne   .Lx585_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx585_44
                                                                              jmp   .Lx585_45
.Lx585_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx585_53
                        cmp              al, 104;                             je    .Lx585_53
                        cmp              al, 72;                              jne   .Lx585_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx585_53
                                                                              jmp   .Lx585_46
.Lx585_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx585_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx585_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx585_51
.Lx585_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx585_47
                        cmp              al, 104;                             je    .Lx585_47
                        cmp              al, 72;                              jne   .Lx585_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx585_47
                                                                              jmp   .Lx585_48
.Lx585_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx585_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx585_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx585_51
.Lx585_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx585_49
                        cmp              dl, 80;                              je    .Lx585_53
                                                                              jmp   .Lx585_52
.Lx585_49:              cmp              dl, 80;                              je    .Lx585_52
                        cmp              cl, 5;                               je    .Lx585_53
                        cmp              dl, 5;                               je    .Lx585_53
                        cmp              cl, 3;                               jne   .Lx585_50
                        cmp              dl, 3;                               jne   .Lx585_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx585_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx585_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx585_51
                                                                              jmp   .Lx585_52
.Lx585_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx585_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx585_53
.Lx585_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx585_54
.Lx585_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx585_54
.Lx585_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx585_54:              mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n390_var_ref_α
n389_call_builtin_prolog_β:
                        mov              r11, 227;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 5
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n392_var_ref_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n393_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
                        mov              r11, 231
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        lea              rdi, [rsp + 2288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n394_call_builtin_prolog_α
n393_call_builtin_prolog_β:
                        mov              r11, 231;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_prolog_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2216], rax
                        lea              rdi, [rsp + 2208]
                        lea              r8, [rsp + 2208]
.Lx592_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              esi, 1;                              jne   .Lx592_55
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_55:              cmp              esi, 2;                              jne   .Lx592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_56:              cmp              al, 72;                              jne   .Lx592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              rax, r8;                             je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_41:              lea              r9, [rsp + 2224]
.Lx592_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              esi, 1;                              jne   .Lx592_57
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_57:              cmp              esi, 2;                              jne   .Lx592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_58:              cmp              al, 72;                              jne   .Lx592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              rax, r9;                             je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_43:              cmp              r8, r9;                              je    .Lx592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx592_44
                        cmp              al, 104;                             je    .Lx592_44
                        cmp              al, 72;                              jne   .Lx592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx592_44
                                                                              jmp   .Lx592_45
.Lx592_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx592_53
                        cmp              al, 104;                             je    .Lx592_53
                        cmp              al, 72;                              jne   .Lx592_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_53
                                                                              jmp   .Lx592_46
.Lx592_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx592_51
.Lx592_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx592_47
                        cmp              al, 104;                             je    .Lx592_47
                        cmp              al, 72;                              jne   .Lx592_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_47
                                                                              jmp   .Lx592_48
.Lx592_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx592_51
.Lx592_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx592_49
                        cmp              dl, 80;                              je    .Lx592_53
                                                                              jmp   .Lx592_52
.Lx592_49:              cmp              dl, 80;                              je    .Lx592_52
                        cmp              cl, 5;                               je    .Lx592_53
                        cmp              dl, 5;                               je    .Lx592_53
                        cmp              cl, 3;                               jne   .Lx592_50
                        cmp              dl, 3;                               jne   .Lx592_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx592_51
                                                                              jmp   .Lx592_52
.Lx592_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx592_53
.Lx592_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx592_54
.Lx592_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx592_54
.Lx592_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_54:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n396_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n395_suspend_α
n394_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n395_suspend_α:         mov              r11, 233
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx594_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx594_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n395_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n395_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n395_suspend_β:         mov              r11, 233;                            jmp   n396_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_prolog_α:
                        mov              r11, 234
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2168], rax
                        lea              rdi, [rsp + 2160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n397_var_ref_α
n396_call_builtin_prolog_β:
                        mov              r11, 234;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 14
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n399_call_builtin_prolog_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_prolog_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax
                        lea              rdi, [rsp + 2080]
                        mov              rsi, qword ptr [rip + .Lx599_2];     jmp   .Lx599_3
.Lx599_2:               .quad            .Lx599_2_s
.Lx599_2_s:             .string          "ex_coroutining"
.Lx599_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_var_ref_α
n399_call_builtin_prolog_β:
                        mov              r11, 237;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 3
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n402_call_builtin_prolog_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_prolog_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              rsi, qword ptr [rip + .Lx603_2];     jmp   .Lx603_3
.Lx603_2:               .quad            .Lx603_2_s
.Lx603_2_s:             .string          "not"
.Lx603_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_var_ref_α
n402_call_builtin_prolog_β:
                        mov              r11, 240;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 5
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n405_lit_string_α
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 3
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n406_call_builtin_prolog_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        lea              rdi, [rsp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n407_call_builtin_prolog_α
n406_call_builtin_prolog_β:
                        mov              r11, 244;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_prolog_α:
                        mov              r11, 245
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        lea              rdi, [rsp + 1840]
                        lea              r8, [rsp + 1840]
.Lx609_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              esi, 1;                              jne   .Lx609_55
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_55:              cmp              esi, 2;                              jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_56:              cmp              al, 72;                              jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              rax, r8;                             je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_41:              lea              r9, [rsp + 1856]
.Lx609_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              esi, 1;                              jne   .Lx609_57
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_57:              cmp              esi, 2;                              jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_58:              cmp              al, 72;                              jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              rax, r9;                             je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_43:              cmp              r8, r9;                              je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx609_44
                        cmp              al, 104;                             je    .Lx609_44
                        cmp              al, 72;                              jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx609_44
                                                                              jmp   .Lx609_45
.Lx609_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_53
                        cmp              al, 104;                             je    .Lx609_53
                        cmp              al, 72;                              jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_53
                                                                              jmp   .Lx609_46
.Lx609_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx609_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx609_51
.Lx609_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_47
                        cmp              al, 104;                             je    .Lx609_47
                        cmp              al, 72;                              jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_47
                                                                              jmp   .Lx609_48
.Lx609_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx609_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx609_51
.Lx609_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx609_49
                        cmp              dl, 80;                              je    .Lx609_53
                                                                              jmp   .Lx609_52
.Lx609_49:              cmp              dl, 80;                              je    .Lx609_52
                        cmp              cl, 5;                               je    .Lx609_53
                        cmp              dl, 5;                               je    .Lx609_53
                        cmp              cl, 3;                               jne   .Lx609_50
                        cmp              dl, 3;                               jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx609_51
                                                                              jmp   .Lx609_52
.Lx609_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx609_53
.Lx609_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx609_54
.Lx609_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx609_54
.Lx609_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx609_54:              mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n408_var_ref_α
n407_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n410_lit_string_α
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 6
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n411_var_ref_α
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "freeze"
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 5
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n413_lit_string_α
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n414_lit_string_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 3
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n415_lit_string_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 3
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n416_call_builtin_prolog_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_call_builtin_prolog_α
n416_call_builtin_prolog_β:
                        mov              r11, 254;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              r11, 255
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n418_call_builtin_prolog_α
n417_call_builtin_prolog_β:
                        mov              r11, 255;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
                        mov              r11, 256
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_lit_string_α
n418_call_builtin_prolog_β:
                        mov              r11, 256;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 2
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n420_lit_string_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n421_var_ref_α
.Lx624_0:               .quad            .Lx624_0_s
.Lx624_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 1
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n423_call_builtin_prolog_α
.Lx627_0:               .quad            .Lx627_0_s
.Lx627_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n424_call_builtin_prolog_α
n423_call_builtin_prolog_β:
                        mov              r11, 261;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_call_builtin_prolog_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n425_call_builtin_prolog_α
n424_call_builtin_prolog_β:
                        mov              r11, 262;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              r11, 263
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_call_builtin_prolog_α
n425_call_builtin_prolog_β:
                        mov              r11, 263;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        lea              r8, [rsp + 1152]
.Lx631_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx631_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx631_41
                        cmp              esi, 1;                              jne   .Lx631_55
                        mov              r8, rax;                             jmp   .Lx631_40
.Lx631_55:              cmp              esi, 2;                              jne   .Lx631_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx631_41
                        mov              r8, rax;                             jmp   .Lx631_40
.Lx631_56:              cmp              al, 72;                              jne   .Lx631_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx631_41
                        cmp              rax, r8;                             je    .Lx631_41
                        mov              r8, rax;                             jmp   .Lx631_40
.Lx631_41:              lea              r9, [rsp + 1168]
.Lx631_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx631_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx631_43
                        cmp              esi, 1;                              jne   .Lx631_57
                        mov              r9, rax;                             jmp   .Lx631_42
.Lx631_57:              cmp              esi, 2;                              jne   .Lx631_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx631_43
                        mov              r9, rax;                             jmp   .Lx631_42
.Lx631_58:              cmp              al, 72;                              jne   .Lx631_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx631_43
                        cmp              rax, r9;                             je    .Lx631_43
                        mov              r9, rax;                             jmp   .Lx631_42
.Lx631_43:              cmp              r8, r9;                              je    .Lx631_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx631_44
                        cmp              al, 104;                             je    .Lx631_44
                        cmp              al, 72;                              jne   .Lx631_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx631_44
                                                                              jmp   .Lx631_45
.Lx631_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx631_53
                        cmp              al, 104;                             je    .Lx631_53
                        cmp              al, 72;                              jne   .Lx631_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx631_53
                                                                              jmp   .Lx631_46
.Lx631_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx631_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx631_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx631_51
.Lx631_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx631_47
                        cmp              al, 104;                             je    .Lx631_47
                        cmp              al, 72;                              jne   .Lx631_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx631_47
                                                                              jmp   .Lx631_48
.Lx631_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx631_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx631_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx631_51
.Lx631_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx631_49
                        cmp              dl, 80;                              je    .Lx631_53
                                                                              jmp   .Lx631_52
.Lx631_49:              cmp              dl, 80;                              je    .Lx631_52
                        cmp              cl, 5;                               je    .Lx631_53
                        cmp              dl, 5;                               je    .Lx631_53
                        cmp              cl, 3;                               jne   .Lx631_50
                        cmp              dl, 3;                               jne   .Lx631_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx631_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx631_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx631_51
                                                                              jmp   .Lx631_52
.Lx631_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx631_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx631_53
.Lx631_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx631_54
.Lx631_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx631_54
.Lx631_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx631_54:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n428_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n427_suspend_α
n426_call_builtin_prolog_β:
                        mov              r11, 264;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_suspend_α:         mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx633_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx633_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n427_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n427_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n427_suspend_β:         mov              r11, 265;                            jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              r11, 266
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_var_ref_α
n428_call_builtin_prolog_β:
                        mov              r11, 266;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 14
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n431_call_builtin_prolog_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              r11, 269
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        mov              rsi, qword ptr [rip + .Lx638_2];     jmp   .Lx638_3
.Lx638_2:               .quad            .Lx638_2_s
.Lx638_2_s:             .string          "ex_coroutining"
.Lx638_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                        mov              r11, 269;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 9
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n434_call_builtin_prolog_α
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "non_unify"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 272
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              rsi, qword ptr [rip + .Lx642_2];     jmp   .Lx642_3
.Lx642_2:               .quad            .Lx642_2_s
.Lx642_2_s:             .string          "non_unify"
.Lx642_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_var_ref_α
n434_call_builtin_prolog_β:
                        mov              r11, 272;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 5
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n437_lit_string_α
.Lx645_0:               .quad            .Lx645_0_s
.Lx645_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 3
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n438_call_builtin_prolog_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                        mov              r11, 276;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              r11, 277
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        lea              r8, [rsp + 784]
.Lx648_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              esi, 1;                              jne   .Lx648_55
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_55:              cmp              esi, 2;                              jne   .Lx648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_56:              cmp              al, 72;                              jne   .Lx648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              rax, r8;                             je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_41:              lea              r9, [rsp + 800]
.Lx648_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              esi, 1;                              jne   .Lx648_57
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_57:              cmp              esi, 2;                              jne   .Lx648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_58:              cmp              al, 72;                              jne   .Lx648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              rax, r9;                             je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_43:              cmp              r8, r9;                              je    .Lx648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx648_44
                        cmp              al, 104;                             je    .Lx648_44
                        cmp              al, 72;                              jne   .Lx648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx648_44
                                                                              jmp   .Lx648_45
.Lx648_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_53
                        cmp              al, 104;                             je    .Lx648_53
                        cmp              al, 72;                              jne   .Lx648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_53
                                                                              jmp   .Lx648_46
.Lx648_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx648_51
.Lx648_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_47
                        cmp              al, 104;                             je    .Lx648_47
                        cmp              al, 72;                              jne   .Lx648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_47
                                                                              jmp   .Lx648_48
.Lx648_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx648_51
.Lx648_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx648_49
                        cmp              dl, 80;                              je    .Lx648_53
                                                                              jmp   .Lx648_52
.Lx648_49:              cmp              dl, 80;                              je    .Lx648_52
                        cmp              cl, 5;                               je    .Lx648_53
                        cmp              dl, 5;                               je    .Lx648_53
                        cmp              cl, 3;                               jne   .Lx648_50
                        cmp              dl, 3;                               jne   .Lx648_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx648_51
                                                                              jmp   .Lx648_52
.Lx648_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx648_53
.Lx648_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx648_54
.Lx648_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx648_54
.Lx648_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx648_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_var_ref_α
n439_call_builtin_prolog_β:
                        mov              r11, 277;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n442_lit_string_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 6
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n443_var_ref_α
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "freeze"
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n445_lit_string_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 5
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n446_lit_string_α
.Lx656_0:               .quad            .Lx656_0_s
.Lx656_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 3
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n447_lit_string_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n448_call_builtin_prolog_α
.Lx658_0:               .quad            .Lx658_0_s
.Lx658_0_s:             .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n448_call_builtin_prolog_α:
                        mov              r11, 286
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 248]
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
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n449_call_builtin_prolog_α
n448_call_builtin_prolog_β:
                        mov              r11, 286;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              r11, 287
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n450_call_builtin_prolog_α
n449_call_builtin_prolog_β:
                        mov              r11, 287;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_lit_string_α
n450_call_builtin_prolog_β:
                        mov              r11, 288;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n452_var_ref_α
.Lx662_0:               .quad            .Lx662_0_s
.Lx662_0_s:             .string          "\\="
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n453_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n454_call_builtin_prolog_α
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              r11, 292
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_call_builtin_prolog_α
n454_call_builtin_prolog_β:
                        mov              r11, 292;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
                        mov              r11, 293
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_call_builtin_prolog_α
n455_call_builtin_prolog_β:
                        mov              r11, 293;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              r11, 294
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx668_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx668_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx668_41
                        cmp              esi, 1;                              jne   .Lx668_55
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_55:              cmp              esi, 2;                              jne   .Lx668_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx668_41
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_56:              cmp              al, 72;                              jne   .Lx668_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx668_41
                        cmp              rax, r8;                             je    .Lx668_41
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_41:              lea              r9, [rsp + 192]
.Lx668_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx668_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx668_43
                        cmp              esi, 1;                              jne   .Lx668_57
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_57:              cmp              esi, 2;                              jne   .Lx668_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx668_43
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_58:              cmp              al, 72;                              jne   .Lx668_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx668_43
                        cmp              rax, r9;                             je    .Lx668_43
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_43:              cmp              r8, r9;                              je    .Lx668_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx668_44
                        cmp              al, 104;                             je    .Lx668_44
                        cmp              al, 72;                              jne   .Lx668_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx668_44
                                                                              jmp   .Lx668_45
.Lx668_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx668_53
                        cmp              al, 104;                             je    .Lx668_53
                        cmp              al, 72;                              jne   .Lx668_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx668_53
                                                                              jmp   .Lx668_46
.Lx668_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx668_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx668_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx668_51
.Lx668_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx668_47
                        cmp              al, 104;                             je    .Lx668_47
                        cmp              al, 72;                              jne   .Lx668_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx668_47
                                                                              jmp   .Lx668_48
.Lx668_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx668_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx668_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx668_51
.Lx668_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx668_49
                        cmp              dl, 80;                              je    .Lx668_53
                                                                              jmp   .Lx668_52
.Lx668_49:              cmp              dl, 80;                              je    .Lx668_52
                        cmp              cl, 5;                               je    .Lx668_53
                        cmp              dl, 5;                               je    .Lx668_53
                        cmp              cl, 3;                               jne   .Lx668_50
                        cmp              dl, 3;                               jne   .Lx668_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx668_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx668_51
                                                                              jmp   .Lx668_52
.Lx668_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx668_53
.Lx668_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx668_54
.Lx668_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx668_54
.Lx668_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx668_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n458_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_suspend_α
n456_call_builtin_prolog_β:
                        mov              r11, 294;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_suspend_α:         mov              r11, 295
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx670_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx670_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n457_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n457_suspend_β]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n457_suspend_β:         mov              r11, 295;                            jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_prolog_α:
                        mov              r11, 296
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
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_test$2F4_ω
n458_call_builtin_prolog_β:
                        mov              r11, 296;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n306_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx671_50
                        mov              qword ptr [rsp + 5600], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5600];         jmp   rax
.Lx671_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5672]
                        add              rsp, 5696;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 5680]
                        add              rsp, 5696;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_exception$2F0:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 400
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
test_exception$2F0_α_body:
                        lea              rax, [rip + n681_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n672_call_builtin_prolog_α:
                        mov              r11, 297
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx683_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx683_101
.Lx683_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx683_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx683_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx683_101
.Lx683_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx683_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_exception$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n673_lit_string_α
n672_call_builtin_prolog_β:
                        mov              r11, 297;                            jmp   test_exception$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n674_lit_string_α
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 5
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n675_lit_string_α
.Lx685_0:               .quad            .Lx685_0_s
.Lx685_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n676_lit_string_α
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 14
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n677_lit_string_α
.Lx687_0:               .quad            .Lx687_0_s
.Lx687_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n678_call_builtin_prolog_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n678_call_builtin_prolog_α:
                        mov              r11, 303
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    test_exception$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n679_call_builtin_prolog_α
n678_call_builtin_prolog_β:
                        mov              r11, 303;                            jmp   test_exception$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_prolog_α:
                        mov              r11, 304
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 168]
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
                        cmp              al, 104;                             je    n682_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n680_call_proc_staged_α
n679_call_builtin_prolog_β:
                        mov              r11, 304;                            jmp   n682_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        mov              r11, 305
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx692_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx692_201
.Lx692_200:             mov              edi, 0
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
.Lx692_201:             mov              rdi, qword ptr [rip + .Lx692_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx692_1
                        mov              rdi, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx692_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx692_3]
                        push             rcx
                        lea              rcx, [rip + .Lx692_3]
                        lea              rdx, [rip + .Lx692_4];               jmp   rax
.Lx692_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx692_2
.Lx692_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx692_2
.Lx692_1:               call             rt_faildescr@PLT
.Lx692_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx692_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx692_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n682_call_builtin_prolog_α
                                                                              jmp   n681_suspend_α
n680_call_proc_staged_β:
                        mov              r11, 305;                            jmp   n682_call_builtin_prolog_α
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n681_suspend_α:         mov              r11, 306
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx694_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx694_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n681_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n681_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_exception$2F0_γ
n681_suspend_β:         mov              r11, 306;                            jmp   n680_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n682_call_builtin_prolog_α:
                        mov              r11, 307
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_exception$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   test_exception$2F0_ω
n682_call_builtin_prolog_β:
                        mov              r11, 307;                            jmp   test_exception$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_exception$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_exception$2F0_β:
                                                                              jmp   n681_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_exception$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx695_50
                        mov              qword ptr [rsp + 368], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx695_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_exception$2F0_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_4$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n699_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n696_call_builtin_prolog_α:
                        mov              r11, 308
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx701_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx701_101
.Lx701_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx701_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx701_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx701_101
.Lx701_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx701_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n697_lit_string_α
n696_call_builtin_prolog_β:
                        mov              r11, 308;                            jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 14
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n698_call_proc_staged_α
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n698_call_proc_staged_α:
                        mov              r11, 310
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx704_200
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx704_201
.Lx704_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx704_201:             mov              rdi, qword ptr [rip + .Lx704_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx704_1
                        mov              rdi, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx704_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx704_3]
                        push             rcx
                        lea              rcx, [rip + .Lx704_3]
                        lea              rdx, [rip + .Lx704_4];               jmp   rax
.Lx704_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx704_2
.Lx704_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx704_2
.Lx704_1:               call             rt_faildescr@PLT
.Lx704_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx704_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx704_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n700_call_builtin_prolog_α
                                                                              jmp   n699_suspend_α
n698_call_proc_staged_β:
                        mov              r11, 310;                            jmp   n700_call_builtin_prolog_α
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n699_suspend_α:         mov              r11, 311
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx706_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx706_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n699_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n699_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n699_suspend_β:         mov              r11, 311;                            jmp   n698_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n700_call_builtin_prolog_α:
                        mov              r11, 312
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_4$2F0_ω
n700_call_builtin_prolog_β:
                        mov              r11, 312;                            jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n699_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx707_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx707_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n711_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n708_call_builtin_prolog_α:
                        mov              r11, 313
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx713_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx713_101
.Lx713_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx713_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx713_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx713_101
.Lx713_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx713_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n709_lit_string_α
n708_call_builtin_prolog_β:
                        mov              r11, 313;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 5
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n710_call_proc_staged_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        mov              r11, 315
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx716_200
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx716_201
.Lx716_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx716_201:             mov              rdi, qword ptr [rip + .Lx716_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx716_1
                        mov              rdi, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx716_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx716_3]
                        push             rcx
                        lea              rcx, [rip + .Lx716_3]
                        lea              rdx, [rip + .Lx716_4];               jmp   rax
.Lx716_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx716_2
.Lx716_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx716_2
.Lx716_1:               call             rt_faildescr@PLT
.Lx716_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx716_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx716_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n712_call_builtin_prolog_α
                                                                              jmp   n711_suspend_α
n710_call_proc_staged_β:
                        mov              r11, 315;                            jmp   n712_call_builtin_prolog_α
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n711_suspend_α:         mov              r11, 316
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx718_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx718_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n711_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n711_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n711_suspend_β:         mov              r11, 316;                            jmp   n710_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_prolog_α:
                        mov              r11, 317
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_2$2F0_ω
n712_call_builtin_prolog_β:
                        mov              r11, 317;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n711_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx719_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx719_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n730_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n720_call_builtin_prolog_α:
                        mov              r11, 318
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx732_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx732_101
.Lx732_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx732_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx732_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx732_101
.Lx732_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx732_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n721_lit_string_α
n720_call_builtin_prolog_β:
                        mov              r11, 318;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 14
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n722_lit_string_α
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "test_exception"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n723_lit_string_α
.Lx734_0:               .quad            .Lx734_0_s
.Lx734_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n724_lit_string_α
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 14
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n725_lit_integer_α
.Lx736_0:               .quad            .Lx736_0_s
.Lx736_0_s:             .string          "test_exception"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:     mov              r11, 323
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n726_call_builtin_prolog_α
.Lx737_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n726_call_builtin_prolog_α:
                        mov              r11, 324
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n727_lit_string_α
n726_call_builtin_prolog_β:
                        mov              r11, 324;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx739_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n728_call_builtin_prolog_α
.Lx739_0:               .quad            .Lx739_0_s
.Lx739_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_prolog_α:
                        mov              r11, 326
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n731_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n729_call_proc_staged_α
n728_call_builtin_prolog_β:
                        mov              r11, 326;                            jmp   n731_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n729_call_proc_staged_α:
                        mov              r11, 327
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx742_200
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx742_201
.Lx742_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx742_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx742_202
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx742_203
.Lx742_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx742_203:             mov              rdi, qword ptr [rip + .Lx742_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx742_1
                        mov              rdi, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx742_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx742_3]
                        push             rcx
                        lea              rcx, [rip + .Lx742_3]
                        lea              rdx, [rip + .Lx742_4];               jmp   rax
.Lx742_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx742_2
.Lx742_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx742_2
.Lx742_1:               call             rt_faildescr@PLT
.Lx742_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx742_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx742_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n731_call_builtin_prolog_α
                                                                              jmp   n730_suspend_α
n729_call_proc_staged_β:
                        mov              r11, 327;                            jmp   n731_call_builtin_prolog_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n730_suspend_α:         mov              r11, 328
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx744_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx744_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n730_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n730_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n730_suspend_β:         mov              r11, 328;                            jmp   n729_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_prolog_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_0$2F0_ω
n731_call_builtin_prolog_β:
                        mov              r11, 329;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n730_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx745_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx745_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n749_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n746_call_builtin_prolog_α:
                        mov              r11, 330
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx751_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx751_101
.Lx751_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx751_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx751_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx751_101
.Lx751_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx751_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n747_lit_string_α
n746_call_builtin_prolog_β:
                        mov              r11, 330;                            jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 14
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n748_call_proc_staged_α
.Lx752_0:               .quad            .Lx752_0_s
.Lx752_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        mov              r11, 332
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx754_200
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx754_201
.Lx754_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx754_201:             mov              rdi, qword ptr [rip + .Lx754_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx754_1
                        mov              rdi, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx754_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx754_3]
                        push             rcx
                        lea              rcx, [rip + .Lx754_3]
                        lea              rdx, [rip + .Lx754_4];               jmp   rax
.Lx754_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx754_2
.Lx754_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx754_2
.Lx754_1:               call             rt_faildescr@PLT
.Lx754_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx754_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx754_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n750_call_builtin_prolog_α
                                                                              jmp   n749_suspend_α
n748_call_proc_staged_β:
                        mov              r11, 332;                            jmp   n750_call_builtin_prolog_α
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n749_suspend_α:         mov              r11, 333
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx756_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx756_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n749_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n749_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_5$2F0_γ
n749_suspend_β:         mov              r11, 333;                            jmp   n748_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n750_call_builtin_prolog_α:
                        mov              r11, 334
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_5$2F0_ω
n750_call_builtin_prolog_β:
                        mov              r11, 334;                            jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_β:
                                                                              jmp   n749_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx757_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx757_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n761_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n758_call_builtin_prolog_α:
                        mov              r11, 335
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx763_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx763_101
.Lx763_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx763_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx763_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx763_101
.Lx763_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx763_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n759_lit_string_α
n758_call_builtin_prolog_β:
                        mov              r11, 335;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 5
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n760_call_proc_staged_α
.Lx764_0:               .quad            .Lx764_0_s
.Lx764_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n760_call_proc_staged_α:
                        mov              r11, 337
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx766_200
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx766_201
.Lx766_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx766_201:             mov              rdi, qword ptr [rip + .Lx766_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx766_1
                        mov              rdi, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx766_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx766_3]
                        push             rcx
                        lea              rcx, [rip + .Lx766_3]
                        lea              rdx, [rip + .Lx766_4];               jmp   rax
.Lx766_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx766_2
.Lx766_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx766_2
.Lx766_1:               call             rt_faildescr@PLT
.Lx766_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx766_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx766_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n762_call_builtin_prolog_α
                                                                              jmp   n761_suspend_α
n760_call_proc_staged_β:
                        mov              r11, 337;                            jmp   n762_call_builtin_prolog_α
.Lx766_0:               .quad            .Lx766_0_s
.Lx766_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n761_suspend_α:         mov              r11, 338
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx768_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx768_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n761_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n761_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n761_suspend_β:         mov              r11, 338;                            jmp   n760_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_prolog_α:
                        mov              r11, 339
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_3$2F0_ω
n762_call_builtin_prolog_β:
                        mov              r11, 339;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n761_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx769_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx769_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n770_call_builtin_prolog_α:
                        mov              r11, 340
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx777_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx777_101
.Lx777_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx777_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx777_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx777_101
.Lx777_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx777_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n771_lit_string_α
n770_call_builtin_prolog_β:
                        mov              r11, 340;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n772_lit_string_α
.Lx778_0:               .quad            .Lx778_0_s
.Lx778_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n773_call_builtin_prolog_α
.Lx779_0:               .quad            .Lx779_0_s
.Lx779_0_s:             .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_prolog_α:
                        mov              r11, 343
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n776_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n774_call_proc_staged_α
n773_call_builtin_prolog_β:
                        mov              r11, 343;                            jmp   n776_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n774_call_proc_staged_α:
                        mov              r11, 344
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx782_200
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx782_201
.Lx782_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx782_201:             mov              rdi, qword ptr [rip + .Lx782_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx782_1
                        mov              rdi, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx782_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx782_3]
                        push             rcx
                        lea              rcx, [rip + .Lx782_3]
                        lea              rdx, [rip + .Lx782_4];               jmp   rax
.Lx782_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx782_2
.Lx782_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx782_2
.Lx782_1:               call             rt_faildescr@PLT
.Lx782_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx782_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx782_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n776_call_builtin_prolog_α
                                                                              jmp   n775_suspend_α
n774_call_proc_staged_β:
                        mov              r11, 344;                            jmp   n776_call_builtin_prolog_α
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n775_suspend_α:         mov              r11, 345
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx784_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx784_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n775_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n775_suspend_β:         mov              r11, 345;                            jmp   n774_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n776_call_builtin_prolog_α:
                        mov              r11, 346
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_1$2F0_ω
n776_call_builtin_prolog_β:
                        mov              r11, 346;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n775_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx785_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx785_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
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
n786_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 14
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n787_call_proc_staged_α
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "ex_coroutining"
#-----------------------------------------------------------------------------------------------------------------------
n787_call_proc_staged_α:
                        mov              r11, 348
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx790_200
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx790_201
.Lx790_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx790_201:             mov              rdi, qword ptr [rip + .Lx790_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx790_1
                        mov              rdi, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx790_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx790_3]
                        push             rcx
                        lea              rcx, [rip + .Lx790_3]
                        lea              rdx, [rip + .Lx790_4];               jmp   rax
.Lx790_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx790_2
.Lx790_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx790_2
.Lx790_1:               call             rt_faildescr@PLT
.Lx790_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx790_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx790_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n787_call_proc_staged_β:
                        mov              r11, 348;                            jmp   main_ω
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "end_tests/1"
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
                        .long            4096
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
                        .long            5648
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test_exception/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__test_exception$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            384
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__pj_dir_4$2F0
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__pj_dir_2$2F0
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
.Lstartup_pname5:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_5/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__pj_dir_3$2F0
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
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__pj_dir_1$2F0
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
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
