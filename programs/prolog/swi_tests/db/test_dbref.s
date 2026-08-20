                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 4416
                        mov              qword ptr [rsp + 4392], rcx
                        mov              qword ptr [rsp + 4400], rdx
                        mov              qword ptr [rsp + 4408], rsp
                        mov              rdi, rsp
                        mov              esi, 4288
                        mov              edx, 4384
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
                        mov              qword ptr [rsp + 4288], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx143_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx143_101
.Lx143_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx143_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx143_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx143_101
.Lx143_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx143_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 5
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n3_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "bound"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4232], rax
                        lea              rdi, [rsp + 4224]
                        mov              rsi, qword ptr [rip + .Lx147_2];     jmp   .Lx147_3
.Lx147_2:               .quad            .Lx147_2_s
.Lx147_2_s:             .string          "bound"
.Lx147_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              eax, 104;                            je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 4192], 2            # result
                        mov              dword ptr [rsp + 4196], 5
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n6_var_ref_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4152], rax
                        lea              rdi, [rsp + 4144]
                        mov              esi, 2
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
                        cmp              eax, 104;                            je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_call_builtin_prolog_α
n7_call_builtin_prolog_β:
                                                                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4088], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4072], rax
                        lea              rdi, [rsp + 4064]
                        lea              r8, [rsp + 4064]
.Lx154_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              esi, 1;                              jne   .Lx154_55
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_55:              cmp              esi, 2;                              jne   .Lx154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_56:              cmp              eax, 72;                             jne   .Lx154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              rax, r8;                             je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_41:              lea              r9, [rsp + 4080]
.Lx154_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              esi, 1;                              jne   .Lx154_57
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_57:              cmp              esi, 2;                              jne   .Lx154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_58:              cmp              eax, 72;                             jne   .Lx154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              rax, r9;                             je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_43:              cmp              r8, r9;                              je    .Lx154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx154_44
                        cmp              eax, 104;                            je    .Lx154_44
                        cmp              eax, 72;                             jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx154_44
                                                                              jmp   .Lx154_45
.Lx154_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx154_53
                        cmp              eax, 104;                            je    .Lx154_53
                        cmp              eax, 72;                             jne   .Lx154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_53
                                                                              jmp   .Lx154_46
.Lx154_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx154_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx154_51
.Lx154_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx154_47
                        cmp              eax, 104;                            je    .Lx154_47
                        cmp              eax, 72;                             jne   .Lx154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_47
                                                                              jmp   .Lx154_48
.Lx154_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx154_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx154_51
.Lx154_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx154_49
                        cmp              edx, 80;                             je    .Lx154_53
                                                                              jmp   .Lx154_52
.Lx154_49:              cmp              edx, 80;                             je    .Lx154_52
                        cmp              ecx, 5;                              je    .Lx154_53
                        cmp              edx, 5;                              je    .Lx154_53
                        cmp              ecx, 3;                              jne   .Lx154_50
                        cmp              edx, 3;                              jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx154_51
                                                                              jmp   .Lx154_52
.Lx154_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx154_53
.Lx154_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx154_54
.Lx154_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx154_54
.Lx154_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx154_54:              mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                        cmp              eax, 104;                            je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                                                                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 8
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n10_call_builtin_prolog_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 4024], rax
                        .section         .rodata
.Lrkfn157:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rsp + 4016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              eax, 104;                            je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                                                                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx159_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx159_61:              mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n11_suspend_β:                                                                jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              qword ptr [rsp + 3936], 2            # result
                        mov              dword ptr [rsp + 3940], 5
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n15_call_builtin_prolog_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        mov              rsi, qword ptr [rip + .Lx164_2];     jmp   .Lx164_3
.Lx164_2:               .quad            .Lx164_2_s
.Lx164_2_s:             .string          "erase"
.Lx164_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104;                            je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                              jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 3856], 2            # result
                        mov              dword ptr [rsp + 3860], 4
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n18_call_builtin_prolog_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              rsi, qword ptr [rip + .Lx168_2];     jmp   .Lx168_3
.Lx168_2:               .quad            .Lx168_2_s
.Lx168_2_s:             .string          "true"
.Lx168_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              eax, 104;                            je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                                                                              jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 3776], 2            # result
                        mov              dword ptr [rsp + 3780], 8
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n20_call_builtin_prolog_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3768], rax
                        .section         .rodata
.Lrkfn171:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rsp + 3760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              eax, 104;                            je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                              jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n22_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx175_20
                        mov              rax, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx175_21
.Lx175_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx175_21:              mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx175_1
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx175_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx175_3]
                        push             rcx
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4];               jmp   rax
.Lx175_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx175_2
.Lx175_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx175_2
.Lx175_1:               call             rt_faildescr@PLT
.Lx175_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx175_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3680]
                        mov              rdx, qword ptr [rsp + 3688]
.Lx175_29:              mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              eax, 104;                            je    n26_call_builtin_prolog_α
                                                                              jmp   n23_lit_string_α
n22_call_proc_staged_β:                                                       jmp   n26_call_builtin_prolog_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n24_call_proc_staged_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              qword ptr [rsp + 3632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx178_20
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx178_21
.Lx178_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx178_21:              lea              rax, [rip + .Lx178_7]
                        push             rax
                        mov              edi, 10
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx178_1
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4];               jmp   rax
.Lx178_3:               mov              qword ptr [rsp + 3640], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lx178_5
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx178_2
.Lx178_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx178_2
.Lx178_4:               mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lx178_6
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx178_2
.Lx178_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx178_2
.Lx178_1:               call             rt_faildescr@PLT
.Lx178_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx178_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3600]
                        mov              rdx, qword ptr [rsp + 3608]
.Lx178_29:              mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              eax, 104;                            je    n25_suspend_α
                                                                              jmp   n22_call_proc_staged_β
n24_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3632], 0
                        lea              rdi, [rsp + 3648]
                        lea              rsi, [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n25_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        mov              ecx, 0
                        mov              r8d, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 10
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n25_suspend_α
                        lea              r11, [rip + .Lx178_7]
                        push             r11
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4];               jmp   rax
.Lx178_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              eax, 104;                            je    n25_suspend_α
                                                                              jmp   n22_call_proc_staged_β
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "term/1"
#-----------------------------------------------------------------------------------------------------------------------
n25_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx180_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx180_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n25_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n25_suspend_β:                                                                jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3592], rax
                        lea              rdi, [rsp + 3584]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 12
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n29_call_builtin_prolog_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3512], rax
                        lea              rdi, [rsp + 3504]
                        mov              rsi, qword ptr [rip + .Lx185_2];     jmp   .Lx185_3
.Lx185_2:               .quad            .Lx185_2_s
.Lx185_2_s:             .string          "double_erase"
.Lx185_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_var_ref_α
n29_call_builtin_prolog_β:
                                                                              jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 3472], 2            # result
                        mov              dword ptr [rsp + 3476], 4
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n32_call_builtin_prolog_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              rsi, qword ptr [rip + .Lx189_2];     jmp   .Lx189_3
.Lx189_2:               .quad            .Lx189_2_s
.Lx189_2_s:             .string          "true"
.Lx189_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                                                                              jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 8
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n34_call_builtin_prolog_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn192:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                                                                              jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n36_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx196_20
                        mov              rax, qword ptr [rsp + 3344]
                        mov              rdx, qword ptr [rsp + 3352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx196_21
.Lx196_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3344]
                        mov              rdx, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx196_21:              mov              rdi, qword ptr [rip + .Lx196_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx196_1
                        mov              rdi, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx196_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx196_3]
                        push             rcx
                        lea              rcx, [rip + .Lx196_3]
                        lea              rdx, [rip + .Lx196_4];               jmp   rax
.Lx196_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx196_2
.Lx196_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx196_2
.Lx196_1:               call             rt_faildescr@PLT
.Lx196_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx196_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3296]
                        mov              rdx, qword ptr [rsp + 3304]
.Lx196_29:              mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                                                                              jmp   n37_var_ref_α
n36_call_proc_staged_β:                                                       jmp   n40_call_builtin_prolog_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n38_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx200_20
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx200_21
.Lx200_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx200_21:              mov              rdi, qword ptr [rip + .Lx200_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx200_1
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx200_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx200_3]
                        push             rcx
                        lea              rcx, [rip + .Lx200_3]
                        lea              rdx, [rip + .Lx200_4];               jmp   rax
.Lx200_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx200_2
.Lx200_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx200_2
.Lx200_1:               call             rt_faildescr@PLT
.Lx200_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx200_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
.Lx200_29:              mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              eax, 104;                            je    n39_suspend_α
                                                                              jmp   n36_call_proc_staged_β
n38_call_proc_staged_β:                                                       jmp   n39_suspend_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx202_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx202_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n39_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n39_suspend_β:                                                                jmp   n36_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 13
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n43_call_builtin_prolog_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "retract_erase"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              rsi, qword ptr [rip + .Lx207_2];     jmp   .Lx207_3
.Lx207_2:               .quad            .Lx207_2_s
.Lx207_2_s:             .string          "retract_erase"
.Lx207_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104;                            je    n54_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                                                                              jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 4
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n46_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        lea              rdi, [rsp + 3056]
                        mov              rsi, qword ptr [rip + .Lx211_2];     jmp   .Lx211_3
.Lx211_2:               .quad            .Lx211_2_s
.Lx211_2_s:             .string          "true"
.Lx211_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              eax, 104;                            je    n54_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                                                                              jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 8
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n48_call_builtin_prolog_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn214:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 3008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n54_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_lit_string_α
n48_call_builtin_prolog_β:
                                                                              jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 12
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n50_call_builtin_prolog_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn217:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              eax, 104;                            je    n54_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_var_ref_α
n50_call_builtin_prolog_β:
                                                                              jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx221_20
                        mov              rax, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx221_21
.Lx221_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx221_21:              mov              rdi, qword ptr [rip + .Lx221_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx221_1
                        mov              rdi, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx221_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx221_3]
                        push             rcx
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4];               jmp   rax
.Lx221_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx221_2
.Lx221_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx221_2
.Lx221_1:               call             rt_faildescr@PLT
.Lx221_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx221_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2880]
                        mov              rdx, qword ptr [rsp + 2888]
.Lx221_29:              mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              eax, 104;                            je    n53_suspend_α
                                                                              jmp   n54_call_builtin_prolog_α
n52_call_proc_staged_β:                                                       jmp   n53_suspend_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx223_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx223_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n53_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n53_suspend_β:                                                                jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 5
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n57_call_builtin_prolog_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        lea              rdi, [rsp + 2768]
                        mov              rsi, qword ptr [rip + .Lx228_2];     jmp   .Lx228_3
.Lx228_2:               .quad            .Lx228_2_s
.Lx228_2_s:             .string          "erase"
.Lx228_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 104;                            je    n74_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_var_ref_α
n57_call_builtin_prolog_β:
                                                                              jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 4
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n60_call_builtin_prolog_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2696], rax
                        lea              rdi, [rsp + 2688]
                        mov              rsi, qword ptr [rip + .Lx232_2];     jmp   .Lx232_3
.Lx232_2:               .quad            .Lx232_2_s
.Lx232_2_s:             .string          "true"
.Lx232_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              eax, 104;                            je    n74_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n60_call_builtin_prolog_β:
                                                                              jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 4
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n62_lit_string_α
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n63_var_ref_α
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n64_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx238_20
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx238_21
.Lx238_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx238_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx238_22
                        mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx238_23
.Lx238_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx238_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx238_24
                        mov              rax, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx238_25
.Lx238_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx238_25:              mov              rdi, qword ptr [rip + .Lx238_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx238_1
                        mov              rdi, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx238_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx238_3]
                        push             rcx
                        lea              rcx, [rip + .Lx238_3]
                        lea              rdx, [rip + .Lx238_4];               jmp   rax
.Lx238_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx238_2
.Lx238_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx238_2
.Lx238_1:               call             rt_faildescr@PLT
.Lx238_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx238_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
.Lx238_29:              mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              eax, 104;                            je    n74_call_builtin_prolog_α
                                                                              jmp   n65_lit_string_α
n64_call_proc_staged_β:                                                       jmp   n74_call_builtin_prolog_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 4
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n66_lit_string_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n67_call_proc_staged_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx242_20
                        mov              rax, qword ptr [rsp + 2512]
                        mov              rdx, qword ptr [rsp + 2520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx242_21
.Lx242_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2512]
                        mov              rdx, qword ptr [rsp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx242_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx242_22
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx242_23
.Lx242_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx242_23:              mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx242_1
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx242_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx242_3]
                        push             rcx
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4];               jmp   rax
.Lx242_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_1:               call             rt_faildescr@PLT
.Lx242_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx242_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
.Lx242_29:              mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              eax, 104;                            je    n64_call_proc_staged_β
                                                                              jmp   n68_var_ref_α
n67_call_proc_staged_β:                                                       jmp   n64_call_proc_staged_β
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n69_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx246_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx246_21
.Lx246_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx246_21:              mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx246_1
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx246_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx246_3]
                        push             rcx
                        lea              rcx, [rip + .Lx246_3]
                        lea              rdx, [rip + .Lx246_4];               jmp   rax
.Lx246_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx246_2
.Lx246_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx246_2
.Lx246_1:               call             rt_faildescr@PLT
.Lx246_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx246_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
.Lx246_29:              mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104;                            je    n67_call_proc_staged_β
                                                                              jmp   n70_lit_string_α
n69_call_proc_staged_β:                                                       jmp   n67_call_proc_staged_β
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 4
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n71_lit_string_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n72_call_proc_staged_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx250_20
                        mov              rax, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx250_21
.Lx250_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx250_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx250_22
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx250_23
.Lx250_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx250_23:              mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx250_1
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx250_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx250_3]
                        push             rcx
                        lea              rcx, [rip + .Lx250_3]
                        lea              rdx, [rip + .Lx250_4];               jmp   rax
.Lx250_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx250_2
.Lx250_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx250_2
.Lx250_1:               call             rt_faildescr@PLT
.Lx250_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx250_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
.Lx250_29:              mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104;                            je    n73_suspend_α
                                                                              jmp   n69_call_proc_staged_β
n72_call_proc_staged_β:                                                       jmp   n73_suspend_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n73_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx252_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx252_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n73_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n73_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n73_suspend_β:                                                                jmp   n69_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2280], rax
                        lea              rdi, [rsp + 2272]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 12
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n77_call_builtin_prolog_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        lea              rdi, [rsp + 2192]
                        mov              rsi, qword ptr [rip + .Lx257_2];     jmp   .Lx257_3
.Lx257_2:               .quad            .Lx257_2_s
.Lx257_2_s:             .string          "double_erase"
.Lx257_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 4
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n80_call_builtin_prolog_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax
                        lea              rdi, [rsp + 2112]
                        mov              rsi, qword ptr [rip + .Lx261_2];     jmp   .Lx261_3
.Lx261_2:               .quad            .Lx261_2_s
.Lx261_2_s:             .string          "true"
.Lx261_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_lit_string_α
n80_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n82_lit_string_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n83_var_ref_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n84_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx267_20
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx267_21
.Lx267_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx267_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx267_22
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx267_23
.Lx267_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx267_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx267_24
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx267_25
.Lx267_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx267_25:              mov              rdi, qword ptr [rip + .Lx267_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx267_1
                        mov              rdi, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx267_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx267_3]
                        push             rcx
                        lea              rcx, [rip + .Lx267_3]
                        lea              rdx, [rip + .Lx267_4];               jmp   rax
.Lx267_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx267_2
.Lx267_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx267_2
.Lx267_1:               call             rt_faildescr@PLT
.Lx267_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx267_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
.Lx267_29:              mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                                                                              jmp   n85_lit_string_α
n84_call_proc_staged_β:                                                       jmp   n93_call_builtin_prolog_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 4
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n86_lit_string_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n87_call_proc_staged_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx271_20
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx271_21
.Lx271_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx271_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx271_22
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx271_23
.Lx271_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx271_23:              mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx271_1
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx271_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx271_3]
                        push             rcx
                        lea              rcx, [rip + .Lx271_3]
                        lea              rdx, [rip + .Lx271_4];               jmp   rax
.Lx271_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx271_2
.Lx271_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx271_2
.Lx271_1:               call             rt_faildescr@PLT
.Lx271_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx271_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
.Lx271_29:              mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n84_call_proc_staged_β
                                                                              jmp   n88_var_ref_α
n87_call_proc_staged_β:                                                       jmp   n84_call_proc_staged_β
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx275_20
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx275_21
.Lx275_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx275_21:              mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx275_1
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx275_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx275_3]
                        push             rcx
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4];               jmp   rax
.Lx275_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx275_2
.Lx275_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx275_2
.Lx275_1:               call             rt_faildescr@PLT
.Lx275_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx275_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
.Lx275_29:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n87_call_proc_staged_β
                                                                              jmp   n90_var_ref_α
n89_call_proc_staged_β:                                                       jmp   n87_call_proc_staged_β
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx279_20
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx279_21
.Lx279_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx279_21:              mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx279_1
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx279_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx279_3]
                        push             rcx
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4];               jmp   rax
.Lx279_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx279_2
.Lx279_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx279_2
.Lx279_1:               call             rt_faildescr@PLT
.Lx279_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx279_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
.Lx279_29:              mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n92_suspend_α
                                                                              jmp   n89_call_proc_staged_β
n91_call_proc_staged_β:                                                       jmp   n92_suspend_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx281_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx281_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n92_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n92_suspend_β:                                                                jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 11
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n96_call_builtin_prolog_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "recorded_vt"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        mov              rsi, qword ptr [rip + .Lx286_2];     jmp   .Lx286_3
.Lx286_2:               .quad            .Lx286_2_s
.Lx286_2_s:             .string          "recorded_vt"
.Lx286_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 104;                            je    n142_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                              jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n99_lit_string_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 4
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n100_lit_string_α
.Lx290_0:               .quad            .Lx290_0_s
.Lx290_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 2
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n101_lit_string_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n102_var_ref_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n104_var_ref_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 2
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n106_call_builtin_prolog_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_call_builtin_prolog_α
n106_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_lit_string_α
n107_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n109_lit_string_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n110_lit_string_α
.Lx302_0:               .quad            .Lx302_0_s
.Lx302_0_s:             .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n111_lit_string_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n112_lit_string_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 2
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n113_call_builtin_prolog_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_call_builtin_prolog_α
n113_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_call_builtin_prolog_α
n114_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_call_builtin_prolog_α
n115_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_lit_string_α
n116_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n118_lit_string_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n119_lit_string_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "nondet"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 2
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n120_call_builtin_prolog_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_call_builtin_prolog_α
n120_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n142_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_call_builtin_prolog_α
n121_call_builtin_prolog_β:
                                                                              jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        lea              r8, [rsp + 704]
.Lx315_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx315_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx315_41
                        cmp              esi, 1;                              jne   .Lx315_55
                        mov              r8, rax;                             jmp   .Lx315_40
.Lx315_55:              cmp              esi, 2;                              jne   .Lx315_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx315_41
                        mov              r8, rax;                             jmp   .Lx315_40
.Lx315_56:              cmp              eax, 72;                             jne   .Lx315_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx315_41
                        cmp              rax, r8;                             je    .Lx315_41
                        mov              r8, rax;                             jmp   .Lx315_40
.Lx315_41:              lea              r9, [rsp + 720]
.Lx315_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx315_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx315_43
                        cmp              esi, 1;                              jne   .Lx315_57
                        mov              r9, rax;                             jmp   .Lx315_42
.Lx315_57:              cmp              esi, 2;                              jne   .Lx315_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx315_43
                        mov              r9, rax;                             jmp   .Lx315_42
.Lx315_58:              cmp              eax, 72;                             jne   .Lx315_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx315_43
                        cmp              rax, r9;                             je    .Lx315_43
                        mov              r9, rax;                             jmp   .Lx315_42
.Lx315_43:              cmp              r8, r9;                              je    .Lx315_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx315_44
                        cmp              eax, 104;                            je    .Lx315_44
                        cmp              eax, 72;                             jne   .Lx315_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx315_44
                                                                              jmp   .Lx315_45
.Lx315_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx315_53
                        cmp              eax, 104;                            je    .Lx315_53
                        cmp              eax, 72;                             jne   .Lx315_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx315_53
                                                                              jmp   .Lx315_46
.Lx315_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx315_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx315_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx315_51
.Lx315_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx315_47
                        cmp              eax, 104;                            je    .Lx315_47
                        cmp              eax, 72;                             jne   .Lx315_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx315_47
                                                                              jmp   .Lx315_48
.Lx315_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx315_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx315_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx315_51
.Lx315_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx315_49
                        cmp              edx, 80;                             je    .Lx315_53
                                                                              jmp   .Lx315_52
.Lx315_49:              cmp              edx, 80;                             je    .Lx315_52
                        cmp              ecx, 5;                              je    .Lx315_53
                        cmp              edx, 5;                              je    .Lx315_53
                        cmp              ecx, 3;                              jne   .Lx315_50
                        cmp              edx, 3;                              jne   .Lx315_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx315_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx315_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx315_51
                                                                              jmp   .Lx315_52
.Lx315_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx315_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx315_53
.Lx315_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx315_54
.Lx315_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx315_54
.Lx315_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx315_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n142_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                                                                              jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n124_lit_string_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n125_var_ref_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4320]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n126_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_20
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx321_21
.Lx321_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_22
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx321_23
.Lx321_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_24
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx321_25
.Lx321_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_25:              mov              rdi, qword ptr [rip + .Lx321_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx321_1
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx321_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx321_3]
                        push             rcx
                        lea              rcx, [rip + .Lx321_3]
                        lea              rdx, [rip + .Lx321_4];               jmp   rax
.Lx321_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx321_2
.Lx321_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx321_2
.Lx321_1:               call             rt_faildescr@PLT
.Lx321_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx321_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
.Lx321_29:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n142_call_builtin_prolog_α
                                                                              jmp   n127_lit_string_α
n126_call_proc_staged_β:
                                                                              jmp   n142_call_builtin_prolog_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 6
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n128_lit_string_α
.Lx322_0:               .quad            .Lx322_0_s
.Lx322_0_s:             .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n129_var_ref_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4304]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n130_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx327_20
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx327_21
.Lx327_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx327_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx327_22
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx327_23
.Lx327_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx327_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx327_24
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx327_25
.Lx327_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx327_25:              mov              rdi, qword ptr [rip + .Lx327_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx327_1
                        mov              rdi, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx327_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx327_3]
                        push             rcx
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4];               jmp   rax
.Lx327_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_1:               call             rt_faildescr@PLT
.Lx327_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx327_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
.Lx327_29:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n126_call_proc_staged_β
                                                                              jmp   n131_var_ref_α
n130_call_proc_staged_β:
                                                                              jmp   n126_call_proc_staged_β
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n133_call_proc_staged_α
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx332_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx332_21
.Lx332_20:              mov              edi, 0
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
.Lx332_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx332_22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx332_23
.Lx332_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx332_23:              mov              rdi, qword ptr [rip + .Lx332_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx332_1
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx332_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx332_3]
                        push             rcx
                        lea              rcx, [rip + .Lx332_3]
                        lea              rdx, [rip + .Lx332_4];               jmp   rax
.Lx332_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx332_2
.Lx332_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx332_2
.Lx332_1:               call             rt_faildescr@PLT
.Lx332_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx332_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx332_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n130_call_proc_staged_β
                                                                              jmp   n134_var_ref_α
n133_call_proc_staged_β:
                                                                              jmp   n130_call_proc_staged_β
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n136_call_proc_staged_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx337_20
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx337_21
.Lx337_20:              mov              edi, 0
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
.Lx337_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx337_22
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx337_23
.Lx337_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx337_23:              mov              rdi, qword ptr [rip + .Lx337_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx337_1
                        mov              rdi, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx337_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx337_3]
                        push             rcx
                        lea              rcx, [rip + .Lx337_3]
                        lea              rdx, [rip + .Lx337_4];               jmp   rax
.Lx337_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx337_2
.Lx337_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx337_2
.Lx337_1:               call             rt_faildescr@PLT
.Lx337_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx337_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx337_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n133_call_proc_staged_β
                                                                              jmp   n137_var_ref_α
n136_call_proc_staged_β:
                                                                              jmp   n133_call_proc_staged_β
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4320]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx341_21
.Lx341_20:              mov              edi, 0
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
.Lx341_21:              mov              rdi, qword ptr [rip + .Lx341_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx341_1
                        mov              rdi, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx341_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx341_3]
                        push             rcx
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4];               jmp   rax
.Lx341_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx341_2
.Lx341_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx341_2
.Lx341_1:               call             rt_faildescr@PLT
.Lx341_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx341_29
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
.Lx341_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n136_call_proc_staged_β
                                                                              jmp   n139_var_ref_α
n138_call_proc_staged_β:
                                                                              jmp   n136_call_proc_staged_β
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4304]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n140_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx345_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx345_21
.Lx345_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx345_21:              mov              rdi, qword ptr [rip + .Lx345_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx345_1
                        mov              rdi, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx345_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx345_3]
                        push             rcx
                        lea              rcx, [rip + .Lx345_3]
                        lea              rdx, [rip + .Lx345_4];               jmp   rax
.Lx345_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx345_2
.Lx345_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx345_2
.Lx345_1:               call             rt_faildescr@PLT
.Lx345_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx345_29
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
.Lx345_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n138_call_proc_staged_β
                                                                              jmp   n141_suspend_α
n140_call_proc_staged_β:
                                                                              jmp   n138_call_proc_staged_β
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n141_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx347_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx347_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n141_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n141_suspend_β]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n141_suspend_β:                                                               jmp   n140_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   test$2F2_ω
n142_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx348_50
                        mov              qword ptr [rsp + 4288], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4288];         jmp   rax
.Lx348_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4392]
                        add              rsp, 4416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 4400]
                        add              rsp, 4416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_dbref$2F0:
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
test_dbref$2F0_α_body:
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx360_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx360_101
.Lx360_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx360_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx360_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx360_101
.Lx360_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx360_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    test_dbref$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n350_lit_string_α
n349_call_builtin_prolog_β:
                                                                              jmp   test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n351_lit_string_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 7
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n352_lit_string_α
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n353_lit_string_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 8
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n354_lit_string_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n355_call_builtin_prolog_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    test_dbref$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n356_call_builtin_prolog_α
n355_call_builtin_prolog_β:
                                                                              jmp   test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n359_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_call_proc_staged_α
n356_call_builtin_prolog_β:
                                                                              jmp   n359_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx369_20
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx369_21
.Lx369_20:              mov              edi, 0
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
.Lx369_21:              mov              rdi, qword ptr [rip + .Lx369_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx369_1
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx369_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx369_3]
                        push             rcx
                        lea              rcx, [rip + .Lx369_3]
                        lea              rdx, [rip + .Lx369_4];               jmp   rax
.Lx369_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx369_2
.Lx369_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx369_2
.Lx369_1:               call             rt_faildescr@PLT
.Lx369_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx369_29
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
.Lx369_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n359_call_builtin_prolog_α
                                                                              jmp   n358_suspend_α
n357_call_proc_staged_β:
                                                                              jmp   n359_call_builtin_prolog_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n358_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx371_61
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
.Lx371_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n358_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_dbref$2F0_γ
n358_suspend_β:                                                               jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n359_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    test_dbref$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   test_dbref$2F0_ω
n359_call_builtin_prolog_β:
                                                                              jmp   test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_dbref$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_dbref$2F0_β:
                                                                              jmp   n358_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_dbref$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx372_50
                        mov              qword ptr [rsp + 368], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx372_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_dbref$2F0_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 8928
                        mov              qword ptr [rsp + 8904], rcx
                        mov              qword ptr [rsp + 8912], rdx
                        mov              qword ptr [rsp + 8920], rsp
                        mov              rdi, rsp
                        mov              esi, 8800
                        mov              edx, 8896
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_test$2F4_α_body:
                        lea              rax, [rip + n393_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx633_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx633_101
.Lx633_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx633_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx633_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx633_101
.Lx633_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx633_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n374_var_ref_α
n373_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8768], rax
                        mov              qword ptr [rsp + 8776], rdx;         jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              qword ptr [rsp + 8784], 2            # result
                        mov              dword ptr [rsp + 8788], 7
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 8792], rax;         jmp   n376_call_builtin_prolog_α
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 8736], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 8744], rax
                        lea              rdi, [rsp + 8736]
                        mov              rsi, qword ptr [rip + .Lx637_2];     jmp   .Lx637_3
.Lx637_2:               .quad            .Lx637_2_s
.Lx637_2_s:             .string          "assert2"
.Lx637_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8720], rax
                        mov              qword ptr [rsp + 8728], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n377_var_ref_α
n376_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 8688], rax
                        mov              qword ptr [rsp + 8696], rdx;         jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              qword ptr [rsp + 8704], 2            # result
                        mov              dword ptr [rsp + 8708], 5
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n379_call_builtin_prolog_α
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "bound"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8688]
                        mov              qword ptr [rsp + 8656], rax
                        mov              rax, qword ptr [rsp + 8696]
                        mov              qword ptr [rsp + 8664], rax
                        lea              rdi, [rsp + 8656]
                        mov              rsi, qword ptr [rip + .Lx641_2];     jmp   .Lx641_3
.Lx641_2:               .quad            .Lx641_2_s
.Lx641_2_s:             .string          "bound"
.Lx641_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8640], rax
                        mov              qword ptr [rsp + 8648], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_var_ref_α
n379_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 8528], rax
                        mov              qword ptr [rsp + 8536], rdx;         jmp   n381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              qword ptr [rsp + 8624], 2            # result
                        mov              dword ptr [rsp + 8628], 5
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 8632], rax;         jmp   n382_var_ref_α
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 8544], rax
                        mov              qword ptr [rsp + 8552], rdx;         jmp   n383_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8544]
                        mov              qword ptr [rsp + 8592], rax
                        mov              rax, qword ptr [rsp + 8552]
                        mov              qword ptr [rsp + 8600], rax
                        mov              rax, qword ptr [rsp + 8624]
                        mov              qword ptr [rsp + 8576], rax
                        mov              rax, qword ptr [rsp + 8632]
                        mov              qword ptr [rsp + 8584], rax
                        lea              rdi, [rsp + 8576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8560], rax
                        mov              qword ptr [rsp + 8568], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n384_call_builtin_prolog_α
n383_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8560]
                        mov              qword ptr [rsp + 8512], rax
                        mov              rax, qword ptr [rsp + 8568]
                        mov              qword ptr [rsp + 8520], rax
                        mov              rax, qword ptr [rsp + 8528]
                        mov              qword ptr [rsp + 8496], rax
                        mov              rax, qword ptr [rsp + 8536]
                        mov              qword ptr [rsp + 8504], rax
                        lea              rdi, [rsp + 8496]
                        lea              r8, [rsp + 8496]
.Lx648_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              esi, 1;                              jne   .Lx648_55
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_55:              cmp              esi, 2;                              jne   .Lx648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_56:              cmp              eax, 72;                             jne   .Lx648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              rax, r8;                             je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_41:              lea              r9, [rsp + 8512]
.Lx648_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              esi, 1;                              jne   .Lx648_57
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_57:              cmp              esi, 2;                              jne   .Lx648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_58:              cmp              eax, 72;                             jne   .Lx648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              rax, r9;                             je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_43:              cmp              r8, r9;                              je    .Lx648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx648_44
                        cmp              eax, 104;                            je    .Lx648_44
                        cmp              eax, 72;                             jne   .Lx648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx648_44
                                                                              jmp   .Lx648_45
.Lx648_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx648_53
                        cmp              eax, 104;                            je    .Lx648_53
                        cmp              eax, 72;                             jne   .Lx648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_53
                                                                              jmp   .Lx648_46
.Lx648_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx648_51
.Lx648_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx648_47
                        cmp              eax, 104;                            je    .Lx648_47
                        cmp              eax, 72;                             jne   .Lx648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_47
                                                                              jmp   .Lx648_48
.Lx648_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx648_51
.Lx648_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx648_49
                        cmp              edx, 80;                             je    .Lx648_53
                                                                              jmp   .Lx648_52
.Lx648_49:              cmp              edx, 80;                             je    .Lx648_52
                        cmp              ecx, 5;                              je    .Lx648_53
                        cmp              edx, 5;                              je    .Lx648_53
                        cmp              ecx, 3;                              jne   .Lx648_50
                        cmp              edx, 3;                              jne   .Lx648_50
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
.Lx648_54:              mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_var_ref_α
n384_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx;         jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              qword ptr [rsp + 8464], 2            # result
                        mov              dword ptr [rsp + 8468], 6
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 8472], rax;         jmp   n387_lit_string_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              qword ptr [rsp + 8352], 2            # result
                        mov              dword ptr [rsp + 8356], 4
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 8360], rax;         jmp   n388_lit_string_α
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              qword ptr [rsp + 8272], 2            # result
                        mov              dword ptr [rsp + 8276], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 8280], rax;         jmp   n389_call_builtin_prolog_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8272]
                        mov              qword ptr [rsp + 8320], rax
                        mov              rax, qword ptr [rsp + 8280]
                        mov              qword ptr [rsp + 8328], rax
                        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 8304], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 8312], rax
                        lea              rdi, [rsp + 8304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n390_lit_string_α
n389_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              qword ptr [rsp + 8368], 2            # result
                        mov              dword ptr [rsp + 8372], 5
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n391_call_builtin_prolog_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "noref"
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8368]
                        mov              qword ptr [rsp + 8432], rax
                        mov              rax, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 8440], rax
                        mov              rax, qword ptr [rsp + 8288]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8296]
                        mov              qword ptr [rsp + 8424], rax
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 8400], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 8408], rax
                        lea              rdi, [rsp + 8400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8384], rax
                        mov              qword ptr [rsp + 8392], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_call_builtin_prolog_α
n391_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8384]
                        mov              qword ptr [rsp + 8240], rax
                        mov              rax, qword ptr [rsp + 8392]
                        mov              qword ptr [rsp + 8248], rax
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8232], rax
                        lea              rdi, [rsp + 8224]
                        lea              r8, [rsp + 8224]
.Lx657_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx657_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx657_41
                        cmp              esi, 1;                              jne   .Lx657_55
                        mov              r8, rax;                             jmp   .Lx657_40
.Lx657_55:              cmp              esi, 2;                              jne   .Lx657_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx657_41
                        mov              r8, rax;                             jmp   .Lx657_40
.Lx657_56:              cmp              eax, 72;                             jne   .Lx657_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx657_41
                        cmp              rax, r8;                             je    .Lx657_41
                        mov              r8, rax;                             jmp   .Lx657_40
.Lx657_41:              lea              r9, [rsp + 8240]
.Lx657_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx657_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx657_43
                        cmp              esi, 1;                              jne   .Lx657_57
                        mov              r9, rax;                             jmp   .Lx657_42
.Lx657_57:              cmp              esi, 2;                              jne   .Lx657_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx657_43
                        mov              r9, rax;                             jmp   .Lx657_42
.Lx657_58:              cmp              eax, 72;                             jne   .Lx657_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx657_43
                        cmp              rax, r9;                             je    .Lx657_43
                        mov              r9, rax;                             jmp   .Lx657_42
.Lx657_43:              cmp              r8, r9;                              je    .Lx657_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx657_44
                        cmp              eax, 104;                            je    .Lx657_44
                        cmp              eax, 72;                             jne   .Lx657_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx657_44
                                                                              jmp   .Lx657_45
.Lx657_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx657_53
                        cmp              eax, 104;                            je    .Lx657_53
                        cmp              eax, 72;                             jne   .Lx657_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx657_53
                                                                              jmp   .Lx657_46
.Lx657_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx657_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx657_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx657_51
.Lx657_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx657_47
                        cmp              eax, 104;                            je    .Lx657_47
                        cmp              eax, 72;                             jne   .Lx657_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx657_47
                                                                              jmp   .Lx657_48
.Lx657_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx657_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx657_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx657_51
.Lx657_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx657_49
                        cmp              edx, 80;                             je    .Lx657_53
                                                                              jmp   .Lx657_52
.Lx657_49:              cmp              edx, 80;                             je    .Lx657_52
                        cmp              ecx, 5;                              je    .Lx657_53
                        cmp              edx, 5;                              je    .Lx657_53
                        cmp              ecx, 3;                              jne   .Lx657_50
                        cmp              edx, 3;                              jne   .Lx657_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx657_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx657_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx657_51
                                                                              jmp   .Lx657_52
.Lx657_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx657_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx657_53
.Lx657_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx657_54
.Lx657_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx657_54
.Lx657_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx657_54:              mov              qword ptr [rsp + 8208], rax
                        mov              qword ptr [rsp + 8216], rdx
                        cmp              eax, 104;                            je    n394_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n393_suspend_α
n392_call_builtin_prolog_β:
                                                                              jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n393_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx659_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx659_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n393_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n393_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n393_suspend_β:                                                               jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 8176], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8184], rax
                        lea              rdi, [rsp + 8176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n395_var_ref_α
n394_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8128], rax
                        mov              qword ptr [rsp + 8136], rdx;         jmp   n396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              qword ptr [rsp + 8144], 2            # result
                        mov              dword ptr [rsp + 8148], 7
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n397_call_builtin_prolog_α
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 8096], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 8104], rax
                        lea              rdi, [rsp + 8096]
                        mov              rsi, qword ptr [rip + .Lx664_2];     jmp   .Lx664_3
.Lx664_2:               .quad            .Lx664_2_s
.Lx664_2_s:             .string          "assert2"
.Lx664_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx
                        cmp              eax, 104;                            je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n398_var_ref_α
n397_call_builtin_prolog_β:
                                                                              jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 8048], rax
                        mov              qword ptr [rsp + 8056], rdx;         jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              qword ptr [rsp + 8064], 2            # result
                        mov              dword ptr [rsp + 8068], 5
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 8072], rax;         jmp   n400_call_builtin_prolog_α
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8048]
                        mov              qword ptr [rsp + 8016], rax
                        mov              rax, qword ptr [rsp + 8056]
                        mov              qword ptr [rsp + 8024], rax
                        lea              rdi, [rsp + 8016]
                        mov              rsi, qword ptr [rip + .Lx668_2];     jmp   .Lx668_3
.Lx668_2:               .quad            .Lx668_2_s
.Lx668_2_s:             .string          "erase"
.Lx668_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8000], rax
                        mov              qword ptr [rsp + 8008], rdx
                        cmp              eax, 104;                            je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n401_var_ref_α
n400_call_builtin_prolog_β:
                                                                              jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7968], rax
                        mov              qword ptr [rsp + 7976], rdx;         jmp   n402_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      mov              qword ptr [rsp + 7984], 2            # result
                        mov              dword ptr [rsp + 7988], 4
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 7992], rax;         jmp   n403_call_builtin_prolog_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7968]
                        mov              qword ptr [rsp + 7936], rax
                        mov              rax, qword ptr [rsp + 7976]
                        mov              qword ptr [rsp + 7944], rax
                        lea              rdi, [rsp + 7936]
                        mov              rsi, qword ptr [rip + .Lx672_2];     jmp   .Lx672_3
.Lx672_2:               .quad            .Lx672_2_s
.Lx672_2_s:             .string          "true"
.Lx672_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              eax, 104;                            je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n404_var_ref_α
n403_call_builtin_prolog_β:
                                                                              jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 7232], rax
                        mov              qword ptr [rsp + 7240], rdx;         jmp   n405_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              qword ptr [rsp + 7904], 2            # result
                        mov              dword ptr [rsp + 7908], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 7912], rax;         jmp   n406_lit_string_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              qword ptr [rsp + 7440], 2            # result
                        mov              dword ptr [rsp + 7444], 6
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 7448], rax;         jmp   n407_lit_string_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              qword ptr [rsp + 7328], 2            # result
                        mov              dword ptr [rsp + 7332], 4
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 7336], rax;         jmp   n408_lit_string_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n409_call_builtin_prolog_α
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7296], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7304], rax
                        mov              rax, qword ptr [rsp + 7328]
                        mov              qword ptr [rsp + 7280], rax
                        mov              rax, qword ptr [rsp + 7336]
                        mov              qword ptr [rsp + 7288], rax
                        lea              rdi, [rsp + 7280]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n410_var_ref_α
n409_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 7344], rax
                        mov              qword ptr [rsp + 7352], rdx;         jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7344]
                        mov              qword ptr [rsp + 7408], rax
                        mov              rax, qword ptr [rsp + 7352]
                        mov              qword ptr [rsp + 7416], rax
                        mov              rax, qword ptr [rsp + 7264]
                        mov              qword ptr [rsp + 7392], rax
                        mov              rax, qword ptr [rsp + 7272]
                        mov              qword ptr [rsp + 7400], rax
                        mov              rax, qword ptr [rsp + 7440]
                        mov              qword ptr [rsp + 7376], rax
                        mov              rax, qword ptr [rsp + 7448]
                        mov              qword ptr [rsp + 7384], rax
                        lea              rdi, [rsp + 7376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7360], rax
                        mov              qword ptr [rsp + 7368], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_lit_string_α
n411_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              qword ptr [rsp + 7808], 2            # result
                        mov              dword ptr [rsp + 7812], 1
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 7816], rax;         jmp   n413_lit_string_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              qword ptr [rsp + 7536], 2            # result
                        mov              dword ptr [rsp + 7540], 5
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 7544], rax;         jmp   n414_var_ref_α
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 7456], rax
                        mov              qword ptr [rsp + 7464], rdx;         jmp   n415_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7456]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7464]
                        mov              qword ptr [rsp + 7512], rax
                        mov              rax, qword ptr [rsp + 7536]
                        mov              qword ptr [rsp + 7488], rax
                        mov              rax, qword ptr [rsp + 7544]
                        mov              qword ptr [rsp + 7496], rax
                        lea              rdi, [rsp + 7488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7472], rax
                        mov              qword ptr [rsp + 7480], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_lit_string_α
n415_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              qword ptr [rsp + 7712], 2            # result
                        mov              dword ptr [rsp + 7716], 2
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 7720], rax;         jmp   n417_lit_string_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              qword ptr [rsp + 7632], 2            # result
                        mov              dword ptr [rsp + 7636], 4
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 7640], rax;         jmp   n418_lit_string_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      mov              qword ptr [rsp + 7552], 2            # result
                        mov              dword ptr [rsp + 7556], 1
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 7560], rax;         jmp   n419_call_builtin_prolog_α
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7552]
                        mov              qword ptr [rsp + 7600], rax
                        mov              rax, qword ptr [rsp + 7560]
                        mov              qword ptr [rsp + 7608], rax
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7592], rax
                        lea              rdi, [rsp + 7584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7568], rax
                        mov              qword ptr [rsp + 7576], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_call_builtin_prolog_α
n419_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7568]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7576]
                        mov              qword ptr [rsp + 7688], rax
                        mov              rax, qword ptr [rsp + 7712]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7720]
                        mov              qword ptr [rsp + 7672], rax
                        lea              rdi, [rsp + 7664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n421_call_builtin_prolog_α
n420_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7776], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7784], rax
                        mov              rax, qword ptr [rsp + 7472]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7480]
                        mov              qword ptr [rsp + 7768], rax
                        mov              rax, qword ptr [rsp + 7808]
                        mov              qword ptr [rsp + 7744], rax
                        mov              rax, qword ptr [rsp + 7816]
                        mov              qword ptr [rsp + 7752], rax
                        lea              rdi, [rsp + 7744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7728], rax
                        mov              qword ptr [rsp + 7736], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n422_call_builtin_prolog_α
n421_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7872], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7880], rax
                        mov              rax, qword ptr [rsp + 7360]
                        mov              qword ptr [rsp + 7856], rax
                        mov              rax, qword ptr [rsp + 7368]
                        mov              qword ptr [rsp + 7864], rax
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7848], rax
                        lea              rdi, [rsp + 7840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              eax, 104;                            je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n423_call_builtin_prolog_α
n422_call_builtin_prolog_β:
                                                                              jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7824]
                        mov              qword ptr [rsp + 7216], rax
                        mov              rax, qword ptr [rsp + 7832]
                        mov              qword ptr [rsp + 7224], rax
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7208], rax
                        lea              rdi, [rsp + 7200]
                        lea              r8, [rsp + 7200]
.Lx695_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx695_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx695_41
                        cmp              esi, 1;                              jne   .Lx695_55
                        mov              r8, rax;                             jmp   .Lx695_40
.Lx695_55:              cmp              esi, 2;                              jne   .Lx695_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx695_41
                        mov              r8, rax;                             jmp   .Lx695_40
.Lx695_56:              cmp              eax, 72;                             jne   .Lx695_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx695_41
                        cmp              rax, r8;                             je    .Lx695_41
                        mov              r8, rax;                             jmp   .Lx695_40
.Lx695_41:              lea              r9, [rsp + 7216]
.Lx695_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx695_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx695_43
                        cmp              esi, 1;                              jne   .Lx695_57
                        mov              r9, rax;                             jmp   .Lx695_42
.Lx695_57:              cmp              esi, 2;                              jne   .Lx695_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx695_43
                        mov              r9, rax;                             jmp   .Lx695_42
.Lx695_58:              cmp              eax, 72;                             jne   .Lx695_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx695_43
                        cmp              rax, r9;                             je    .Lx695_43
                        mov              r9, rax;                             jmp   .Lx695_42
.Lx695_43:              cmp              r8, r9;                              je    .Lx695_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx695_44
                        cmp              eax, 104;                            je    .Lx695_44
                        cmp              eax, 72;                             jne   .Lx695_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx695_44
                                                                              jmp   .Lx695_45
.Lx695_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx695_53
                        cmp              eax, 104;                            je    .Lx695_53
                        cmp              eax, 72;                             jne   .Lx695_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx695_53
                                                                              jmp   .Lx695_46
.Lx695_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx695_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx695_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx695_51
.Lx695_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx695_47
                        cmp              eax, 104;                            je    .Lx695_47
                        cmp              eax, 72;                             jne   .Lx695_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx695_47
                                                                              jmp   .Lx695_48
.Lx695_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx695_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx695_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx695_51
.Lx695_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx695_49
                        cmp              edx, 80;                             je    .Lx695_53
                                                                              jmp   .Lx695_52
.Lx695_49:              cmp              edx, 80;                             je    .Lx695_52
                        cmp              ecx, 5;                              je    .Lx695_53
                        cmp              edx, 5;                              je    .Lx695_53
                        cmp              ecx, 3;                              jne   .Lx695_50
                        cmp              edx, 3;                              jne   .Lx695_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx695_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx695_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx695_51
                                                                              jmp   .Lx695_52
.Lx695_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx695_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx695_53
.Lx695_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx695_54
.Lx695_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx695_54
.Lx695_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx695_54:              mov              qword ptr [rsp + 7184], rax
                        mov              qword ptr [rsp + 7192], rdx
                        cmp              eax, 104;                            je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n424_suspend_α
n423_call_builtin_prolog_β:
                                                                              jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx697_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx697_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n424_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n424_suspend_β:                                                               jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 7152], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 7160], rax
                        lea              rdi, [rsp + 7152]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_var_ref_α
n425_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx;         jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              qword ptr [rsp + 7120], 2            # result
                        mov              dword ptr [rsp + 7124], 7
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 7128], rax;         jmp   n428_call_builtin_prolog_α
.Lx701_0:               .quad            .Lx701_0_s
.Lx701_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7104]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7112]
                        mov              qword ptr [rsp + 7080], rax
                        lea              rdi, [rsp + 7072]
                        mov              rsi, qword ptr [rip + .Lx702_2];     jmp   .Lx702_3
.Lx702_2:               .quad            .Lx702_2_s
.Lx702_2_s:             .string          "assert2"
.Lx702_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              eax, 104;                            je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_var_ref_α
n428_call_builtin_prolog_β:
                                                                              jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              qword ptr [rsp + 7040], 2            # result
                        mov              dword ptr [rsp + 7044], 12
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 7048], rax;         jmp   n431_call_builtin_prolog_α
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7024]
                        mov              qword ptr [rsp + 6992], rax
                        mov              rax, qword ptr [rsp + 7032]
                        mov              qword ptr [rsp + 7000], rax
                        lea              rdi, [rsp + 6992]
                        mov              rsi, qword ptr [rip + .Lx706_2];     jmp   .Lx706_3
.Lx706_2:               .quad            .Lx706_2_s
.Lx706_2_s:             .string          "double_erase"
.Lx706_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6976], rax
                        mov              qword ptr [rsp + 6984], rdx
                        cmp              eax, 104;                            je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                                                                              jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              qword ptr [rsp + 6960], 2            # result
                        mov              dword ptr [rsp + 6964], 4
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rsp + 6968], rax;         jmp   n434_call_builtin_prolog_α
.Lx709_0:               .quad            .Lx709_0_s
.Lx709_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              rax, qword ptr [rsp + 6952]
                        mov              qword ptr [rsp + 6920], rax
                        lea              rdi, [rsp + 6912]
                        mov              rsi, qword ptr [rip + .Lx710_2];     jmp   .Lx710_3
.Lx710_2:               .quad            .Lx710_2_s
.Lx710_2_s:             .string          "true"
.Lx710_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6896], rax
                        mov              qword ptr [rsp + 6904], rdx
                        cmp              eax, 104;                            je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_var_ref_α
n434_call_builtin_prolog_β:
                                                                              jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 6208], rax
                        mov              qword ptr [rsp + 6216], rdx;         jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              qword ptr [rsp + 6880], 2            # result
                        mov              dword ptr [rsp + 6884], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rsp + 6888], rax;         jmp   n437_lit_string_α
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              qword ptr [rsp + 6416], 2            # result
                        mov              dword ptr [rsp + 6420], 6
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 6424], rax;         jmp   n438_lit_string_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      mov              qword ptr [rsp + 6304], 2            # result
                        mov              dword ptr [rsp + 6308], 4
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rsp + 6312], rax;         jmp   n439_lit_string_α
.Lx715_0:               .quad            .Lx715_0_s
.Lx715_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:      mov              qword ptr [rsp + 6224], 2            # result
                        mov              dword ptr [rsp + 6228], 1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n440_call_builtin_prolog_α
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6224]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6232]
                        mov              qword ptr [rsp + 6280], rax
                        mov              rax, qword ptr [rsp + 6304]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 6264], rax
                        lea              rdi, [rsp + 6256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6240], rax
                        mov              qword ptr [rsp + 6248], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_var_ref_α
n440_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n442_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6384], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6392], rax
                        mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6368], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6376], rax
                        mov              rax, qword ptr [rsp + 6416]
                        mov              qword ptr [rsp + 6352], rax
                        mov              rax, qword ptr [rsp + 6424]
                        mov              qword ptr [rsp + 6360], rax
                        lea              rdi, [rsp + 6352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n443_lit_string_α
n442_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      mov              qword ptr [rsp + 6784], 2            # result
                        mov              dword ptr [rsp + 6788], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 6792], rax;         jmp   n444_lit_string_α
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      mov              qword ptr [rsp + 6512], 2            # result
                        mov              dword ptr [rsp + 6516], 5
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rsp + 6520], rax;         jmp   n445_var_ref_α
.Lx722_0:               .quad            .Lx722_0_s
.Lx722_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx;         jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6432]
                        mov              qword ptr [rsp + 6480], rax
                        mov              rax, qword ptr [rsp + 6440]
                        mov              qword ptr [rsp + 6488], rax
                        mov              rax, qword ptr [rsp + 6512]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6520]
                        mov              qword ptr [rsp + 6472], rax
                        lea              rdi, [rsp + 6464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6448], rax
                        mov              qword ptr [rsp + 6456], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_lit_string_α
n446_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      mov              qword ptr [rsp + 6688], 2            # result
                        mov              dword ptr [rsp + 6692], 2
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 6696], rax;         jmp   n448_lit_string_α
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              qword ptr [rsp + 6608], 2            # result
                        mov              dword ptr [rsp + 6612], 5
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n449_var_ref_α
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n450_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6528]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6536]
                        mov              qword ptr [rsp + 6584], rax
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6568], rax
                        lea              rdi, [rsp + 6560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_call_builtin_prolog_α
n450_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6544]
                        mov              qword ptr [rsp + 6656], rax
                        mov              rax, qword ptr [rsp + 6552]
                        mov              qword ptr [rsp + 6664], rax
                        mov              rax, qword ptr [rsp + 6688]
                        mov              qword ptr [rsp + 6640], rax
                        mov              rax, qword ptr [rsp + 6696]
                        mov              qword ptr [rsp + 6648], rax
                        lea              rdi, [rsp + 6640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_call_builtin_prolog_α
n451_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6752], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6760], rax
                        mov              rax, qword ptr [rsp + 6448]
                        mov              qword ptr [rsp + 6736], rax
                        mov              rax, qword ptr [rsp + 6456]
                        mov              qword ptr [rsp + 6744], rax
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6720], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6728], rax
                        lea              rdi, [rsp + 6720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6704], rax
                        mov              qword ptr [rsp + 6712], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n453_call_builtin_prolog_α
n452_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6704]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 6712]
                        mov              qword ptr [rsp + 6856], rax
                        mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 6840], rax
                        mov              rax, qword ptr [rsp + 6880]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6888]
                        mov              qword ptr [rsp + 6824], rax
                        lea              rdi, [rsp + 6816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6800], rax
                        mov              qword ptr [rsp + 6808], rdx
                        cmp              eax, 104;                            je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_call_builtin_prolog_α
n453_call_builtin_prolog_β:
                                                                              jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6800]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6808]
                        mov              qword ptr [rsp + 6200], rax
                        mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 6176], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 6184], rax
                        lea              rdi, [rsp + 6176]
                        lea              r8, [rsp + 6176]
.Lx734_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              esi, 1;                              jne   .Lx734_55
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_55:              cmp              esi, 2;                              jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_56:              cmp              eax, 72;                             jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              rax, r8;                             je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_41:              lea              r9, [rsp + 6192]
.Lx734_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              esi, 1;                              jne   .Lx734_57
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_57:              cmp              esi, 2;                              jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_58:              cmp              eax, 72;                             jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              rax, r9;                             je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_43:              cmp              r8, r9;                              je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx734_44
                        cmp              eax, 104;                            je    .Lx734_44
                        cmp              eax, 72;                             jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx734_44
                                                                              jmp   .Lx734_45
.Lx734_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx734_53
                        cmp              eax, 104;                            je    .Lx734_53
                        cmp              eax, 72;                             jne   .Lx734_46
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
                        cmp              eax, 0;                              je    .Lx734_47
                        cmp              eax, 104;                            je    .Lx734_47
                        cmp              eax, 72;                             jne   .Lx734_48
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
                        cmp              ecx, 80;                             jne   .Lx734_49
                        cmp              edx, 80;                             je    .Lx734_53
                                                                              jmp   .Lx734_52
.Lx734_49:              cmp              edx, 80;                             je    .Lx734_52
                        cmp              ecx, 5;                              je    .Lx734_53
                        cmp              edx, 5;                              je    .Lx734_53
                        cmp              ecx, 3;                              jne   .Lx734_50
                        cmp              edx, 3;                              jne   .Lx734_50
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx734_54:              mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        cmp              eax, 104;                            je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_suspend_α
n454_call_builtin_prolog_β:
                                                                              jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx736_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx736_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n455_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n455_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n455_suspend_β:                                                               jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 6136], rax
                        lea              rdi, [rsp + 6128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      mov              qword ptr [rsp + 6096], 2            # result
                        mov              dword ptr [rsp + 6100], 7
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n459_call_builtin_prolog_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6056], rax
                        lea              rdi, [rsp + 6048]
                        mov              rsi, qword ptr [rip + .Lx741_2];     jmp   .Lx741_3
.Lx741_2:               .quad            .Lx741_2_s
.Lx741_2_s:             .string          "assert2"
.Lx741_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6032], rax
                        mov              qword ptr [rsp + 6040], rdx
                        cmp              eax, 104;                            je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_var_ref_α
n459_call_builtin_prolog_β:
                                                                              jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx;         jmp   n461_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      mov              qword ptr [rsp + 6016], 2            # result
                        mov              dword ptr [rsp + 6020], 13
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 6024], rax;         jmp   n462_call_builtin_prolog_α
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          "retract_erase"
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5976], rax
                        lea              rdi, [rsp + 5968]
                        mov              rsi, qword ptr [rip + .Lx745_2];     jmp   .Lx745_3
.Lx745_2:               .quad            .Lx745_2_s
.Lx745_2_s:             .string          "retract_erase"
.Lx745_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx
                        cmp              eax, 104;                            je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_var_ref_α
n462_call_builtin_prolog_β:
                                                                              jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx;         jmp   n464_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:      mov              qword ptr [rsp + 5936], 2            # result
                        mov              dword ptr [rsp + 5940], 4
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rsp + 5944], rax;         jmp   n465_call_builtin_prolog_α
.Lx748_0:               .quad            .Lx748_0_s
.Lx748_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5896], rax
                        lea              rdi, [rsp + 5888]
                        mov              rsi, qword ptr [rip + .Lx749_2];     jmp   .Lx749_3
.Lx749_2:               .quad            .Lx749_2_s
.Lx749_2_s:             .string          "true"
.Lx749_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx
                        cmp              eax, 104;                            je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_var_ref_α
n465_call_builtin_prolog_β:
                                                                              jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx;         jmp   n467_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              qword ptr [rsp + 5856], 2            # result
                        mov              dword ptr [rsp + 5860], 1
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rsp + 5864], rax;         jmp   n468_lit_string_α
.Lx752_0:               .quad            .Lx752_0_s
.Lx752_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              qword ptr [rsp + 5312], 2            # result
                        mov              dword ptr [rsp + 5316], 6
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n469_lit_string_α
.Lx753_0:               .quad            .Lx753_0_s
.Lx753_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              qword ptr [rsp + 5200], 2            # result
                        mov              dword ptr [rsp + 5204], 4
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n470_lit_string_α
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:      mov              qword ptr [rsp + 5120], 2            # result
                        mov              dword ptr [rsp + 5124], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n471_call_builtin_prolog_α
.Lx755_0:               .quad            .Lx755_0_s
.Lx755_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5176], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5160], rax
                        lea              rdi, [rsp + 5152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_var_ref_α
n471_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx;         jmp   n473_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5288], rax
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5272], rax
                        mov              rax, qword ptr [rsp + 5312]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5256], rax
                        lea              rdi, [rsp + 5248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n474_lit_string_α
n473_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              qword ptr [rsp + 5760], 2            # result
                        mov              dword ptr [rsp + 5764], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rsp + 5768], rax;         jmp   n475_lit_string_α
.Lx760_0:               .quad            .Lx760_0_s
.Lx760_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      mov              qword ptr [rsp + 5488], 2            # result
                        mov              dword ptr [rsp + 5492], 10
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n476_lit_string_α
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:      mov              qword ptr [rsp + 5408], 2            # result
                        mov              dword ptr [rsp + 5412], 4
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n477_var_ref_α
.Lx762_0:               .quad            .Lx762_0_s
.Lx762_0_s:             .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8848]
                        mov              qword ptr [rsp + 5328], rax
                        mov              qword ptr [rsp + 5336], rdx;         jmp   n478_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5384], rax
                        mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 5360], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 5368], rax
                        lea              rdi, [rsp + 5360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_call_builtin_prolog_α
n478_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5464], rax
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5448], rax
                        lea              rdi, [rsp + 5440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_lit_string_α
n479_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              qword ptr [rsp + 5664], 2            # result
                        mov              dword ptr [rsp + 5668], 2
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rsp + 5672], rax;         jmp   n481_lit_string_α
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              qword ptr [rsp + 5584], 2            # result
                        mov              dword ptr [rsp + 5588], 5
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n482_var_ref_α
.Lx768_0:               .quad            .Lx768_0_s
.Lx768_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx;         jmp   n483_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5560], rax
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5544], rax
                        lea              rdi, [rsp + 5536]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n484_call_builtin_prolog_α
n483_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5624], rax
                        lea              rdi, [rsp + 5616]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_call_builtin_prolog_α
n484_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5736], rax
                        mov              rax, qword ptr [rsp + 5424]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5432]
                        mov              qword ptr [rsp + 5720], rax
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 5696], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 5704], rax
                        lea              rdi, [rsp + 5696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n486_call_builtin_prolog_α
n485_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5832], rax
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5816], rax
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5800], rax
                        lea              rdi, [rsp + 5792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx
                        cmp              eax, 104;                            je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n487_call_builtin_prolog_α
n486_call_builtin_prolog_β:
                                                                              jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5096], rax
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5080], rax
                        lea              rdi, [rsp + 5072]
                        lea              r8, [rsp + 5072]
.Lx775_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx775_41
                        cmp              esi, 1;                              jne   .Lx775_55
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_55:              cmp              esi, 2;                              jne   .Lx775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx775_41
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_56:              cmp              eax, 72;                             jne   .Lx775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx775_41
                        cmp              rax, r8;                             je    .Lx775_41
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_41:              lea              r9, [rsp + 5088]
.Lx775_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx775_43
                        cmp              esi, 1;                              jne   .Lx775_57
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_57:              cmp              esi, 2;                              jne   .Lx775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx775_43
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_58:              cmp              eax, 72;                             jne   .Lx775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx775_43
                        cmp              rax, r9;                             je    .Lx775_43
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_43:              cmp              r8, r9;                              je    .Lx775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx775_44
                        cmp              eax, 104;                            je    .Lx775_44
                        cmp              eax, 72;                             jne   .Lx775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx775_44
                                                                              jmp   .Lx775_45
.Lx775_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx775_53
                        cmp              eax, 104;                            je    .Lx775_53
                        cmp              eax, 72;                             jne   .Lx775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx775_53
                                                                              jmp   .Lx775_46
.Lx775_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx775_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx775_51
.Lx775_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx775_47
                        cmp              eax, 104;                            je    .Lx775_47
                        cmp              eax, 72;                             jne   .Lx775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx775_47
                                                                              jmp   .Lx775_48
.Lx775_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx775_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx775_51
.Lx775_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx775_49
                        cmp              edx, 80;                             je    .Lx775_53
                                                                              jmp   .Lx775_52
.Lx775_49:              cmp              edx, 80;                             je    .Lx775_52
                        cmp              ecx, 5;                              je    .Lx775_53
                        cmp              edx, 5;                              je    .Lx775_53
                        cmp              ecx, 3;                              jne   .Lx775_50
                        cmp              edx, 3;                              jne   .Lx775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx775_51
                                                                              jmp   .Lx775_52
.Lx775_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx775_53
.Lx775_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx775_54
.Lx775_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx775_54
.Lx775_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx775_54:              mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx
                        cmp              eax, 104;                            je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_suspend_α
n487_call_builtin_prolog_β:
                                                                              jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n488_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx777_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx777_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n488_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n488_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n488_suspend_β:                                                               jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 5032], rax
                        lea              rdi, [rsp + 5024]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n490_var_ref_α
n489_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n491_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      mov              qword ptr [rsp + 4992], 2            # result
                        mov              dword ptr [rsp + 4996], 8
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n492_call_builtin_prolog_α
.Lx781_0:               .quad            .Lx781_0_s
.Lx781_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax
                        lea              rdi, [rsp + 4944]
                        mov              rsi, qword ptr [rip + .Lx782_2];     jmp   .Lx782_3
.Lx782_2:               .quad            .Lx782_2_s
.Lx782_2_s:             .string          "recorded"
.Lx782_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              eax, 104;                            je    n526_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_var_ref_α
n492_call_builtin_prolog_β:
                                                                              jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx;         jmp   n494_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 5
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n495_call_builtin_prolog_α
.Lx785_0:               .quad            .Lx785_0_s
.Lx785_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n495_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4872], rax
                        lea              rdi, [rsp + 4864]
                        mov              rsi, qword ptr [rip + .Lx786_2];     jmp   .Lx786_3
.Lx786_2:               .quad            .Lx786_2_s
.Lx786_2_s:             .string          "erase"
.Lx786_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx
                        cmp              eax, 104;                            je    n526_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_var_ref_α
n495_call_builtin_prolog_β:
                                                                              jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              qword ptr [rsp + 4832], 2            # result
                        mov              dword ptr [rsp + 4836], 4
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n498_call_builtin_prolog_α
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4792], rax
                        lea              rdi, [rsp + 4784]
                        mov              rsi, qword ptr [rip + .Lx790_2];     jmp   .Lx790_3
.Lx790_2:               .quad            .Lx790_2_s
.Lx790_2_s:             .string          "true"
.Lx790_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx
                        cmp              eax, 104;                            je    n526_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_var_ref_α
n498_call_builtin_prolog_β:
                                                                              jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n500_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:      mov              qword ptr [rsp + 4752], 2            # result
                        mov              dword ptr [rsp + 4756], 1
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n501_lit_string_α
.Lx793_0:               .quad            .Lx793_0_s
.Lx793_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 7
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n502_lit_string_α
.Lx794_0:               .quad            .Lx794_0_s
.Lx794_0_s:             .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 4
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n503_lit_string_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      mov              qword ptr [rsp + 3904], 2            # result
                        mov              dword ptr [rsp + 3908], 1
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n504_var_ref_α
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n505_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3992], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3976], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3960], rax
                        lea              rdi, [rsp + 3952]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_lit_string_α
n505_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 1
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n507_lit_string_α
.Lx800_0:               .quad            .Lx800_0_s
.Lx800_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      mov              qword ptr [rsp + 4160], 2            # result
                        mov              dword ptr [rsp + 4164], 8
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n508_lit_string_α
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      mov              qword ptr [rsp + 4048], 2            # result
                        mov              dword ptr [rsp + 4052], 4
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n509_lit_string_α
.Lx802_0:               .quad            .Lx802_0_s
.Lx802_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 1
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n510_call_builtin_prolog_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4136], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rdi, [rsp + 4096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n511_lit_string_α
n510_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      mov              qword ptr [rsp + 4560], 2            # result
                        mov              dword ptr [rsp + 4564], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n512_lit_string_α
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              qword ptr [rsp + 4256], 2            # result
                        mov              dword ptr [rsp + 4260], 5
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n513_var_ref_α
.Lx806_0:               .quad            .Lx806_0_s
.Lx806_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx;         jmp   n514_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4232], rax
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4216], rax
                        lea              rdi, [rsp + 4208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_lit_string_α
n514_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 2
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n516_lit_string_α
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      mov              qword ptr [rsp + 4384], 2            # result
                        mov              dword ptr [rsp + 4388], 8
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n517_lit_string_α
.Lx811_0:               .quad            .Lx811_0_s
.Lx811_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 4
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n518_lit_string_α
.Lx812_0:               .quad            .Lx812_0_s
.Lx812_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n519_call_builtin_prolog_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4360], rax
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4328], rax
                        lea              rdi, [rsp + 4320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n520_call_builtin_prolog_α
n519_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4424], rax
                        lea              rdi, [rsp + 4416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n521_call_builtin_prolog_α
n520_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4536], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4520], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4504], rax
                        lea              rdi, [rsp + 4496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_call_builtin_prolog_α
n521_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n522_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4632], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4616], rax
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n523_call_builtin_prolog_α
n522_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4728], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 4712], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4688], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4696], rax
                        lea              rdi, [rsp + 4688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx
                        cmp              eax, 104;                            je    n526_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n524_call_builtin_prolog_α
n523_call_builtin_prolog_β:
                                                                              jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3848], rax
                        lea              rdi, [rsp + 3840]
                        lea              r8, [rsp + 3840]
.Lx819_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx819_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx819_41
                        cmp              esi, 1;                              jne   .Lx819_55
                        mov              r8, rax;                             jmp   .Lx819_40
.Lx819_55:              cmp              esi, 2;                              jne   .Lx819_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx819_41
                        mov              r8, rax;                             jmp   .Lx819_40
.Lx819_56:              cmp              eax, 72;                             jne   .Lx819_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx819_41
                        cmp              rax, r8;                             je    .Lx819_41
                        mov              r8, rax;                             jmp   .Lx819_40
.Lx819_41:              lea              r9, [rsp + 3856]
.Lx819_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx819_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx819_43
                        cmp              esi, 1;                              jne   .Lx819_57
                        mov              r9, rax;                             jmp   .Lx819_42
.Lx819_57:              cmp              esi, 2;                              jne   .Lx819_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx819_43
                        mov              r9, rax;                             jmp   .Lx819_42
.Lx819_58:              cmp              eax, 72;                             jne   .Lx819_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx819_43
                        cmp              rax, r9;                             je    .Lx819_43
                        mov              r9, rax;                             jmp   .Lx819_42
.Lx819_43:              cmp              r8, r9;                              je    .Lx819_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx819_44
                        cmp              eax, 104;                            je    .Lx819_44
                        cmp              eax, 72;                             jne   .Lx819_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx819_44
                                                                              jmp   .Lx819_45
.Lx819_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx819_53
                        cmp              eax, 104;                            je    .Lx819_53
                        cmp              eax, 72;                             jne   .Lx819_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx819_53
                                                                              jmp   .Lx819_46
.Lx819_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx819_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx819_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx819_51
.Lx819_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx819_47
                        cmp              eax, 104;                            je    .Lx819_47
                        cmp              eax, 72;                             jne   .Lx819_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx819_47
                                                                              jmp   .Lx819_48
.Lx819_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx819_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx819_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx819_51
.Lx819_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx819_49
                        cmp              edx, 80;                             je    .Lx819_53
                                                                              jmp   .Lx819_52
.Lx819_49:              cmp              edx, 80;                             je    .Lx819_52
                        cmp              ecx, 5;                              je    .Lx819_53
                        cmp              edx, 5;                              je    .Lx819_53
                        cmp              ecx, 3;                              jne   .Lx819_50
                        cmp              edx, 3;                              jne   .Lx819_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx819_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx819_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx819_51
                                                                              jmp   .Lx819_52
.Lx819_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx819_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx819_53
.Lx819_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx819_54
.Lx819_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx819_54
.Lx819_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx819_54:              mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              eax, 104;                            je    n526_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n525_suspend_α
n524_call_builtin_prolog_β:
                                                                              jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n525_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx821_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx821_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n525_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n525_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n525_suspend_β:                                                               jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3800], rax
                        lea              rdi, [rsp + 3792]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_var_ref_α
n526_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 8
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n529_call_builtin_prolog_α
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        mov              rsi, qword ptr [rip + .Lx826_2];     jmp   .Lx826_3
.Lx826_2:               .quad            .Lx826_2_s
.Lx826_2_s:             .string          "recorded"
.Lx826_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n530_var_ref_α
n529_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n531_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      mov              qword ptr [rsp + 3680], 2            # result
                        mov              dword ptr [rsp + 3684], 12
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n532_call_builtin_prolog_α
.Lx829_0:               .quad            .Lx829_0_s
.Lx829_0_s:             .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              rsi, qword ptr [rip + .Lx830_2];     jmp   .Lx830_3
.Lx830_2:               .quad            .Lx830_2_s
.Lx830_2_s:             .string          "double_erase"
.Lx830_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n533_var_ref_α
n532_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 4
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n535_call_builtin_prolog_α
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              rsi, qword ptr [rip + .Lx834_2];     jmp   .Lx834_3
.Lx834_2:               .quad            .Lx834_2_s
.Lx834_2_s:             .string          "true"
.Lx834_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n536_var_ref_α
n535_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:      mov              qword ptr [rsp + 3520], 2            # result
                        mov              dword ptr [rsp + 3524], 1
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n538_lit_string_α
.Lx837_0:               .quad            .Lx837_0_s
.Lx837_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:      mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], 7
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n539_lit_string_α
.Lx838_0:               .quad            .Lx838_0_s
.Lx838_0_s:             .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:      mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 4
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n540_lit_string_α
.Lx839_0:               .quad            .Lx839_0_s
.Lx839_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n541_var_ref_α
.Lx840_0:               .quad            .Lx840_0_s
.Lx840_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n542_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2760], rax
                        lea              rdi, [rsp + 2752]
                        mov              esi, 4
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
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n543_lit_string_α
n542_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:      mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 1
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n544_lit_string_α
.Lx844_0:               .quad            .Lx844_0_s
.Lx844_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n544_lit_string_α:      mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 8
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n545_lit_string_α
.Lx845_0:               .quad            .Lx845_0_s
.Lx845_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 4
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n546_lit_string_α
.Lx846_0:               .quad            .Lx846_0_s
.Lx846_0_s:             .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 1
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n547_call_builtin_prolog_α
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n547_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2920], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2904], rax
                        lea              rdi, [rsp + 2896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n548_lit_string_α
n547_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:      mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 1
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n549_lit_string_α
.Lx849_0:               .quad            .Lx849_0_s
.Lx849_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:      mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 5
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n550_var_ref_α
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n551_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_lit_string_α
n551_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      mov              qword ptr [rsp + 3232], 2            # result
                        mov              dword ptr [rsp + 3236], 2
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n553_lit_string_α
.Lx854_0:               .quad            .Lx854_0_s
.Lx854_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 5
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n554_var_ref_α
.Lx855_0:               .quad            .Lx855_0_s
.Lx855_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n555_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3128], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3112], rax
                        lea              rdi, [rsp + 3104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n556_call_builtin_prolog_α
n555_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3208], rax
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3192], rax
                        lea              rdi, [rsp + 3184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n557_call_builtin_prolog_α
n556_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3304], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3272], rax
                        lea              rdi, [rsp + 3264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n558_call_builtin_prolog_α
n557_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3368], rax
                        lea              rdi, [rsp + 3360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n559_call_builtin_prolog_α
n558_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3464], rax
                        lea              rdi, [rsp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n560_call_builtin_prolog_α
n559_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        lea              r8, [rsp + 2640]
.Lx863_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx863_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx863_41
                        cmp              esi, 1;                              jne   .Lx863_55
                        mov              r8, rax;                             jmp   .Lx863_40
.Lx863_55:              cmp              esi, 2;                              jne   .Lx863_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx863_41
                        mov              r8, rax;                             jmp   .Lx863_40
.Lx863_56:              cmp              eax, 72;                             jne   .Lx863_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx863_41
                        cmp              rax, r8;                             je    .Lx863_41
                        mov              r8, rax;                             jmp   .Lx863_40
.Lx863_41:              lea              r9, [rsp + 2656]
.Lx863_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx863_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx863_43
                        cmp              esi, 1;                              jne   .Lx863_57
                        mov              r9, rax;                             jmp   .Lx863_42
.Lx863_57:              cmp              esi, 2;                              jne   .Lx863_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx863_43
                        mov              r9, rax;                             jmp   .Lx863_42
.Lx863_58:              cmp              eax, 72;                             jne   .Lx863_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx863_43
                        cmp              rax, r9;                             je    .Lx863_43
                        mov              r9, rax;                             jmp   .Lx863_42
.Lx863_43:              cmp              r8, r9;                              je    .Lx863_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx863_44
                        cmp              eax, 104;                            je    .Lx863_44
                        cmp              eax, 72;                             jne   .Lx863_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx863_44
                                                                              jmp   .Lx863_45
.Lx863_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx863_53
                        cmp              eax, 104;                            je    .Lx863_53
                        cmp              eax, 72;                             jne   .Lx863_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx863_53
                                                                              jmp   .Lx863_46
.Lx863_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx863_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx863_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx863_51
.Lx863_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx863_47
                        cmp              eax, 104;                            je    .Lx863_47
                        cmp              eax, 72;                             jne   .Lx863_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx863_47
                                                                              jmp   .Lx863_48
.Lx863_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx863_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx863_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx863_51
.Lx863_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx863_49
                        cmp              edx, 80;                             je    .Lx863_53
                                                                              jmp   .Lx863_52
.Lx863_49:              cmp              edx, 80;                             je    .Lx863_52
                        cmp              ecx, 5;                              je    .Lx863_53
                        cmp              edx, 5;                              je    .Lx863_53
                        cmp              ecx, 3;                              jne   .Lx863_50
                        cmp              edx, 3;                              jne   .Lx863_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx863_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx863_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx863_51
                                                                              jmp   .Lx863_52
.Lx863_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx863_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx863_53
.Lx863_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx863_54
.Lx863_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx863_54
.Lx863_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx863_54:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n561_suspend_α
n560_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n561_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx865_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx865_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n561_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n561_suspend_β:                                                               jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2600], rax
                        lea              rdi, [rsp + 2592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n563_var_ref_α
n562_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:      mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 8
                        mov              rax, qword ptr [rip + .Lx869_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n565_call_builtin_prolog_α
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n565_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        lea              rdi, [rsp + 2512]
                        mov              rsi, qword ptr [rip + .Lx870_2];     jmp   .Lx870_3
.Lx870_2:               .quad            .Lx870_2_s
.Lx870_2_s:             .string          "recorded"
.Lx870_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_var_ref_α
n565_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 11
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n568_call_builtin_prolog_α
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "recorded_vt"
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2440], rax
                        lea              rdi, [rsp + 2432]
                        mov              rsi, qword ptr [rip + .Lx874_2];     jmp   .Lx874_3
.Lx874_2:               .quad            .Lx874_2_s
.Lx874_2_s:             .string          "recorded_vt"
.Lx874_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n569_var_ref_α
n568_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n571_lit_string_α
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:      mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 4
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n572_lit_string_α
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:      mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 2
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n573_lit_string_α
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:      mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 1
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n574_var_ref_α
.Lx880_0:               .quad            .Lx880_0_s
.Lx880_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:      mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n576_var_ref_α
.Lx883_0:               .quad            .Lx883_0_s
.Lx883_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8848]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n577_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:      mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 2
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n578_call_builtin_prolog_α
.Lx886_0:               .quad            .Lx886_0_s
.Lx886_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n578_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_call_builtin_prolog_α
n578_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n580_lit_string_α
n579_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:      mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n581_lit_string_α
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 6
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n582_lit_string_α
.Lx890_0:               .quad            .Lx890_0_s
.Lx890_0_s:             .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 1
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n583_lit_string_α
.Lx891_0:               .quad            .Lx891_0_s
.Lx891_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 6
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n584_lit_string_α
.Lx892_0:               .quad            .Lx892_0_s
.Lx892_0_s:             .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_string_α:      mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 2
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n585_call_builtin_prolog_α
.Lx893_0:               .quad            .Lx893_0_s
.Lx893_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n585_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1960], rax
                        lea              rdi, [rsp + 1952]
                        mov              esi, 3
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
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_call_builtin_prolog_α
n585_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n586_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n587_call_builtin_prolog_α
n586_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n587_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        lea              rdi, [rsp + 2160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n588_call_builtin_prolog_α
n587_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_lit_string_α
n588_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:      mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 1
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n590_lit_string_α
.Lx898_0:               .quad            .Lx898_0_s
.Lx898_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 6
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n591_lit_string_α
.Lx899_0:               .quad            .Lx899_0_s
.Lx899_0_s:             .string          "nondet"
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 2
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n592_call_builtin_prolog_α
.Lx900_0:               .quad            .Lx900_0_s
.Lx900_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n592_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n593_call_builtin_prolog_α
n592_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_call_builtin_prolog_α
n593_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        lea              r8, [rsp + 1488]
.Lx903_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx903_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx903_41
                        cmp              esi, 1;                              jne   .Lx903_55
                        mov              r8, rax;                             jmp   .Lx903_40
.Lx903_55:              cmp              esi, 2;                              jne   .Lx903_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx903_41
                        mov              r8, rax;                             jmp   .Lx903_40
.Lx903_56:              cmp              eax, 72;                             jne   .Lx903_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx903_41
                        cmp              rax, r8;                             je    .Lx903_41
                        mov              r8, rax;                             jmp   .Lx903_40
.Lx903_41:              lea              r9, [rsp + 1504]
.Lx903_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx903_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx903_43
                        cmp              esi, 1;                              jne   .Lx903_57
                        mov              r9, rax;                             jmp   .Lx903_42
.Lx903_57:              cmp              esi, 2;                              jne   .Lx903_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx903_43
                        mov              r9, rax;                             jmp   .Lx903_42
.Lx903_58:              cmp              eax, 72;                             jne   .Lx903_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx903_43
                        cmp              rax, r9;                             je    .Lx903_43
                        mov              r9, rax;                             jmp   .Lx903_42
.Lx903_43:              cmp              r8, r9;                              je    .Lx903_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx903_44
                        cmp              eax, 104;                            je    .Lx903_44
                        cmp              eax, 72;                             jne   .Lx903_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx903_44
                                                                              jmp   .Lx903_45
.Lx903_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx903_53
                        cmp              eax, 104;                            je    .Lx903_53
                        cmp              eax, 72;                             jne   .Lx903_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx903_53
                                                                              jmp   .Lx903_46
.Lx903_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx903_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx903_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx903_51
.Lx903_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx903_47
                        cmp              eax, 104;                            je    .Lx903_47
                        cmp              eax, 72;                             jne   .Lx903_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx903_47
                                                                              jmp   .Lx903_48
.Lx903_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx903_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx903_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx903_51
.Lx903_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx903_49
                        cmp              edx, 80;                             je    .Lx903_53
                                                                              jmp   .Lx903_52
.Lx903_49:              cmp              edx, 80;                             je    .Lx903_52
                        cmp              ecx, 5;                              je    .Lx903_53
                        cmp              edx, 5;                              je    .Lx903_53
                        cmp              ecx, 3;                              jne   .Lx903_50
                        cmp              edx, 3;                              jne   .Lx903_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx903_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx903_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx903_51
                                                                              jmp   .Lx903_52
.Lx903_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx903_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx903_53
.Lx903_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx903_54
.Lx903_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx903_54
.Lx903_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx903_54:              mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n595_var_ref_α
n594_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n596_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 1
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n597_lit_string_α
.Lx906_0:               .quad            .Lx906_0_s
.Lx906_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 7
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n598_lit_string_α
.Lx907_0:               .quad            .Lx907_0_s
.Lx907_0_s:             .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n599_lit_string_α
.Lx908_0:               .quad            .Lx908_0_s
.Lx908_0_s:             .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx909_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n600_var_ref_α
.Lx909_0:               .quad            .Lx909_0_s
.Lx909_0_s:             .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8816]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n601_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n601_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 4
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
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n602_lit_string_α
n601_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n603_lit_string_α
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 7
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n604_lit_string_α
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 6
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n605_lit_string_α
.Lx915_0:               .quad            .Lx915_0_s
.Lx915_0_s:             .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 2
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n606_var_ref_α
.Lx916_0:               .quad            .Lx916_0_s
.Lx916_0_s:             .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8832]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n607_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n608_lit_string_α
n607_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx920_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n609_lit_string_α
.Lx920_0:               .quad            .Lx920_0_s
.Lx920_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 8
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n610_var_ref_α
.Lx921_0:               .quad            .Lx921_0_s
.Lx921_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8848]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n611_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:      mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 2
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n612_call_builtin_prolog_α
.Lx924_0:               .quad            .Lx924_0_s
.Lx924_0_s:             .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_lit_string_α
n612_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:      mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n614_lit_string_α
.Lx926_0:               .quad            .Lx926_0_s
.Lx926_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 8
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n615_var_ref_α
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8864]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n616_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 2
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n617_call_builtin_prolog_α
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n617_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n618_lit_string_α
n617_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:      mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n619_lit_string_α
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 5
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n620_var_ref_α
.Lx933_0:               .quad            .Lx933_0_s
.Lx933_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8816]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n621_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n622_lit_string_α
n621_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 5
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n623_var_ref_α
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8832]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n624_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n624_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_call_builtin_prolog_α
n624_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n625_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_call_builtin_prolog_α
n625_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n627_call_builtin_prolog_α
n626_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n627_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_call_builtin_prolog_α
n627_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_call_builtin_prolog_α
n628_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n630_call_builtin_prolog_α
n629_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n630_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx946_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx946_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx946_41
                        cmp              esi, 1;                              jne   .Lx946_55
                        mov              r8, rax;                             jmp   .Lx946_40
.Lx946_55:              cmp              esi, 2;                              jne   .Lx946_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx946_41
                        mov              r8, rax;                             jmp   .Lx946_40
.Lx946_56:              cmp              eax, 72;                             jne   .Lx946_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx946_41
                        cmp              rax, r8;                             je    .Lx946_41
                        mov              r8, rax;                             jmp   .Lx946_40
.Lx946_41:              lea              r9, [rsp + 192]
.Lx946_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx946_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx946_43
                        cmp              esi, 1;                              jne   .Lx946_57
                        mov              r9, rax;                             jmp   .Lx946_42
.Lx946_57:              cmp              esi, 2;                              jne   .Lx946_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx946_43
                        mov              r9, rax;                             jmp   .Lx946_42
.Lx946_58:              cmp              eax, 72;                             jne   .Lx946_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx946_43
                        cmp              rax, r9;                             je    .Lx946_43
                        mov              r9, rax;                             jmp   .Lx946_42
.Lx946_43:              cmp              r8, r9;                              je    .Lx946_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx946_44
                        cmp              eax, 104;                            je    .Lx946_44
                        cmp              eax, 72;                             jne   .Lx946_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx946_44
                                                                              jmp   .Lx946_45
.Lx946_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx946_53
                        cmp              eax, 104;                            je    .Lx946_53
                        cmp              eax, 72;                             jne   .Lx946_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx946_53
                                                                              jmp   .Lx946_46
.Lx946_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx946_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx946_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx946_51
.Lx946_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx946_47
                        cmp              eax, 104;                            je    .Lx946_47
                        cmp              eax, 72;                             jne   .Lx946_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx946_47
                                                                              jmp   .Lx946_48
.Lx946_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx946_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx946_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx946_51
.Lx946_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx946_49
                        cmp              edx, 80;                             je    .Lx946_53
                                                                              jmp   .Lx946_52
.Lx946_49:              cmp              edx, 80;                             je    .Lx946_52
                        cmp              ecx, 5;                              je    .Lx946_53
                        cmp              edx, 5;                              je    .Lx946_53
                        cmp              ecx, 3;                              jne   .Lx946_50
                        cmp              edx, 3;                              jne   .Lx946_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx946_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx946_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx946_51
                                                                              jmp   .Lx946_52
.Lx946_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx946_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx946_53
.Lx946_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx946_54
.Lx946_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx946_54
.Lx946_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx946_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n632_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n631_suspend_α
n630_call_builtin_prolog_β:
                                                                              jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n631_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx948_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx948_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n631_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n631_suspend_β]
                        mov              qword ptr [rsp + 8800], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n631_suspend_β:                                                               jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_test$2F4_ω
n632_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n393_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx949_50
                        mov              qword ptr [rsp + 8800], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8800];         jmp   rax
.Lx949_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8904]
                        add              rsp, 8928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 8912]
                        add              rsp, 8928;                           jmp   rcx
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n953_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx955_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx955_101
.Lx955_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx955_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx955_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx955_101
.Lx955_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx955_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n951_lit_string_α
n950_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 8
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n952_call_proc_staged_α
.Lx956_0:               .quad            .Lx956_0_s
.Lx956_0_s:             .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n952_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx958_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx958_21
.Lx958_20:              mov              edi, 0
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
.Lx958_21:              mov              rdi, qword ptr [rip + .Lx958_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx958_1
                        mov              rdi, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx958_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx958_3]
                        push             rcx
                        lea              rcx, [rip + .Lx958_3]
                        lea              rdx, [rip + .Lx958_4];               jmp   rax
.Lx958_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx958_2
.Lx958_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx958_2
.Lx958_1:               call             rt_faildescr@PLT
.Lx958_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx958_29
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
.Lx958_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n954_call_builtin_prolog_α
                                                                              jmp   n953_suspend_α
n952_call_proc_staged_β:
                                                                              jmp   n954_call_builtin_prolog_α
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n953_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx960_61
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
.Lx960_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n953_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n953_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_6$2F0_γ
n953_suspend_β:                                                               jmp   n952_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n954_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_6$2F0_ω
n954_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_β:
                                                                              jmp   n953_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx961_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx961_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
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
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n962_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx967_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx967_101
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
.Lx967_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx967_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n963_lit_string_α
n962_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n963_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 7
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n964_call_proc_staged_α
.Lx968_0:               .quad            .Lx968_0_s
.Lx968_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n964_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx970_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx970_21
.Lx970_20:              mov              edi, 0
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
.Lx970_21:              mov              rdi, qword ptr [rip + .Lx970_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx970_1
                        mov              rdi, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx970_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx970_3]
                        push             rcx
                        lea              rcx, [rip + .Lx970_3]
                        lea              rdx, [rip + .Lx970_4];               jmp   rax
.Lx970_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx970_2
.Lx970_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx970_2
.Lx970_1:               call             rt_faildescr@PLT
.Lx970_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx970_29
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
.Lx970_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n966_call_builtin_prolog_α
                                                                              jmp   n965_suspend_α
n964_call_proc_staged_β:
                                                                              jmp   n966_call_builtin_prolog_α
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n965_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx972_61
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
.Lx972_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n965_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n965_suspend_β:                                                               jmp   n964_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n966_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_4$2F0_ω
n966_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n965_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx973_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx973_50:              mov              rdi, rax
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
                        lea              rax, [rip + n977_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n974_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx979_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx979_101
.Lx979_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx979_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx979_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx979_101
.Lx979_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx979_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n975_lit_string_α
n974_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n975_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 7
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n976_call_proc_staged_α
.Lx980_0:               .quad            .Lx980_0_s
.Lx980_0_s:             .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n976_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx982_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx982_21
.Lx982_20:              mov              edi, 0
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
.Lx982_21:              mov              rdi, qword ptr [rip + .Lx982_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx982_1
                        mov              rdi, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx982_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx982_3]
                        push             rcx
                        lea              rcx, [rip + .Lx982_3]
                        lea              rdx, [rip + .Lx982_4];               jmp   rax
.Lx982_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx982_2
.Lx982_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx982_2
.Lx982_1:               call             rt_faildescr@PLT
.Lx982_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx982_29
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
.Lx982_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n978_call_builtin_prolog_α
                                                                              jmp   n977_suspend_α
n976_call_proc_staged_β:
                                                                              jmp   n978_call_builtin_prolog_α
.Lx982_0:               .quad            .Lx982_0_s
.Lx982_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n977_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx984_61
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
.Lx984_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n977_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n977_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n977_suspend_β:                                                               jmp   n976_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n978_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_2$2F0_ω
n978_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n977_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx985_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx985_50:              mov              rdi, rax
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
                        lea              rax, [rip + n996_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n986_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx998_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx998_101
.Lx998_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx998_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx998_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx998_101
.Lx998_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx998_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n987_lit_string_α
n986_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n987_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 10
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n988_lit_string_α
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          "test_dbref"
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n989_lit_string_α
.Lx1000_0:              .quad            .Lx1000_0_s
.Lx1000_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n990_lit_string_α
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n990_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 10
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n991_lit_integer_α
.Lx1002_0:              .quad            .Lx1002_0_s
.Lx1002_0_s:            .string          "test_dbref"
#-----------------------------------------------------------------------------------------------------------------------
n991_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n992_call_builtin_prolog_α
.Lx1003_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n992_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n993_lit_string_α
n992_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n993_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n994_call_builtin_prolog_α
.Lx1005_0:              .quad            .Lx1005_0_s
.Lx1005_0_s:            .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n994_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n997_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n995_call_proc_staged_α
n994_call_builtin_prolog_β:
                                                                              jmp   n997_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1008_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1008_21
.Lx1008_20:             mov              edi, 0
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
.Lx1008_21:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1008_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx1008_23
.Lx1008_22:             mov              edi, 1
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
.Lx1008_23:             mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1008_1
                        mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1008_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1008_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1008_3]
                        lea              rdx, [rip + .Lx1008_4];              jmp   rax
.Lx1008_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1008_2
.Lx1008_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1008_2
.Lx1008_1:              call             rt_faildescr@PLT
.Lx1008_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1008_29
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
.Lx1008_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n997_call_builtin_prolog_α
                                                                              jmp   n996_suspend_α
n995_call_proc_staged_β:
                                                                              jmp   n997_call_builtin_prolog_α
.Lx1008_0:              .quad            .Lx1008_0_s
.Lx1008_0_s:            .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n996_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1010_61
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
.Lx1010_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n996_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n996_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n996_suspend_β:                                                               jmp   n995_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n997_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_0$2F0_ω
n997_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n996_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1011_50
                        mov              qword ptr [rsp + 400], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx1011_50:             mov              rdi, rax
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
                        lea              rax, [rip + n1015_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1012_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1017_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1017_101
.Lx1017_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1017_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1017_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1017_101
.Lx1017_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1017_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1013_lit_string_α
n1012_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1013_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 8
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1014_call_proc_staged_α
.Lx1018_0:              .quad            .Lx1018_0_s
.Lx1018_0_s:            .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1020_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1020_21
.Lx1020_20:             mov              edi, 0
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
.Lx1020_21:             mov              rdi, qword ptr [rip + .Lx1020_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1020_1
                        mov              rdi, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1020_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1020_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1020_3]
                        lea              rdx, [rip + .Lx1020_4];              jmp   rax
.Lx1020_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1020_2
.Lx1020_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1020_2
.Lx1020_1:              call             rt_faildescr@PLT
.Lx1020_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1020_29
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
.Lx1020_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n1016_call_builtin_prolog_α
                                                                              jmp   n1015_suspend_α
n1014_call_proc_staged_β:
                                                                              jmp   n1016_call_builtin_prolog_α
.Lx1020_0:              .quad            .Lx1020_0_s
.Lx1020_0_s:            .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1015_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1022_61
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
.Lx1022_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1015_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n1015_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_5$2F0_γ
n1015_suspend_β:                                                              jmp   n1014_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_5$2F0_ω
n1016_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_β:
                                                                              jmp   n1015_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1023_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx1023_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1030_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1024_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1032_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1032_101
.Lx1032_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1032_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1032_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1032_101
.Lx1032_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1032_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1025_lit_string_α
n1024_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1025_lit_string_α:     mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1026_lit_string_α
.Lx1033_0:              .quad            .Lx1033_0_s
.Lx1033_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1026_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1027_lit_integer_α
.Lx1034_0:              .quad            .Lx1034_0_s
.Lx1034_0_s:            .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n1027_lit_integer_α:    mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1028_call_builtin_prolog_α
.Lx1035_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1028_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 136]
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
                        cmp              eax, 104;                            je    n1031_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1029_call_proc_staged_α
n1028_call_builtin_prolog_β:
                                                                              jmp   n1031_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1038_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1038_21
.Lx1038_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1038_21:             mov              rdi, qword ptr [rip + .Lx1038_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1038_1
                        mov              rdi, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1038_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1038_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1038_3]
                        lea              rdx, [rip + .Lx1038_4];              jmp   rax
.Lx1038_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1038_2
.Lx1038_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1038_2
.Lx1038_1:              call             rt_faildescr@PLT
.Lx1038_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1038_29
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
.Lx1038_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n1031_call_builtin_prolog_α
                                                                              jmp   n1030_suspend_α
n1029_call_proc_staged_β:
                                                                              jmp   n1031_call_builtin_prolog_α
.Lx1038_0:              .quad            .Lx1038_0_s
.Lx1038_0_s:            .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n1030_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1040_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx1040_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1030_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n1030_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n1030_suspend_β:                                                              jmp   n1029_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1031_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_3$2F0_ω
n1031_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n1030_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1041_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx1041_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
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
                        lea              rax, [rip + n1047_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1049_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1049_101
.Lx1049_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1049_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1049_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1049_101
.Lx1049_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1049_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1043_lit_string_α
n1042_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1043_lit_string_α:     mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1044_lit_string_α
.Lx1050_0:              .quad            .Lx1050_0_s
.Lx1050_0_s:            .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1045_call_builtin_prolog_α
.Lx1051_0:              .quad            .Lx1051_0_s
.Lx1051_0_s:            .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1045_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n1048_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1046_call_proc_staged_α
n1045_call_builtin_prolog_β:
                                                                              jmp   n1048_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1054_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1054_21
.Lx1054_20:             mov              edi, 0
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
.Lx1054_21:             mov              rdi, qword ptr [rip + .Lx1054_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1054_1
                        mov              rdi, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1054_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1054_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1054_3]
                        lea              rdx, [rip + .Lx1054_4];              jmp   rax
.Lx1054_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1054_2
.Lx1054_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1054_2
.Lx1054_1:              call             rt_faildescr@PLT
.Lx1054_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1054_29
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
.Lx1054_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n1048_call_builtin_prolog_α
                                                                              jmp   n1047_suspend_α
n1046_call_proc_staged_β:
                                                                              jmp   n1048_call_builtin_prolog_α
.Lx1054_0:              .quad            .Lx1054_0_s
.Lx1054_0_s:            .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1047_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1056_61
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
.Lx1056_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1047_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n1047_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n1047_suspend_β:                                                              jmp   n1046_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1048_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pj_dir_1$2F0_ω
n1048_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n1047_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1057_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx1057_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__term$2F1:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 160
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
term$2F1_α_body:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:     mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 4
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1059_var_ref_α
.Lx1062_0:              .quad            .Lx1062_0_s
.Lx1062_0_s:            .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1060_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 80], 0
.Lx1065_60:             .section         .rodata
.Lbynamegenfn464:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn464]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        lea              rcx, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    term$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1061_suspend_α
n1060_call_builtin_gen_β:
                                                                              jmp   .Lx1065_60
#-----------------------------------------------------------------------------------------------------------------------
n1061_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1067_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx1067_61:             mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n1061_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   term$2F1_γ
n1061_suspend_β:                                                              jmp   n1060_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
term$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
term$2F1_β:
                                                                              jmp   n1060_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
term$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1067_50
                        mov              qword ptr [rsp + 128], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx1067_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
term$2F1_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
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
n1068_lit_string_α:     mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 8
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1069_call_proc_staged_α
.Lx1070_0:              .quad            .Lx1070_0_s
.Lx1070_0_s:            .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1072_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1072_21
.Lx1072_20:             mov              edi, 0
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
.Lx1072_21:             mov              rdi, qword ptr [rip + .Lx1072_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1072_1
                        mov              rdi, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1072_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both decline and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1072_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1072_3]
                        lea              rdx, [rip + .Lx1072_4];              jmp   rax
.Lx1072_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1072_2
.Lx1072_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1072_2
.Lx1072_1:              call             rt_faildescr@PLT
.Lx1072_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1072_29
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
.Lx1072_29:             mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n1069_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx1072_0:              .quad            .Lx1072_0_s
.Lx1072_0_s:            .string          "end_tests/1"
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
                        .long            4368
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test_dbref/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__test_dbref$2F0
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_test/4"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__pj_test$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            8880
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_6/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_5/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
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
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__pj_dir_3$2F0
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
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
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
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "term/1"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__term$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
