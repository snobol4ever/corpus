                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 8272
                        mov              qword ptr [rsp + 8248], rcx
                        mov              qword ptr [rsp + 8256], rdx
                        mov              qword ptr [rsp + 8264], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 8240
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
d$2F3_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_278_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lcall_prolog_α_278_101
.Lcall_prolog_α_278_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_278_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_278_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_278_101
.Lcall_prolog_α_278_100:
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
.Lcall_prolog_α_278_101:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   d$2F3_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n2_lit_integer_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n3_lit_string_α
.Llit_integer_α_281_0:  .quad            516
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_282_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n4_call_prolog_α
.Llit_string_α_282_0:   .quad            .Llit_string_α_282_0_s
.Llit_string_α_282_0_s: .string          "+"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_call_prolog_bx, @function
n4_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8064], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8072], rax
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8056], rax
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8032], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8040], rax
                        lea              rdi, [rsp + 8032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        cmp              al, 104;                             je    n31_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n31_var_ref_α
                        .size            n4_call_prolog_bx, .-n4_call_prolog_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n6_lit_string_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_286_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n7_var_ref_α
.Llit_string_α_286_0:   .quad            .Llit_string_α_286_0_s
.Llit_string_α_286_0_s: .string          "+"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n8_var_ref_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n9_call_prolog_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_call_prolog_bx, @function
n9_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_prolog_α:       mov              r11, 10
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7968], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7976], rax
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7960], rax
                        mov              rax, qword ptr [rsp + 8000]
                        mov              qword ptr [rsp + 7936], rax
                        mov              rax, qword ptr [rsp + 8008]
                        mov              qword ptr [rsp + 7944], rax
                        lea              rdi, [rsp + 7936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              al, 104;                             je    n30_call_prolog_α
                                                                              jmp   n10_call_prolog_α
n9_call_prolog_β:       mov              r11, 10;                             jmp   n30_call_prolog_α
                        .size            n9_call_prolog_bx, .-n9_call_prolog_bx
                        .type            n10_call_prolog_bx, @function
n10_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_prolog_α:      mov              r11, 11
                        mov              rax, qword ptr [rsp + 7920]
                        mov              qword ptr [rsp + 7856], rax
                        mov              rax, qword ptr [rsp + 7928]
                        mov              qword ptr [rsp + 7864], rax
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7848], rax
                        lea              rdi, [rsp + 7840]
                        lea              r8, [rsp + 7840]
.Lcall_prolog_α_292_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_292_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_56: cmp              al, 72;                              jne   .Lcall_prolog_α_292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_292_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_41: lea              r9, [rsp + 7856]
.Lcall_prolog_α_292_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_292_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_58: cmp              al, 72;                              jne   .Lcall_prolog_α_292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_43: cmp              r8, r9;                              je    .Lcall_prolog_α_292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_292_44
                                                                              jmp   .Lcall_prolog_α_292_45
.Lcall_prolog_α_292_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_53
                                                                              jmp   .Lcall_prolog_α_292_46
.Lcall_prolog_α_292_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_292_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_292_51
.Lcall_prolog_α_292_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_47
                                                                              jmp   .Lcall_prolog_α_292_48
.Lcall_prolog_α_292_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_292_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_292_51
.Lcall_prolog_α_292_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_292_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_292_53
                                                                              jmp   .Lcall_prolog_α_292_52
.Lcall_prolog_α_292_49: cmp              dl, 80;                              je    .Lcall_prolog_α_292_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_292_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_292_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_292_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_292_51
                                                                              jmp   .Lcall_prolog_α_292_52
.Lcall_prolog_α_292_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_292_53
.Lcall_prolog_α_292_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_292_54
.Lcall_prolog_α_292_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_292_54
.Lcall_prolog_α_292_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_292_54: mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n30_call_prolog_α
                                                                              jmp   n11_var_ref_α
n10_call_prolog_β:      mov              r11, 11;                             jmp   n30_call_prolog_α
                        .size            n10_call_prolog_bx, .-n10_call_prolog_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n12_var_ref_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n13_call_prolog_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_call_prolog_bx, @function
n13_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_prolog_α:      mov              r11, 14
                        mov              rax, qword ptr [rsp + 7808]
                        mov              qword ptr [rsp + 7776], rax
                        mov              rax, qword ptr [rsp + 7816]
                        mov              qword ptr [rsp + 7784], rax
                        mov              rax, qword ptr [rsp + 7792]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7800]
                        mov              qword ptr [rsp + 7768], rax
                        lea              rdi, [rsp + 7760]
                        lea              r8, [rsp + 7760]
.Lcall_prolog_α_297_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_297_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_297_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_40
.Lcall_prolog_α_297_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_297_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_40
.Lcall_prolog_α_297_56: cmp              al, 72;                              jne   .Lcall_prolog_α_297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_297_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_40
.Lcall_prolog_α_297_41: lea              r9, [rsp + 7776]
.Lcall_prolog_α_297_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_297_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_297_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_297_42
.Lcall_prolog_α_297_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_297_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_297_42
.Lcall_prolog_α_297_58: cmp              al, 72;                              jne   .Lcall_prolog_α_297_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_297_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_297_42
.Lcall_prolog_α_297_43: cmp              r8, r9;                              je    .Lcall_prolog_α_297_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_297_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_297_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_297_44
                                                                              jmp   .Lcall_prolog_α_297_45
.Lcall_prolog_α_297_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_297_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_297_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_297_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_297_53
                                                                              jmp   .Lcall_prolog_α_297_46
.Lcall_prolog_α_297_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_297_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_297_51
.Lcall_prolog_α_297_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_297_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_297_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_297_47
                                                                              jmp   .Lcall_prolog_α_297_48
.Lcall_prolog_α_297_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_297_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_297_51
.Lcall_prolog_α_297_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_297_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_297_53
                                                                              jmp   .Lcall_prolog_α_297_52
.Lcall_prolog_α_297_49: cmp              dl, 80;                              je    .Lcall_prolog_α_297_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_297_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_297_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_297_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_297_51
                                                                              jmp   .Lcall_prolog_α_297_52
.Lcall_prolog_α_297_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_297_53
.Lcall_prolog_α_297_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_297_54
.Lcall_prolog_α_297_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_297_54
.Lcall_prolog_α_297_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_297_54: mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              al, 104;                             je    n30_call_prolog_α
                                                                              jmp   n14_var_ref_α
n13_call_prolog_β:      mov              r11, 14;                             jmp   n30_call_prolog_α
                        .size            n13_call_prolog_bx, .-n13_call_prolog_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n16_var_ref_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "+"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n17_var_ref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n18_call_prolog_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7704], rax
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7688], rax
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7672], rax
                        lea              rdi, [rsp + 7664]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    n30_call_prolog_α
                                                                              jmp   n19_call_prolog_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   n30_call_prolog_α
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7592], rax
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7568], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7576], rax
                        lea              rdi, [rsp + 7568]
                        lea              r8, [rsp + 7568]
.Lcall_prolog_α_306_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_306_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_56: cmp              al, 72;                              jne   .Lcall_prolog_α_306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_306_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_41: lea              r9, [rsp + 7584]
.Lcall_prolog_α_306_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_306_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_58: cmp              al, 72;                              jne   .Lcall_prolog_α_306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_43: cmp              r8, r9;                              je    .Lcall_prolog_α_306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_306_44
                                                                              jmp   .Lcall_prolog_α_306_45
.Lcall_prolog_α_306_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_53
                                                                              jmp   .Lcall_prolog_α_306_46
.Lcall_prolog_α_306_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_306_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_306_51
.Lcall_prolog_α_306_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_47
                                                                              jmp   .Lcall_prolog_α_306_48
.Lcall_prolog_α_306_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_306_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_306_51
.Lcall_prolog_α_306_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_306_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_306_53
                                                                              jmp   .Lcall_prolog_α_306_52
.Lcall_prolog_α_306_49: cmp              dl, 80;                              je    .Lcall_prolog_α_306_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_306_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_306_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_306_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_306_51
                                                                              jmp   .Lcall_prolog_α_306_52
.Lcall_prolog_α_306_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_306_53
.Lcall_prolog_α_306_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_306_54
.Lcall_prolog_α_306_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_306_54
.Lcall_prolog_α_306_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_306_54: mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              al, 104;                             je    n30_call_prolog_α
                                                                              jmp   n20_cut_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n30_call_prolog_α
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_cut_bx, @function
n20_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_cut_α:              mov              r11, 21;                             jmp   n21_var_ref_α
                        .size            n20_cut_bx, .-n20_cut_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n23_var_ref_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n24_call_proc_staged_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_call_proc_staged_bx, @function
n24_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_315_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lcall_proc_staged_α_315_29:
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n25_var_ref_α
n24_call_proc_staged_β: mov              r11, 25;                             jmp   n277_call_prolog_α
.Lcall_proc_staged_β_315_0:
                        .quad            .Lcall_proc_staged_β_315_0_s
.Lcall_proc_staged_β_315_0_s:
                        .string          "d/3"
                        .size            n24_call_proc_staged_bx, .-n24_call_proc_staged_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n28_call_proc_staged_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_proc_staged_bx, @function
n28_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α: mov              r11, 29
                        lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_323_2
.Lcall_proc_staged_α_323_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_323_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lcall_proc_staged_α_323_29:
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n24_call_proc_staged_β
                                                                              jmp   n29_move_label_α
n28_call_proc_staged_β: mov              r11, 29;                             jmp   n24_call_proc_staged_β
.Lcall_proc_staged_β_323_0:
                        .quad            .Lcall_proc_staged_β_323_0_s
.Lcall_proc_staged_β_323_0_s:
                        .string          "d/3"
                        .size            n28_call_proc_staged_bx, .-n28_call_proc_staged_bx
                        .type            n29_move_label_bx, @function
n29_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_move_label_α:       mov              r11, 30
                        lea              rax, [rip + n28_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n29_move_label_bx, .-n29_move_label_bx
                        .type            n30_call_prolog_bx, @function
n30_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_prolog_α:      mov              r11, 31
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 7280], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 7288], rax
                        lea              rdi, [rsp + 7280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n31_var_ref_α
n30_call_prolog_β:      mov              r11, 31;                             jmp   d$2F3_ω
                        .size            n30_call_prolog_bx, .-n30_call_prolog_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n32_lit_integer_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_329_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n33_lit_string_α
.Llit_integer_α_329_0:  .quad            516
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_330_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n34_call_prolog_α
.Llit_string_α_330_0:   .quad            .Llit_string_α_330_0_s
.Llit_string_α_330_0_s: .string          "-"
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_call_prolog_bx, @function
n34_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_prolog_α:      mov              r11, 35
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7208], rax
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7192], rax
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7168], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7176], rax
                        lea              rdi, [rsp + 7168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              al, 104;                             je    n61_var_ref_α
                                                                              jmp   n35_var_ref_α
n34_call_prolog_β:      mov              r11, 35;                             jmp   n61_var_ref_α
                        .size            n34_call_prolog_bx, .-n34_call_prolog_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n36_lit_string_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_334_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n37_var_ref_α
.Llit_string_α_334_0:   .quad            .Llit_string_α_334_0_s
.Llit_string_α_334_0_s: .string          "-"
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n38_var_ref_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n39_call_prolog_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_call_prolog_bx, @function
n39_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_prolog_α:      mov              r11, 40
                        mov              rax, qword ptr [rsp + 7040]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 7048]
                        mov              qword ptr [rsp + 7112], rax
                        mov              rax, qword ptr [rsp + 7024]
                        mov              qword ptr [rsp + 7088], rax
                        mov              rax, qword ptr [rsp + 7032]
                        mov              qword ptr [rsp + 7096], rax
                        mov              rax, qword ptr [rsp + 7136]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7144]
                        mov              qword ptr [rsp + 7080], rax
                        lea              rdi, [rsp + 7072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              al, 104;                             je    n60_call_prolog_α
                                                                              jmp   n40_call_prolog_α
n39_call_prolog_β:      mov              r11, 40;                             jmp   n60_call_prolog_α
                        .size            n39_call_prolog_bx, .-n39_call_prolog_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 6992], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7000], rax
                        mov              rax, qword ptr [rsp + 7008]
                        mov              qword ptr [rsp + 6976], rax
                        mov              rax, qword ptr [rsp + 7016]
                        mov              qword ptr [rsp + 6984], rax
                        lea              rdi, [rsp + 6976]
                        lea              r8, [rsp + 6976]
.Lcall_prolog_α_340_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_340_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_340_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_340_40
.Lcall_prolog_α_340_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_340_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_340_40
.Lcall_prolog_α_340_56: cmp              al, 72;                              jne   .Lcall_prolog_α_340_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_340_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_340_40
.Lcall_prolog_α_340_41: lea              r9, [rsp + 6992]
.Lcall_prolog_α_340_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_340_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_340_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_340_42
.Lcall_prolog_α_340_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_340_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_340_42
.Lcall_prolog_α_340_58: cmp              al, 72;                              jne   .Lcall_prolog_α_340_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_340_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_340_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_340_42
.Lcall_prolog_α_340_43: cmp              r8, r9;                              je    .Lcall_prolog_α_340_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_340_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_340_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_340_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_340_44
                                                                              jmp   .Lcall_prolog_α_340_45
.Lcall_prolog_α_340_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_340_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_340_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_340_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_340_53
                                                                              jmp   .Lcall_prolog_α_340_46
.Lcall_prolog_α_340_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_340_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_340_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_340_51
.Lcall_prolog_α_340_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_340_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_340_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_340_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_340_47
                                                                              jmp   .Lcall_prolog_α_340_48
.Lcall_prolog_α_340_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_340_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_340_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_340_51
.Lcall_prolog_α_340_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_340_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_340_53
                                                                              jmp   .Lcall_prolog_α_340_52
.Lcall_prolog_α_340_49: cmp              dl, 80;                              je    .Lcall_prolog_α_340_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_340_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_340_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_340_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_340_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_340_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_340_51
                                                                              jmp   .Lcall_prolog_α_340_52
.Lcall_prolog_α_340_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_340_53
.Lcall_prolog_α_340_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_340_54
.Lcall_prolog_α_340_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_340_54
.Lcall_prolog_α_340_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_340_54: mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              al, 104;                             je    n60_call_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n60_call_prolog_α
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n42_var_ref_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n43_call_prolog_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_call_prolog_bx, @function
n43_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_prolog_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              rax, qword ptr [rsp + 6952]
                        mov              qword ptr [rsp + 6920], rax
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6896], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6904], rax
                        lea              rdi, [rsp + 6896]
                        lea              r8, [rsp + 6896]
.Lcall_prolog_α_345_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_345_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_345_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_345_40
.Lcall_prolog_α_345_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_345_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_345_40
.Lcall_prolog_α_345_56: cmp              al, 72;                              jne   .Lcall_prolog_α_345_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_345_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_345_40
.Lcall_prolog_α_345_41: lea              r9, [rsp + 6912]
.Lcall_prolog_α_345_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_345_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_345_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_345_42
.Lcall_prolog_α_345_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_345_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_345_42
.Lcall_prolog_α_345_58: cmp              al, 72;                              jne   .Lcall_prolog_α_345_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_345_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_345_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_345_42
.Lcall_prolog_α_345_43: cmp              r8, r9;                              je    .Lcall_prolog_α_345_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_345_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_345_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_345_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_345_44
                                                                              jmp   .Lcall_prolog_α_345_45
.Lcall_prolog_α_345_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_345_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_345_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_345_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_345_53
                                                                              jmp   .Lcall_prolog_α_345_46
.Lcall_prolog_α_345_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_345_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_345_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_345_51
.Lcall_prolog_α_345_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_345_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_345_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_345_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_345_47
                                                                              jmp   .Lcall_prolog_α_345_48
.Lcall_prolog_α_345_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_345_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_345_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_345_51
.Lcall_prolog_α_345_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_345_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_345_53
                                                                              jmp   .Lcall_prolog_α_345_52
.Lcall_prolog_α_345_49: cmp              dl, 80;                              je    .Lcall_prolog_α_345_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_345_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_345_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_345_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_345_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_345_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_345_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_345_51
                                                                              jmp   .Lcall_prolog_α_345_52
.Lcall_prolog_α_345_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_345_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_345_53
.Lcall_prolog_α_345_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_345_54
.Lcall_prolog_α_345_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_345_54
.Lcall_prolog_α_345_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_345_54: mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              al, 104;                             je    n60_call_prolog_α
                                                                              jmp   n44_var_ref_α
n43_call_prolog_β:      mov              r11, 44;                             jmp   n60_call_prolog_α
                        .size            n43_call_prolog_bx, .-n43_call_prolog_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n45_lit_string_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_348_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n46_var_ref_α
.Llit_string_α_348_0:   .quad            .Llit_string_α_348_0_s
.Llit_string_α_348_0_s: .string          "-"
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n47_var_ref_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n48_call_prolog_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_call_prolog_bx, @function
n48_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_prolog_α:      mov              r11, 49
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6840], rax
                        mov              rax, qword ptr [rsp + 6752]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6760]
                        mov              qword ptr [rsp + 6824], rax
                        mov              rax, qword ptr [rsp + 6864]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6872]
                        mov              qword ptr [rsp + 6808], rax
                        lea              rdi, [rsp + 6800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              al, 104;                             je    n60_call_prolog_α
                                                                              jmp   n49_call_prolog_α
n48_call_prolog_β:      mov              r11, 49;                             jmp   n60_call_prolog_α
                        .size            n48_call_prolog_bx, .-n48_call_prolog_bx
                        .type            n49_call_prolog_bx, @function
n49_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_prolog_α:      mov              r11, 50
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6720], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6728], rax
                        mov              rax, qword ptr [rsp + 6736]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6744]
                        mov              qword ptr [rsp + 6712], rax
                        lea              rdi, [rsp + 6704]
                        lea              r8, [rsp + 6704]
.Lcall_prolog_α_354_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_354_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_354_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_354_40
.Lcall_prolog_α_354_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_354_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_354_40
.Lcall_prolog_α_354_56: cmp              al, 72;                              jne   .Lcall_prolog_α_354_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_354_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_354_40
.Lcall_prolog_α_354_41: lea              r9, [rsp + 6720]
.Lcall_prolog_α_354_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_354_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_354_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_354_42
.Lcall_prolog_α_354_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_354_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_354_42
.Lcall_prolog_α_354_58: cmp              al, 72;                              jne   .Lcall_prolog_α_354_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_354_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_354_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_354_42
.Lcall_prolog_α_354_43: cmp              r8, r9;                              je    .Lcall_prolog_α_354_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_354_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_354_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_354_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_354_44
                                                                              jmp   .Lcall_prolog_α_354_45
.Lcall_prolog_α_354_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_354_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_354_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_354_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_354_53
                                                                              jmp   .Lcall_prolog_α_354_46
.Lcall_prolog_α_354_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_354_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_354_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_354_51
.Lcall_prolog_α_354_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_354_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_354_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_354_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_354_47
                                                                              jmp   .Lcall_prolog_α_354_48
.Lcall_prolog_α_354_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_354_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_354_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_354_51
.Lcall_prolog_α_354_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_354_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_354_53
                                                                              jmp   .Lcall_prolog_α_354_52
.Lcall_prolog_α_354_49: cmp              dl, 80;                              je    .Lcall_prolog_α_354_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_354_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_354_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_354_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_354_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_354_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_354_51
                                                                              jmp   .Lcall_prolog_α_354_52
.Lcall_prolog_α_354_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_354_53
.Lcall_prolog_α_354_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_354_54
.Lcall_prolog_α_354_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_354_54
.Lcall_prolog_α_354_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_354_54: mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n60_call_prolog_α
                                                                              jmp   n50_cut_α
n49_call_prolog_β:      mov              r11, 50;                             jmp   n60_call_prolog_α
                        .size            n49_call_prolog_bx, .-n49_call_prolog_bx
                        .type            n50_cut_bx, @function
n50_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_cut_α:              mov              r11, 51;                             jmp   n51_var_ref_α
                        .size            n50_cut_bx, .-n50_cut_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n52_var_ref_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n54_call_proc_staged_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_proc_staged_bx, @function
n54_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_proc_staged_α: mov              r11, 55
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_363_2
.Lcall_proc_staged_α_363_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6560]
                        mov              rdx, qword ptr [rsp + 6568]
.Lcall_proc_staged_α_363_29:
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n55_var_ref_α
n54_call_proc_staged_β: mov              r11, 55;                             jmp   n277_call_prolog_α
.Lcall_proc_staged_β_363_0:
                        .quad            .Lcall_proc_staged_β_363_0_s
.Lcall_proc_staged_β_363_0_s:
                        .string          "d/3"
                        .size            n54_call_proc_staged_bx, .-n54_call_proc_staged_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n56_var_ref_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n57_var_ref_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n58_call_proc_staged_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_call_proc_staged_bx, @function
n58_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α: mov              r11, 59
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_371_2
.Lcall_proc_staged_α_371_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_371_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6432]
                        mov              rdx, qword ptr [rsp + 6440]
.Lcall_proc_staged_α_371_29:
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              al, 104;                             je    n54_call_proc_staged_β
                                                                              jmp   n59_move_label_α
n58_call_proc_staged_β: mov              r11, 59;                             jmp   n54_call_proc_staged_β
.Lcall_proc_staged_β_371_0:
                        .quad            .Lcall_proc_staged_β_371_0_s
.Lcall_proc_staged_β_371_0_s:
                        .string          "d/3"
                        .size            n58_call_proc_staged_bx, .-n58_call_proc_staged_bx
                        .type            n59_move_label_bx, @function
n59_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_move_label_α:       mov              r11, 60
                        lea              rax, [rip + n58_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n59_move_label_bx, .-n59_move_label_bx
                        .type            n60_call_prolog_bx, @function
n60_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_prolog_α:      mov              r11, 61
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 6416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 6424], rax
                        lea              rdi, [rsp + 6416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n61_var_ref_α
n60_call_prolog_β:      mov              r11, 61;                             jmp   d$2F3_ω
                        .size            n60_call_prolog_bx, .-n60_call_prolog_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n62_lit_integer_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      mov              r11, 63
                        mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_377_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n63_lit_string_α
.Llit_integer_α_377_0:  .quad            516
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_378_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n64_call_prolog_α
.Llit_string_α_378_0:   .quad            .Llit_string_α_378_0_s
.Llit_string_α_378_0_s: .string          "*"
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_call_prolog_bx, @function
n64_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_prolog_α:      mov              r11, 65
                        mov              rax, qword ptr [rsp + 6384]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6392]
                        mov              qword ptr [rsp + 6344], rax
                        mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 6328], rax
                        mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 6312], rax
                        lea              rdi, [rsp + 6304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6288], rax
                        mov              qword ptr [rsp + 6296], rdx
                        cmp              al, 104;                             je    n97_var_ref_α
                                                                              jmp   n65_var_ref_α
n64_call_prolog_β:      mov              r11, 65;                             jmp   n97_var_ref_α
                        .size            n64_call_prolog_bx, .-n64_call_prolog_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n66_lit_string_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_382_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n67_var_ref_α
.Llit_string_α_382_0:   .quad            .Llit_string_α_382_0_s
.Llit_string_α_382_0_s: .string          "*"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n68_var_ref_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n69_call_prolog_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_call_prolog_bx, @function
n69_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_prolog_α:      mov              r11, 70
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6248], rax
                        mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6224], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6232], rax
                        mov              rax, qword ptr [rsp + 6272]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6280]
                        mov              qword ptr [rsp + 6216], rax
                        lea              rdi, [rsp + 6208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n70_call_prolog_α
n69_call_prolog_β:      mov              r11, 70;                             jmp   n96_call_prolog_α
                        .size            n69_call_prolog_bx, .-n69_call_prolog_bx
                        .type            n70_call_prolog_bx, @function
n70_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_prolog_α:      mov              r11, 71
                        mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6136], rax
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6120], rax
                        lea              rdi, [rsp + 6112]
                        lea              r8, [rsp + 6112]
.Lcall_prolog_α_388_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_388_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_388_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_388_40
.Lcall_prolog_α_388_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_388_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_388_40
.Lcall_prolog_α_388_56: cmp              al, 72;                              jne   .Lcall_prolog_α_388_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_388_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_388_40
.Lcall_prolog_α_388_41: lea              r9, [rsp + 6128]
.Lcall_prolog_α_388_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_388_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_388_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_388_42
.Lcall_prolog_α_388_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_388_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_388_42
.Lcall_prolog_α_388_58: cmp              al, 72;                              jne   .Lcall_prolog_α_388_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_388_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_388_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_388_42
.Lcall_prolog_α_388_43: cmp              r8, r9;                              je    .Lcall_prolog_α_388_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_388_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_388_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_388_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_388_44
                                                                              jmp   .Lcall_prolog_α_388_45
.Lcall_prolog_α_388_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_388_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_388_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_388_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_388_53
                                                                              jmp   .Lcall_prolog_α_388_46
.Lcall_prolog_α_388_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_388_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_388_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_388_51
.Lcall_prolog_α_388_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_388_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_388_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_388_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_388_47
                                                                              jmp   .Lcall_prolog_α_388_48
.Lcall_prolog_α_388_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_388_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_388_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_388_51
.Lcall_prolog_α_388_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_388_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_388_53
                                                                              jmp   .Lcall_prolog_α_388_52
.Lcall_prolog_α_388_49: cmp              dl, 80;                              je    .Lcall_prolog_α_388_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_388_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_388_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_388_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_388_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_388_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_388_51
                                                                              jmp   .Lcall_prolog_α_388_52
.Lcall_prolog_α_388_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_388_53
.Lcall_prolog_α_388_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_388_54
.Lcall_prolog_α_388_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_388_54
.Lcall_prolog_α_388_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_388_54: mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n71_var_ref_α
n70_call_prolog_β:      mov              r11, 71;                             jmp   n96_call_prolog_α
                        .size            n70_call_prolog_bx, .-n70_call_prolog_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n72_var_ref_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n73_call_prolog_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_prolog_bx, @function
n73_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_prolog_α:      mov              r11, 74
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6040], rax
                        lea              rdi, [rsp + 6032]
                        lea              r8, [rsp + 6032]
.Lcall_prolog_α_393_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_40
.Lcall_prolog_α_393_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_40
.Lcall_prolog_α_393_56: cmp              al, 72;                              jne   .Lcall_prolog_α_393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_393_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_40
.Lcall_prolog_α_393_41: lea              r9, [rsp + 6048]
.Lcall_prolog_α_393_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_42
.Lcall_prolog_α_393_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_42
.Lcall_prolog_α_393_58: cmp              al, 72;                              jne   .Lcall_prolog_α_393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_42
.Lcall_prolog_α_393_43: cmp              r8, r9;                              je    .Lcall_prolog_α_393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_393_44
                                                                              jmp   .Lcall_prolog_α_393_45
.Lcall_prolog_α_393_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_53
                                                                              jmp   .Lcall_prolog_α_393_46
.Lcall_prolog_α_393_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_393_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_393_51
.Lcall_prolog_α_393_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_47
                                                                              jmp   .Lcall_prolog_α_393_48
.Lcall_prolog_α_393_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_393_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_393_51
.Lcall_prolog_α_393_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_393_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_393_53
                                                                              jmp   .Lcall_prolog_α_393_52
.Lcall_prolog_α_393_49: cmp              dl, 80;                              je    .Lcall_prolog_α_393_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_393_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_393_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_393_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_393_51
                                                                              jmp   .Lcall_prolog_α_393_52
.Lcall_prolog_α_393_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_393_53
.Lcall_prolog_α_393_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_393_54
.Lcall_prolog_α_393_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_393_54
.Lcall_prolog_α_393_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_393_54: mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n74_var_ref_α
n73_call_prolog_β:      mov              r11, 74;                             jmp   n96_call_prolog_α
                        .size            n73_call_prolog_bx, .-n73_call_prolog_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n75_lit_string_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_396_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n76_lit_string_α
.Llit_string_α_396_0:   .quad            .Llit_string_α_396_0_s
.Llit_string_α_396_0_s: .string          "+"
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_397_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n77_var_ref_α
.Llit_string_α_397_0:   .quad            .Llit_string_α_397_0_s
.Llit_string_α_397_0_s: .string          "*"
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n78_var_ref_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n79_call_prolog_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_call_prolog_bx, @function
n79_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_prolog_α:      mov              r11, 80
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5736], rax
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5720], rax
                        lea              rdi, [rsp + 5712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n80_lit_string_α
n79_call_prolog_β:      mov              r11, 80;                             jmp   d$2F3_ω
                        .size            n79_call_prolog_bx, .-n79_call_prolog_bx
                        .type            n80_lit_string_bx, @function
n80_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_403_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n81_var_ref_α
.Llit_string_α_403_0:   .quad            .Llit_string_α_403_0_s
.Llit_string_α_403_0_s: .string          "*"
                        .size            n80_lit_string_bx, .-n80_lit_string_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n83_call_prolog_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_prolog_bx, @function
n83_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_prolog_α:      mov              r11, 84
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5880], rax
                        mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5848], rax
                        lea              rdi, [rsp + 5840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n84_call_prolog_α
n83_call_prolog_β:      mov              r11, 84;                             jmp   d$2F3_ω
                        .size            n83_call_prolog_bx, .-n83_call_prolog_bx
                        .type            n84_call_prolog_bx, @function
n84_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_prolog_α:      mov              r11, 85
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5976], rax
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5944], rax
                        lea              rdi, [rsp + 5936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n85_call_prolog_α
n84_call_prolog_β:      mov              r11, 85;                             jmp   n96_call_prolog_α
                        .size            n84_call_prolog_bx, .-n84_call_prolog_bx
                        .type            n85_call_prolog_bx, @function
n85_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_prolog_α:      mov              r11, 86
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5624], rax
                        lea              rdi, [rsp + 5616]
                        lea              r8, [rsp + 5616]
.Lcall_prolog_α_410_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_410_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_410_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_410_40
.Lcall_prolog_α_410_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_410_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_410_40
.Lcall_prolog_α_410_56: cmp              al, 72;                              jne   .Lcall_prolog_α_410_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_410_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_410_40
.Lcall_prolog_α_410_41: lea              r9, [rsp + 5632]
.Lcall_prolog_α_410_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_410_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_410_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_410_42
.Lcall_prolog_α_410_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_410_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_410_42
.Lcall_prolog_α_410_58: cmp              al, 72;                              jne   .Lcall_prolog_α_410_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_410_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_410_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_410_42
.Lcall_prolog_α_410_43: cmp              r8, r9;                              je    .Lcall_prolog_α_410_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_410_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_410_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_410_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_410_44
                                                                              jmp   .Lcall_prolog_α_410_45
.Lcall_prolog_α_410_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_410_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_410_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_410_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_410_53
                                                                              jmp   .Lcall_prolog_α_410_46
.Lcall_prolog_α_410_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_410_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_410_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_410_51
.Lcall_prolog_α_410_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_410_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_410_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_410_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_410_47
                                                                              jmp   .Lcall_prolog_α_410_48
.Lcall_prolog_α_410_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_410_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_410_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_410_51
.Lcall_prolog_α_410_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_410_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_410_53
                                                                              jmp   .Lcall_prolog_α_410_52
.Lcall_prolog_α_410_49: cmp              dl, 80;                              je    .Lcall_prolog_α_410_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_410_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_410_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_410_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_410_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_410_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_410_51
                                                                              jmp   .Lcall_prolog_α_410_52
.Lcall_prolog_α_410_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_410_53
.Lcall_prolog_α_410_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_410_54
.Lcall_prolog_α_410_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_410_54
.Lcall_prolog_α_410_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_410_54: mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n86_cut_α
n85_call_prolog_β:      mov              r11, 86;                             jmp   n96_call_prolog_α
                        .size            n85_call_prolog_bx, .-n85_call_prolog_bx
                        .type            n86_cut_bx, @function
n86_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_cut_α:              mov              r11, 87;                             jmp   n87_var_ref_α
                        .size            n86_cut_bx, .-n86_cut_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n90_call_proc_staged_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_call_proc_staged_bx, @function
n90_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_proc_staged_α: mov              r11, 91
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_419_2
.Lcall_proc_staged_α_419_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_419_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
.Lcall_proc_staged_α_419_29:
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n91_var_ref_α
n90_call_proc_staged_β: mov              r11, 91;                             jmp   n277_call_prolog_α
.Lcall_proc_staged_β_419_0:
                        .quad            .Lcall_proc_staged_β_419_0_s
.Lcall_proc_staged_β_419_0_s:
                        .string          "d/3"
                        .size            n90_call_proc_staged_bx, .-n90_call_proc_staged_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n93_var_ref_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n94_call_proc_staged_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_call_proc_staged_bx, @function
n94_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α: mov              r11, 95
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_427_2
.Lcall_proc_staged_α_427_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_427_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lcall_proc_staged_α_427_29:
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              al, 104;                             je    n90_call_proc_staged_β
                                                                              jmp   n95_move_label_α
n94_call_proc_staged_β: mov              r11, 95;                             jmp   n90_call_proc_staged_β
.Lcall_proc_staged_β_427_0:
                        .quad            .Lcall_proc_staged_β_427_0_s
.Lcall_proc_staged_β_427_0_s:
                        .string          "d/3"
                        .size            n94_call_proc_staged_bx, .-n94_call_proc_staged_bx
                        .type            n95_move_label_bx, @function
n95_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_move_label_α:       mov              r11, 96
                        lea              rax, [rip + n94_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n95_move_label_bx, .-n95_move_label_bx
                        .type            n96_call_prolog_bx, @function
n96_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_prolog_α:      mov              r11, 97
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 5336], rax
                        lea              rdi, [rsp + 5328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n97_var_ref_α
n96_call_prolog_β:      mov              r11, 97;                             jmp   d$2F3_ω
                        .size            n96_call_prolog_bx, .-n96_call_prolog_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n98_lit_integer_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 99
                        mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_433_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n99_lit_string_α
.Llit_integer_α_433_0:  .quad            516
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 100
                        mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n100_call_prolog_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "/"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_call_prolog_bx, @function
n100_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_prolog_α:     mov              r11, 101
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 5256], rax
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    n139_var_ref_α
                                                                              jmp   n101_var_ref_α
n100_call_prolog_β:     mov              r11, 101;                            jmp   n139_var_ref_α
                        .size            n100_call_prolog_bx, .-n100_call_prolog_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n102_lit_string_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_lit_string_bx, @function
n102_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n103_var_ref_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "/"
                        .size            n102_lit_string_bx, .-n102_lit_string_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n104_var_ref_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n105_call_prolog_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_call_prolog_bx, @function
n105_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_prolog_α:     mov              r11, 106
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5128], rax
                        lea              rdi, [rsp + 5120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              al, 104;                             je    n138_call_prolog_α
                                                                              jmp   n106_call_prolog_α
n105_call_prolog_β:     mov              r11, 106;                            jmp   n138_call_prolog_α
                        .size            n105_call_prolog_bx, .-n105_call_prolog_bx
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 107
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5048], rax
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5032], rax
                        lea              rdi, [rsp + 5024]
                        lea              r8, [rsp + 5024]
.Lcall_prolog_α_444_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_444_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_444_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_444_40
.Lcall_prolog_α_444_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_444_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_444_40
.Lcall_prolog_α_444_56: cmp              al, 72;                              jne   .Lcall_prolog_α_444_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_444_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_444_40
.Lcall_prolog_α_444_41: lea              r9, [rsp + 5040]
.Lcall_prolog_α_444_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_444_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_444_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_444_42
.Lcall_prolog_α_444_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_444_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_444_42
.Lcall_prolog_α_444_58: cmp              al, 72;                              jne   .Lcall_prolog_α_444_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_444_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_444_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_444_42
.Lcall_prolog_α_444_43: cmp              r8, r9;                              je    .Lcall_prolog_α_444_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_444_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_444_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_444_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_444_44
                                                                              jmp   .Lcall_prolog_α_444_45
.Lcall_prolog_α_444_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_444_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_444_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_444_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_444_53
                                                                              jmp   .Lcall_prolog_α_444_46
.Lcall_prolog_α_444_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_444_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_444_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_444_51
.Lcall_prolog_α_444_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_444_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_444_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_444_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_444_47
                                                                              jmp   .Lcall_prolog_α_444_48
.Lcall_prolog_α_444_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_444_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_444_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_444_51
.Lcall_prolog_α_444_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_444_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_444_53
                                                                              jmp   .Lcall_prolog_α_444_52
.Lcall_prolog_α_444_49: cmp              dl, 80;                              je    .Lcall_prolog_α_444_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_444_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_444_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_444_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_444_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_444_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_444_51
                                                                              jmp   .Lcall_prolog_α_444_52
.Lcall_prolog_α_444_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_444_53
.Lcall_prolog_α_444_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_444_54
.Lcall_prolog_α_444_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_444_54
.Lcall_prolog_α_444_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_444_54: mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              al, 104;                             je    n138_call_prolog_α
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 107;                            jmp   n138_call_prolog_α
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n109_call_prolog_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax
                        lea              rdi, [rsp + 4944]
                        lea              r8, [rsp + 4944]
.Lcall_prolog_α_449_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_449_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_56: cmp              al, 72;                              jne   .Lcall_prolog_α_449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_41: lea              r9, [rsp + 4960]
.Lcall_prolog_α_449_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_449_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_58: cmp              al, 72;                              jne   .Lcall_prolog_α_449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_43: cmp              r8, r9;                              je    .Lcall_prolog_α_449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_44
                                                                              jmp   .Lcall_prolog_α_449_45
.Lcall_prolog_α_449_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_53
                                                                              jmp   .Lcall_prolog_α_449_46
.Lcall_prolog_α_449_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_449_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_449_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_449_51
.Lcall_prolog_α_449_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_47
                                                                              jmp   .Lcall_prolog_α_449_48
.Lcall_prolog_α_449_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_449_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_449_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_449_51
.Lcall_prolog_α_449_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_449_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_449_53
                                                                              jmp   .Lcall_prolog_α_449_52
.Lcall_prolog_α_449_49: cmp              dl, 80;                              je    .Lcall_prolog_α_449_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_449_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_449_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_449_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_449_51
                                                                              jmp   .Lcall_prolog_α_449_52
.Lcall_prolog_α_449_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_449_53
.Lcall_prolog_α_449_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_449_54
.Lcall_prolog_α_449_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_449_54
.Lcall_prolog_α_449_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_449_54: mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n138_call_prolog_α
                                                                              jmp   n110_var_ref_α
n109_call_prolog_β:     mov              r11, 110;                            jmp   n138_call_prolog_α
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n111_lit_string_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_lit_string_bx, @function
n111_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_452_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n112_lit_string_α
.Llit_string_α_452_0:   .quad            .Llit_string_α_452_0_s
.Llit_string_α_452_0_s: .string          "/"
                        .size            n111_lit_string_bx, .-n111_lit_string_bx
                        .type            n112_lit_string_bx, @function
n112_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_453_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n113_lit_string_α
.Llit_string_α_453_0:   .quad            .Llit_string_α_453_0_s
.Llit_string_α_453_0_s: .string          "-"
                        .size            n112_lit_string_bx, .-n112_lit_string_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_454_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n114_var_ref_α
.Llit_string_α_454_0:   .quad            .Llit_string_α_454_0_s
.Llit_string_α_454_0_s: .string          "*"
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n116_call_prolog_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_call_prolog_bx, @function
n116_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_prolog_α:     mov              r11, 117
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4408], rax
                        lea              rdi, [rsp + 4400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n117_lit_string_α
n116_call_prolog_β:     mov              r11, 117;                            jmp   d$2F3_ω
                        .size            n116_call_prolog_bx, .-n116_call_prolog_bx
                        .type            n117_lit_string_bx, @function
n117_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n118_var_ref_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "*"
                        .size            n117_lit_string_bx, .-n117_lit_string_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n119_var_ref_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n120_call_prolog_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_call_prolog_bx, @function
n120_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_prolog_α:     mov              r11, 121
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4568], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4552], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4536], rax
                        lea              rdi, [rsp + 4528]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n121_call_prolog_α
n120_call_prolog_β:     mov              r11, 121;                            jmp   d$2F3_ω
                        .size            n120_call_prolog_bx, .-n120_call_prolog_bx
                        .type            n121_call_prolog_bx, @function
n121_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_prolog_α:     mov              r11, 122
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4664], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4648], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n122_lit_string_α
n121_call_prolog_β:     mov              r11, 122;                            jmp   d$2F3_ω
                        .size            n121_call_prolog_bx, .-n121_call_prolog_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n123_var_ref_α
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          "^"
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n124_lit_integer_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_470_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n125_call_prolog_α
.Llit_integer_α_470_0:  .quad            2
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_prolog_bx, @function
n125_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_prolog_α:     mov              r11, 126
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4776], rax
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4760], rax
                        lea              rdi, [rsp + 4752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n126_call_prolog_α
n125_call_prolog_β:     mov              r11, 126;                            jmp   d$2F3_ω
                        .size            n125_call_prolog_bx, .-n125_call_prolog_bx
                        .type            n126_call_prolog_bx, @function
n126_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_prolog_α:     mov              r11, 127
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4888], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4856], rax
                        lea              rdi, [rsp + 4848]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    n138_call_prolog_α
                                                                              jmp   n127_call_prolog_α
n126_call_prolog_β:     mov              r11, 127;                            jmp   n138_call_prolog_α
                        .size            n126_call_prolog_bx, .-n126_call_prolog_bx
                        .type            n127_call_prolog_bx, @function
n127_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_prolog_α:     mov              r11, 128
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        lea              r8, [rsp + 4304]
.Lcall_prolog_α_473_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_473_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_56: cmp              al, 72;                              jne   .Lcall_prolog_α_473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_473_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_41: lea              r9, [rsp + 4320]
.Lcall_prolog_α_473_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_473_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_58: cmp              al, 72;                              jne   .Lcall_prolog_α_473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_43: cmp              r8, r9;                              je    .Lcall_prolog_α_473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_473_44
                                                                              jmp   .Lcall_prolog_α_473_45
.Lcall_prolog_α_473_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_53
                                                                              jmp   .Lcall_prolog_α_473_46
.Lcall_prolog_α_473_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_473_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_473_51
.Lcall_prolog_α_473_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_47
                                                                              jmp   .Lcall_prolog_α_473_48
.Lcall_prolog_α_473_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_473_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_473_51
.Lcall_prolog_α_473_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_473_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_473_53
                                                                              jmp   .Lcall_prolog_α_473_52
.Lcall_prolog_α_473_49: cmp              dl, 80;                              je    .Lcall_prolog_α_473_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_473_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_473_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_473_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_473_51
                                                                              jmp   .Lcall_prolog_α_473_52
.Lcall_prolog_α_473_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_473_53
.Lcall_prolog_α_473_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_473_54
.Lcall_prolog_α_473_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_473_54
.Lcall_prolog_α_473_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_473_54: mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n138_call_prolog_α
                                                                              jmp   n128_cut_α
n127_call_prolog_β:     mov              r11, 128;                            jmp   n138_call_prolog_α
                        .size            n127_call_prolog_bx, .-n127_call_prolog_bx
                        .type            n128_cut_bx, @function
n128_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_cut_α:             mov              r11, 129;                            jmp   n129_var_ref_α
                        .size            n128_cut_bx, .-n128_cut_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n130_var_ref_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n132_call_proc_staged_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_call_proc_staged_bx, @function
n132_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              r11, 133
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_482_2
.Lcall_proc_staged_α_482_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_482_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4160]
                        mov              rdx, qword ptr [rsp + 4168]
.Lcall_proc_staged_α_482_29:
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n133_var_ref_α
n132_call_proc_staged_β:
                        mov              r11, 133;                            jmp   n277_call_prolog_α
.Lcall_proc_staged_β_482_0:
                        .quad            .Lcall_proc_staged_β_482_0_s
.Lcall_proc_staged_β_482_0_s:
                        .string          "d/3"
                        .size            n132_call_proc_staged_bx, .-n132_call_proc_staged_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n134_var_ref_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n135_var_ref_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n136_call_proc_staged_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_call_proc_staged_bx, @function
n136_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              r11, 137
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_490_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4032]
                        mov              rdx, qword ptr [rsp + 4040]
.Lcall_proc_staged_α_490_29:
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n132_call_proc_staged_β
                                                                              jmp   n137_move_label_α
n136_call_proc_staged_β:
                        mov              r11, 137;                            jmp   n132_call_proc_staged_β
.Lcall_proc_staged_β_490_0:
                        .quad            .Lcall_proc_staged_β_490_0_s
.Lcall_proc_staged_β_490_0_s:
                        .string          "d/3"
                        .size            n136_call_proc_staged_bx, .-n136_call_proc_staged_bx
                        .type            n137_move_label_bx, @function
n137_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_move_label_α:      mov              r11, 138
                        lea              rax, [rip + n136_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n137_move_label_bx, .-n137_move_label_bx
                        .type            n138_call_prolog_bx, @function
n138_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_prolog_α:     mov              r11, 139
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n139_var_ref_α
n138_call_prolog_β:     mov              r11, 139;                            jmp   d$2F3_ω
                        .size            n138_call_prolog_bx, .-n138_call_prolog_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n140_lit_integer_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n141_lit_string_α
.Llit_integer_α_496_0:  .quad            516
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n142_call_prolog_α
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          "^"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_call_prolog_bx, @function
n142_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_prolog_α:     mov              r11, 143
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    n178_var_ref_α
                                                                              jmp   n143_var_ref_α
n142_call_prolog_β:     mov              r11, 143;                            jmp   n178_var_ref_α
                        .size            n142_call_prolog_bx, .-n142_call_prolog_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n144_lit_string_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_501_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n145_var_ref_α
.Llit_string_α_501_0:   .quad            .Llit_string_α_501_0_s
.Llit_string_α_501_0_s: .string          "^"
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n146_var_ref_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n147_call_prolog_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_call_prolog_bx, @function
n147_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_prolog_α:     mov              r11, 148
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    n177_call_prolog_α
                                                                              jmp   n148_call_prolog_α
n147_call_prolog_β:     mov              r11, 148;                            jmp   n177_call_prolog_α
                        .size            n147_call_prolog_bx, .-n147_call_prolog_bx
                        .type            n148_call_prolog_bx, @function
n148_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_prolog_α:     mov              r11, 149
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        lea              r8, [rsp + 3712]
.Lcall_prolog_α_507_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_507_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_56: cmp              al, 72;                              jne   .Lcall_prolog_α_507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_507_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_41: lea              r9, [rsp + 3728]
.Lcall_prolog_α_507_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_507_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_58: cmp              al, 72;                              jne   .Lcall_prolog_α_507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_43: cmp              r8, r9;                              je    .Lcall_prolog_α_507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_507_44
                                                                              jmp   .Lcall_prolog_α_507_45
.Lcall_prolog_α_507_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_53
                                                                              jmp   .Lcall_prolog_α_507_46
.Lcall_prolog_α_507_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_507_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_507_51
.Lcall_prolog_α_507_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_47
                                                                              jmp   .Lcall_prolog_α_507_48
.Lcall_prolog_α_507_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_507_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_507_51
.Lcall_prolog_α_507_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_507_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_507_53
                                                                              jmp   .Lcall_prolog_α_507_52
.Lcall_prolog_α_507_49: cmp              dl, 80;                              je    .Lcall_prolog_α_507_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_507_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_507_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_507_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_507_51
                                                                              jmp   .Lcall_prolog_α_507_52
.Lcall_prolog_α_507_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_507_53
.Lcall_prolog_α_507_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_507_54
.Lcall_prolog_α_507_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_507_54
.Lcall_prolog_α_507_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_507_54: mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n177_call_prolog_α
                                                                              jmp   n149_var_ref_α
n148_call_prolog_β:     mov              r11, 149;                            jmp   n177_call_prolog_α
                        .size            n148_call_prolog_bx, .-n148_call_prolog_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n150_var_ref_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n151_call_prolog_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_call_prolog_bx, @function
n151_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_prolog_α:     mov              r11, 152
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        lea              r8, [rsp + 3632]
.Lcall_prolog_α_512_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_512_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_56: cmp              al, 72;                              jne   .Lcall_prolog_α_512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_512_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_41: lea              r9, [rsp + 3648]
.Lcall_prolog_α_512_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_512_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_58: cmp              al, 72;                              jne   .Lcall_prolog_α_512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_43: cmp              r8, r9;                              je    .Lcall_prolog_α_512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_512_44
                                                                              jmp   .Lcall_prolog_α_512_45
.Lcall_prolog_α_512_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_53
                                                                              jmp   .Lcall_prolog_α_512_46
.Lcall_prolog_α_512_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_512_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_512_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_512_51
.Lcall_prolog_α_512_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_47
                                                                              jmp   .Lcall_prolog_α_512_48
.Lcall_prolog_α_512_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_512_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_512_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_512_51
.Lcall_prolog_α_512_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_512_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_512_53
                                                                              jmp   .Lcall_prolog_α_512_52
.Lcall_prolog_α_512_49: cmp              dl, 80;                              je    .Lcall_prolog_α_512_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_512_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_512_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_512_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_512_51
                                                                              jmp   .Lcall_prolog_α_512_52
.Lcall_prolog_α_512_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_512_53
.Lcall_prolog_α_512_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_512_54
.Lcall_prolog_α_512_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_512_54
.Lcall_prolog_α_512_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_512_54: mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n177_call_prolog_α
                                                                              jmp   n152_var_ref_α
n151_call_prolog_β:     mov              r11, 152;                            jmp   n177_call_prolog_α
                        .size            n151_call_prolog_bx, .-n151_call_prolog_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n153_lit_string_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_string_bx, @function
n153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_515_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n154_lit_string_α
.Llit_string_α_515_0:   .quad            .Llit_string_α_515_0_s
.Llit_string_α_515_0_s: .string          "*"
                        .size            n153_lit_string_bx, .-n153_lit_string_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_516_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n155_var_ref_α
.Llit_string_α_516_0:   .quad            .Llit_string_α_516_0_s
.Llit_string_α_516_0_s: .string          "*"
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n156_var_ref_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n157_call_prolog_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 158
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3320], rax
                        lea              rdi, [rsp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n158_lit_string_α
n157_call_prolog_β:     mov              r11, 158;                            jmp   d$2F3_ω
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_522_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n159_var_ref_α
.Llit_string_α_522_0:   .quad            .Llit_string_α_522_0_s
.Llit_string_α_522_0_s: .string          "^"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_var_ref_bx, @function
n159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n160_var_ref_α
                        .size            n159_var_ref_bx, .-n159_var_ref_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n161_call_prolog_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_call_prolog_bx, @function
n161_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_prolog_α:     mov              r11, 162
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3448], rax
                        lea              rdi, [rsp + 3440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n162_call_prolog_α
n161_call_prolog_β:     mov              r11, 162;                            jmp   d$2F3_ω
                        .size            n161_call_prolog_bx, .-n161_call_prolog_bx
                        .type            n162_call_prolog_bx, @function
n162_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_prolog_α:     mov              r11, 163
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax
                        lea              rdi, [rsp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n177_call_prolog_α
                                                                              jmp   n163_call_prolog_α
n162_call_prolog_β:     mov              r11, 163;                            jmp   n177_call_prolog_α
                        .size            n162_call_prolog_bx, .-n162_call_prolog_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        lea              r8, [rsp + 3216]
.Lcall_prolog_α_529_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_529_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_529_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_529_40
.Lcall_prolog_α_529_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_529_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_529_40
.Lcall_prolog_α_529_56: cmp              al, 72;                              jne   .Lcall_prolog_α_529_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_529_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_529_40
.Lcall_prolog_α_529_41: lea              r9, [rsp + 3232]
.Lcall_prolog_α_529_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_529_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_529_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_529_42
.Lcall_prolog_α_529_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_529_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_529_42
.Lcall_prolog_α_529_58: cmp              al, 72;                              jne   .Lcall_prolog_α_529_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_529_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_529_42
.Lcall_prolog_α_529_43: cmp              r8, r9;                              je    .Lcall_prolog_α_529_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_529_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_529_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_529_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_529_44
                                                                              jmp   .Lcall_prolog_α_529_45
.Lcall_prolog_α_529_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_529_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_529_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_529_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_529_53
                                                                              jmp   .Lcall_prolog_α_529_46
.Lcall_prolog_α_529_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_529_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_529_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_529_51
.Lcall_prolog_α_529_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_529_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_529_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_529_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_529_47
                                                                              jmp   .Lcall_prolog_α_529_48
.Lcall_prolog_α_529_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_529_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_529_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_529_51
.Lcall_prolog_α_529_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_529_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_529_53
                                                                              jmp   .Lcall_prolog_α_529_52
.Lcall_prolog_α_529_49: cmp              dl, 80;                              je    .Lcall_prolog_α_529_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_529_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_529_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_529_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_529_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_529_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_529_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_529_51
                                                                              jmp   .Lcall_prolog_α_529_52
.Lcall_prolog_α_529_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_529_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_529_53
.Lcall_prolog_α_529_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_529_54
.Lcall_prolog_α_529_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_529_54
.Lcall_prolog_α_529_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_529_54: mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n177_call_prolog_α
                                                                              jmp   n164_cut_α
n163_call_prolog_β:     mov              r11, 164;                            jmp   n177_call_prolog_α
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_cut_bx, @function
n164_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_cut_α:             mov              r11, 165;                            jmp   n165_var_ref_α
                        .size            n164_cut_bx, .-n164_cut_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n166_call_prolog_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_call_prolog_bx, @function
n166_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_prolog_α:     mov              r11, 167
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn534: .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn534]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n167_var_ref_α
n166_call_prolog_β:     mov              r11, 167;                            jmp   n277_call_prolog_α
                        .size            n166_call_prolog_bx, .-n166_call_prolog_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n168_var_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n169_lit_integer_α
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_539_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n170_call_prolog_α
.Llit_integer_α_539_0:  .quad            1
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_call_prolog_bx, @function
n170_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_prolog_α:     mov              r11, 171
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3080], rax
                        lea              rdi, [rsp + 3072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n171_call_prolog_α
n170_call_prolog_β:     mov              r11, 171;                            jmp   n277_call_prolog_α
                        .size            n170_call_prolog_bx, .-n170_call_prolog_bx
                        .type            n171_call_prolog_bx, @function
n171_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_prolog_α:     mov              r11, 172
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n172_var_ref_α
n171_call_prolog_β:     mov              r11, 172;                            jmp   n277_call_prolog_α
                        .size            n171_call_prolog_bx, .-n171_call_prolog_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n174_var_ref_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_var_ref_bx, @function
n174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n175_call_proc_staged_α
                        .size            n174_var_ref_bx, .-n174_var_ref_bx
                        .type            n175_call_proc_staged_bx, @function
n175_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 176
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_549_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lcall_proc_staged_α_549_29:
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n176_move_label_α
n175_call_proc_staged_β:
                        mov              r11, 176;                            jmp   n277_call_prolog_α
.Lcall_proc_staged_β_549_0:
                        .quad            .Lcall_proc_staged_β_549_0_s
.Lcall_proc_staged_β_549_0_s:
                        .string          "d/3"
                        .size            n175_call_proc_staged_bx, .-n175_call_proc_staged_bx
                        .type            n176_move_label_bx, @function
n176_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_move_label_α:      mov              r11, 177
                        lea              rax, [rip + n175_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n176_move_label_bx, .-n176_move_label_bx
                        .type            n177_call_prolog_bx, @function
n177_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_prolog_α:     mov              r11, 178
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 104]
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n178_var_ref_α
n177_call_prolog_β:     mov              r11, 178;                            jmp   d$2F3_ω
                        .size            n177_call_prolog_bx, .-n177_call_prolog_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n179_lit_integer_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_555_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n180_lit_string_α
.Llit_integer_α_555_0:  .quad            260
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_lit_string_bx, @function
n180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_556_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n181_call_prolog_α
.Llit_string_α_556_0:   .quad            .Llit_string_α_556_0_s
.Llit_string_α_556_0_s: .string          "-"
                        .size            n180_lit_string_bx, .-n180_lit_string_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 182
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        lea              rdi, [rsp + 2736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n202_var_ref_α
                                                                              jmp   n182_var_ref_α
n181_call_prolog_β:     mov              r11, 182;                            jmp   n202_var_ref_α
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n183_lit_string_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_lit_string_bx, @function
n183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_560_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n184_var_ref_α
.Llit_string_α_560_0:   .quad            .Llit_string_α_560_0_s
.Llit_string_α_560_0_s: .string          "-"
                        .size            n183_lit_string_bx, .-n183_lit_string_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n185_call_prolog_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_call_prolog_bx, @function
n185_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_prolog_α:     mov              r11, 186
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n186_call_prolog_α
n185_call_prolog_β:     mov              r11, 186;                            jmp   n201_call_prolog_α
                        .size            n185_call_prolog_bx, .-n185_call_prolog_bx
                        .type            n186_call_prolog_bx, @function
n186_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_prolog_α:     mov              r11, 187
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        lea              r8, [rsp + 2576]
.Lcall_prolog_α_564_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_564_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_564_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_564_40
.Lcall_prolog_α_564_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_564_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_564_40
.Lcall_prolog_α_564_56: cmp              al, 72;                              jne   .Lcall_prolog_α_564_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_564_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_564_40
.Lcall_prolog_α_564_41: lea              r9, [rsp + 2592]
.Lcall_prolog_α_564_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_564_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_564_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_564_42
.Lcall_prolog_α_564_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_564_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_564_42
.Lcall_prolog_α_564_58: cmp              al, 72;                              jne   .Lcall_prolog_α_564_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_564_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_564_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_564_42
.Lcall_prolog_α_564_43: cmp              r8, r9;                              je    .Lcall_prolog_α_564_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_564_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_564_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_564_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_564_44
                                                                              jmp   .Lcall_prolog_α_564_45
.Lcall_prolog_α_564_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_564_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_564_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_564_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_564_53
                                                                              jmp   .Lcall_prolog_α_564_46
.Lcall_prolog_α_564_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_564_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_564_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_564_51
.Lcall_prolog_α_564_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_564_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_564_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_564_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_564_47
                                                                              jmp   .Lcall_prolog_α_564_48
.Lcall_prolog_α_564_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_564_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_564_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_564_51
.Lcall_prolog_α_564_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_564_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_564_53
                                                                              jmp   .Lcall_prolog_α_564_52
.Lcall_prolog_α_564_49: cmp              dl, 80;                              je    .Lcall_prolog_α_564_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_564_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_564_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_564_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_564_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_564_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_564_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_564_51
                                                                              jmp   .Lcall_prolog_α_564_52
.Lcall_prolog_α_564_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_564_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_564_53
.Lcall_prolog_α_564_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_564_54
.Lcall_prolog_α_564_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_564_54
.Lcall_prolog_α_564_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_564_54: mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n187_var_ref_α
n186_call_prolog_β:     mov              r11, 187;                            jmp   n201_call_prolog_α
                        .size            n186_call_prolog_bx, .-n186_call_prolog_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n189_call_prolog_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_call_prolog_bx, @function
n189_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        lea              r8, [rsp + 2496]
.Lcall_prolog_α_569_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_569_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_569_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_569_40
.Lcall_prolog_α_569_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_569_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_569_40
.Lcall_prolog_α_569_56: cmp              al, 72;                              jne   .Lcall_prolog_α_569_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_569_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_569_40
.Lcall_prolog_α_569_41: lea              r9, [rsp + 2512]
.Lcall_prolog_α_569_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_569_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_569_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_569_42
.Lcall_prolog_α_569_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_569_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_569_42
.Lcall_prolog_α_569_58: cmp              al, 72;                              jne   .Lcall_prolog_α_569_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_569_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_569_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_569_42
.Lcall_prolog_α_569_43: cmp              r8, r9;                              je    .Lcall_prolog_α_569_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_569_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_569_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_569_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_569_44
                                                                              jmp   .Lcall_prolog_α_569_45
.Lcall_prolog_α_569_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_569_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_569_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_569_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_569_53
                                                                              jmp   .Lcall_prolog_α_569_46
.Lcall_prolog_α_569_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_569_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_569_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_569_51
.Lcall_prolog_α_569_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_569_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_569_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_569_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_569_47
                                                                              jmp   .Lcall_prolog_α_569_48
.Lcall_prolog_α_569_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_569_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_569_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_569_51
.Lcall_prolog_α_569_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_569_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_569_53
                                                                              jmp   .Lcall_prolog_α_569_52
.Lcall_prolog_α_569_49: cmp              dl, 80;                              je    .Lcall_prolog_α_569_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_569_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_569_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_569_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_569_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_569_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_569_51
                                                                              jmp   .Lcall_prolog_α_569_52
.Lcall_prolog_α_569_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_569_53
.Lcall_prolog_α_569_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_569_54
.Lcall_prolog_α_569_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_569_54
.Lcall_prolog_α_569_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_569_54: mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n190_var_ref_α
n189_call_prolog_β:     mov              r11, 190;                            jmp   n201_call_prolog_α
                        .size            n189_call_prolog_bx, .-n189_call_prolog_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n191_lit_string_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_lit_string_bx, @function
n191_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_572_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n192_var_ref_α
.Llit_string_α_572_0:   .quad            .Llit_string_α_572_0_s
.Llit_string_α_572_0_s: .string          "-"
                        .size            n191_lit_string_bx, .-n191_lit_string_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n193_call_prolog_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_call_prolog_bx, @function
n193_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_prolog_α:     mov              r11, 194
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        lea              rdi, [rsp + 2416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n194_call_prolog_α
n193_call_prolog_β:     mov              r11, 194;                            jmp   n201_call_prolog_α
                        .size            n193_call_prolog_bx, .-n193_call_prolog_bx
                        .type            n194_call_prolog_bx, @function
n194_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_prolog_α:     mov              r11, 195
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        lea              r8, [rsp + 2336]
.Lcall_prolog_α_576_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_576_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_576_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_576_40
.Lcall_prolog_α_576_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_576_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_576_40
.Lcall_prolog_α_576_56: cmp              al, 72;                              jne   .Lcall_prolog_α_576_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_576_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_576_40
.Lcall_prolog_α_576_41: lea              r9, [rsp + 2352]
.Lcall_prolog_α_576_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_576_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_576_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_576_42
.Lcall_prolog_α_576_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_576_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_576_42
.Lcall_prolog_α_576_58: cmp              al, 72;                              jne   .Lcall_prolog_α_576_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_576_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_576_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_576_42
.Lcall_prolog_α_576_43: cmp              r8, r9;                              je    .Lcall_prolog_α_576_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_576_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_576_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_576_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_576_44
                                                                              jmp   .Lcall_prolog_α_576_45
.Lcall_prolog_α_576_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_576_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_576_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_576_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_576_53
                                                                              jmp   .Lcall_prolog_α_576_46
.Lcall_prolog_α_576_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_576_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_576_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_576_51
.Lcall_prolog_α_576_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_576_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_576_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_576_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_576_47
                                                                              jmp   .Lcall_prolog_α_576_48
.Lcall_prolog_α_576_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_576_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_576_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_576_51
.Lcall_prolog_α_576_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_576_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_576_53
                                                                              jmp   .Lcall_prolog_α_576_52
.Lcall_prolog_α_576_49: cmp              dl, 80;                              je    .Lcall_prolog_α_576_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_576_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_576_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_576_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_576_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_576_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_576_51
                                                                              jmp   .Lcall_prolog_α_576_52
.Lcall_prolog_α_576_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_576_53
.Lcall_prolog_α_576_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_576_54
.Lcall_prolog_α_576_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_576_54
.Lcall_prolog_α_576_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_576_54: mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n195_cut_α
n194_call_prolog_β:     mov              r11, 195;                            jmp   n201_call_prolog_α
                        .size            n194_call_prolog_bx, .-n194_call_prolog_bx
                        .type            n195_cut_bx, @function
n195_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_cut_α:             mov              r11, 196;                            jmp   n196_var_ref_α
                        .size            n195_cut_bx, .-n195_cut_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n198_var_ref_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n199_call_proc_staged_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_call_proc_staged_bx, @function
n199_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        mov              r11, 200
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_585_2
.Lcall_proc_staged_α_585_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_585_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lcall_proc_staged_α_585_29:
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n200_move_label_α
n199_call_proc_staged_β:
                        mov              r11, 200;                            jmp   n277_call_prolog_α
.Lcall_proc_staged_β_585_0:
                        .quad            .Lcall_proc_staged_β_585_0_s
.Lcall_proc_staged_β_585_0_s:
                        .string          "d/3"
                        .size            n199_call_proc_staged_bx, .-n199_call_proc_staged_bx
                        .type            n200_move_label_bx, @function
n200_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_move_label_α:      mov              r11, 201
                        lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n200_move_label_bx, .-n200_move_label_bx
                        .type            n201_call_prolog_bx, @function
n201_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n202_var_ref_α
n201_call_prolog_β:     mov              r11, 202;                            jmp   d$2F3_ω
                        .size            n201_call_prolog_bx, .-n201_call_prolog_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n203_lit_integer_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_591_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n204_lit_string_α
.Llit_integer_α_591_0:  .quad            260
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_lit_string_bx, @function
n204_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_592_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n205_call_prolog_α
.Llit_string_α_592_0:   .quad            .Llit_string_α_592_0_s
.Llit_string_α_592_0_s: .string          "exp"
                        .size            n204_lit_string_bx, .-n204_lit_string_bx
                        .type            n205_call_prolog_bx, @function
n205_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_prolog_α:     mov              r11, 206
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n229_var_ref_α
                                                                              jmp   n206_var_ref_α
n205_call_prolog_β:     mov              r11, 206;                            jmp   n229_var_ref_α
                        .size            n205_call_prolog_bx, .-n205_call_prolog_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n207_lit_string_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_lit_string_bx, @function
n207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_596_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n208_var_ref_α
.Llit_string_α_596_0:   .quad            .Llit_string_α_596_0_s
.Llit_string_α_596_0_s: .string          "exp"
                        .size            n207_lit_string_bx, .-n207_lit_string_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n209_call_prolog_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_call_prolog_bx, @function
n209_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_prolog_α:     mov              r11, 210
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n228_call_prolog_α
                                                                              jmp   n210_call_prolog_α
n209_call_prolog_β:     mov              r11, 210;                            jmp   n228_call_prolog_α
                        .size            n209_call_prolog_bx, .-n209_call_prolog_bx
                        .type            n210_call_prolog_bx, @function
n210_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_prolog_α:     mov              r11, 211
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        lea              r8, [rsp + 1904]
.Lcall_prolog_α_600_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_600_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_600_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_600_40
.Lcall_prolog_α_600_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_600_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_600_40
.Lcall_prolog_α_600_56: cmp              al, 72;                              jne   .Lcall_prolog_α_600_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_600_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_600_40
.Lcall_prolog_α_600_41: lea              r9, [rsp + 1920]
.Lcall_prolog_α_600_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_600_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_600_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_600_42
.Lcall_prolog_α_600_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_600_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_600_42
.Lcall_prolog_α_600_58: cmp              al, 72;                              jne   .Lcall_prolog_α_600_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_600_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_600_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_600_42
.Lcall_prolog_α_600_43: cmp              r8, r9;                              je    .Lcall_prolog_α_600_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_600_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_600_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_600_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_600_44
                                                                              jmp   .Lcall_prolog_α_600_45
.Lcall_prolog_α_600_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_600_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_600_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_600_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_600_53
                                                                              jmp   .Lcall_prolog_α_600_46
.Lcall_prolog_α_600_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_600_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_600_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_600_51
.Lcall_prolog_α_600_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_600_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_600_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_600_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_600_47
                                                                              jmp   .Lcall_prolog_α_600_48
.Lcall_prolog_α_600_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_600_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_600_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_600_51
.Lcall_prolog_α_600_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_600_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_600_53
                                                                              jmp   .Lcall_prolog_α_600_52
.Lcall_prolog_α_600_49: cmp              dl, 80;                              je    .Lcall_prolog_α_600_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_600_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_600_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_600_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_600_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_600_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_600_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_600_51
                                                                              jmp   .Lcall_prolog_α_600_52
.Lcall_prolog_α_600_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_600_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_600_53
.Lcall_prolog_α_600_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_600_54
.Lcall_prolog_α_600_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_600_54
.Lcall_prolog_α_600_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_600_54: mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n228_call_prolog_α
                                                                              jmp   n211_var_ref_α
n210_call_prolog_β:     mov              r11, 211;                            jmp   n228_call_prolog_α
                        .size            n210_call_prolog_bx, .-n210_call_prolog_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n212_var_ref_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n213_call_prolog_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_call_prolog_bx, @function
n213_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        lea              r8, [rsp + 1824]
.Lcall_prolog_α_605_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_605_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_605_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_605_40
.Lcall_prolog_α_605_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_605_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_605_40
.Lcall_prolog_α_605_56: cmp              al, 72;                              jne   .Lcall_prolog_α_605_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_605_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_605_40
.Lcall_prolog_α_605_41: lea              r9, [rsp + 1840]
.Lcall_prolog_α_605_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_605_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_605_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_605_42
.Lcall_prolog_α_605_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_605_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_605_42
.Lcall_prolog_α_605_58: cmp              al, 72;                              jne   .Lcall_prolog_α_605_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_605_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_605_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_605_42
.Lcall_prolog_α_605_43: cmp              r8, r9;                              je    .Lcall_prolog_α_605_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_605_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_605_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_605_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_605_44
                                                                              jmp   .Lcall_prolog_α_605_45
.Lcall_prolog_α_605_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_605_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_605_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_605_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_605_53
                                                                              jmp   .Lcall_prolog_α_605_46
.Lcall_prolog_α_605_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_605_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_605_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_605_51
.Lcall_prolog_α_605_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_605_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_605_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_605_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_605_47
                                                                              jmp   .Lcall_prolog_α_605_48
.Lcall_prolog_α_605_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_605_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_605_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_605_51
.Lcall_prolog_α_605_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_605_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_605_53
                                                                              jmp   .Lcall_prolog_α_605_52
.Lcall_prolog_α_605_49: cmp              dl, 80;                              je    .Lcall_prolog_α_605_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_605_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_605_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_605_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_605_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_605_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_605_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_605_51
                                                                              jmp   .Lcall_prolog_α_605_52
.Lcall_prolog_α_605_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_605_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_605_53
.Lcall_prolog_α_605_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_605_54
.Lcall_prolog_α_605_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_605_54
.Lcall_prolog_α_605_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_605_54: mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n228_call_prolog_α
                                                                              jmp   n214_var_ref_α
n213_call_prolog_β:     mov              r11, 214;                            jmp   n228_call_prolog_α
                        .size            n213_call_prolog_bx, .-n213_call_prolog_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n215_lit_string_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_608_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n216_lit_string_α
.Llit_string_α_608_0:   .quad            .Llit_string_α_608_0_s
.Llit_string_α_608_0_s: .string          "*"
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_lit_string_bx, @function
n216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_609_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n217_var_ref_α
.Llit_string_α_609_0:   .quad            .Llit_string_α_609_0_s
.Llit_string_α_609_0_s: .string          "exp"
                        .size            n216_lit_string_bx, .-n216_lit_string_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n218_call_prolog_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_prolog_bx, @function
n218_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_prolog_α:     mov              r11, 219
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        lea              rdi, [rsp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n219_var_ref_α
n218_call_prolog_β:     mov              r11, 219;                            jmp   d$2F3_ω
                        .size            n218_call_prolog_bx, .-n218_call_prolog_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n220_call_prolog_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_prolog_bx, @function
n220_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_prolog_α:     mov              r11, 221
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n228_call_prolog_α
                                                                              jmp   n221_call_prolog_α
n220_call_prolog_β:     mov              r11, 221;                            jmp   n228_call_prolog_α
                        .size            n220_call_prolog_bx, .-n220_call_prolog_bx
                        .type            n221_call_prolog_bx, @function
n221_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_prolog_α:     mov              r11, 222
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        lea              r8, [rsp + 1552]
.Lcall_prolog_α_616_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_616_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_616_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_616_40
.Lcall_prolog_α_616_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_616_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_616_40
.Lcall_prolog_α_616_56: cmp              al, 72;                              jne   .Lcall_prolog_α_616_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_616_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_616_40
.Lcall_prolog_α_616_41: lea              r9, [rsp + 1568]
.Lcall_prolog_α_616_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_616_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_616_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_616_42
.Lcall_prolog_α_616_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_616_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_616_42
.Lcall_prolog_α_616_58: cmp              al, 72;                              jne   .Lcall_prolog_α_616_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_616_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_616_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_616_42
.Lcall_prolog_α_616_43: cmp              r8, r9;                              je    .Lcall_prolog_α_616_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_616_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_616_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_616_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_616_44
                                                                              jmp   .Lcall_prolog_α_616_45
.Lcall_prolog_α_616_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_616_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_616_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_616_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_616_53
                                                                              jmp   .Lcall_prolog_α_616_46
.Lcall_prolog_α_616_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_616_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_616_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_616_51
.Lcall_prolog_α_616_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_616_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_616_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_616_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_616_47
                                                                              jmp   .Lcall_prolog_α_616_48
.Lcall_prolog_α_616_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_616_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_616_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_616_51
.Lcall_prolog_α_616_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_616_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_616_53
                                                                              jmp   .Lcall_prolog_α_616_52
.Lcall_prolog_α_616_49: cmp              dl, 80;                              je    .Lcall_prolog_α_616_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_616_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_616_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_616_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_616_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_616_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_616_51
                                                                              jmp   .Lcall_prolog_α_616_52
.Lcall_prolog_α_616_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_616_53
.Lcall_prolog_α_616_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_616_54
.Lcall_prolog_α_616_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_616_54
.Lcall_prolog_α_616_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_616_54: mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n228_call_prolog_α
                                                                              jmp   n222_cut_α
n221_call_prolog_β:     mov              r11, 222;                            jmp   n228_call_prolog_α
                        .size            n221_call_prolog_bx, .-n221_call_prolog_bx
                        .type            n222_cut_bx, @function
n222_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_cut_α:             mov              r11, 223;                            jmp   n223_var_ref_α
                        .size            n222_cut_bx, .-n222_cut_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n224_var_ref_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_var_ref_bx, @function
n224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n225_var_ref_α
                        .size            n224_var_ref_bx, .-n224_var_ref_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n226_call_proc_staged_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_call_proc_staged_bx, @function
n226_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        mov              r11, 227
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_625_2
.Lcall_proc_staged_α_625_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_625_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lcall_proc_staged_α_625_29:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n227_move_label_α
n226_call_proc_staged_β:
                        mov              r11, 227;                            jmp   n277_call_prolog_α
.Lcall_proc_staged_β_625_0:
                        .quad            .Lcall_proc_staged_β_625_0_s
.Lcall_proc_staged_β_625_0_s:
                        .string          "d/3"
                        .size            n226_call_proc_staged_bx, .-n226_call_proc_staged_bx
                        .type            n227_move_label_bx, @function
n227_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_move_label_α:      mov              r11, 228
                        lea              rax, [rip + n226_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n227_move_label_bx, .-n227_move_label_bx
                        .type            n228_call_prolog_bx, @function
n228_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_prolog_α:     mov              r11, 229
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n229_var_ref_α
n228_call_prolog_β:     mov              r11, 229;                            jmp   d$2F3_ω
                        .size            n228_call_prolog_bx, .-n228_call_prolog_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n230_lit_integer_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_631_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n231_lit_string_α
.Llit_integer_α_631_0:  .quad            260
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_lit_string_bx, @function
n231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 232
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_632_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n232_call_prolog_α
.Llit_string_α_632_0:   .quad            .Llit_string_α_632_0_s
.Llit_string_α_632_0_s: .string          "log"
                        .size            n231_lit_string_bx, .-n231_lit_string_bx
                        .type            n232_call_prolog_bx, @function
n232_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_prolog_α:     mov              r11, 233
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n254_var_ref_α
                                                                              jmp   n233_var_ref_α
n232_call_prolog_β:     mov              r11, 233;                            jmp   n254_var_ref_α
                        .size            n232_call_prolog_bx, .-n232_call_prolog_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n234_lit_string_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_lit_string_bx, @function
n234_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_636_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n235_var_ref_α
.Llit_string_α_636_0:   .quad            .Llit_string_α_636_0_s
.Llit_string_α_636_0_s: .string          "log"
                        .size            n234_lit_string_bx, .-n234_lit_string_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n236_call_prolog_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_call_prolog_bx, @function
n236_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_prolog_α:     mov              r11, 237
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 2
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
                        cmp              al, 104;                             je    n253_call_prolog_α
                                                                              jmp   n237_call_prolog_α
n236_call_prolog_β:     mov              r11, 237;                            jmp   n253_call_prolog_α
                        .size            n236_call_prolog_bx, .-n236_call_prolog_bx
                        .type            n237_call_prolog_bx, @function
n237_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_prolog_α:     mov              r11, 238
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lcall_prolog_α_640_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_640_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_640_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_640_40
.Lcall_prolog_α_640_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_640_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_640_40
.Lcall_prolog_α_640_56: cmp              al, 72;                              jne   .Lcall_prolog_α_640_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_640_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_640_40
.Lcall_prolog_α_640_41: lea              r9, [rsp + 1136]
.Lcall_prolog_α_640_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_640_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_640_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_640_42
.Lcall_prolog_α_640_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_640_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_640_42
.Lcall_prolog_α_640_58: cmp              al, 72;                              jne   .Lcall_prolog_α_640_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_640_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_640_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_640_42
.Lcall_prolog_α_640_43: cmp              r8, r9;                              je    .Lcall_prolog_α_640_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_640_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_640_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_640_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_640_44
                                                                              jmp   .Lcall_prolog_α_640_45
.Lcall_prolog_α_640_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_640_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_640_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_640_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_640_53
                                                                              jmp   .Lcall_prolog_α_640_46
.Lcall_prolog_α_640_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_640_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_640_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_640_51
.Lcall_prolog_α_640_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_640_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_640_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_640_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_640_47
                                                                              jmp   .Lcall_prolog_α_640_48
.Lcall_prolog_α_640_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_640_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_640_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_640_51
.Lcall_prolog_α_640_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_640_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_640_53
                                                                              jmp   .Lcall_prolog_α_640_52
.Lcall_prolog_α_640_49: cmp              dl, 80;                              je    .Lcall_prolog_α_640_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_640_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_640_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_640_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_640_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_640_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_640_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_640_51
                                                                              jmp   .Lcall_prolog_α_640_52
.Lcall_prolog_α_640_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_640_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_640_53
.Lcall_prolog_α_640_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_640_54
.Lcall_prolog_α_640_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_640_54
.Lcall_prolog_α_640_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_640_54: mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n253_call_prolog_α
                                                                              jmp   n238_var_ref_α
n237_call_prolog_β:     mov              r11, 238;                            jmp   n253_call_prolog_α
                        .size            n237_call_prolog_bx, .-n237_call_prolog_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n239_var_ref_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_var_ref_bx, @function
n239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n240_call_prolog_α
                        .size            n239_var_ref_bx, .-n239_var_ref_bx
                        .type            n240_call_prolog_bx, @function
n240_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_prolog_α:     mov              r11, 241
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
.Lcall_prolog_α_645_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_645_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_645_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_645_40
.Lcall_prolog_α_645_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_645_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_645_40
.Lcall_prolog_α_645_56: cmp              al, 72;                              jne   .Lcall_prolog_α_645_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_645_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_645_40
.Lcall_prolog_α_645_41: lea              r9, [rsp + 1056]
.Lcall_prolog_α_645_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_645_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_645_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_645_42
.Lcall_prolog_α_645_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_645_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_645_42
.Lcall_prolog_α_645_58: cmp              al, 72;                              jne   .Lcall_prolog_α_645_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_645_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_645_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_645_42
.Lcall_prolog_α_645_43: cmp              r8, r9;                              je    .Lcall_prolog_α_645_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_645_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_645_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_645_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_645_44
                                                                              jmp   .Lcall_prolog_α_645_45
.Lcall_prolog_α_645_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_645_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_645_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_645_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_645_53
                                                                              jmp   .Lcall_prolog_α_645_46
.Lcall_prolog_α_645_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_645_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_645_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_645_51
.Lcall_prolog_α_645_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_645_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_645_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_645_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_645_47
                                                                              jmp   .Lcall_prolog_α_645_48
.Lcall_prolog_α_645_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_645_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_645_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_645_51
.Lcall_prolog_α_645_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_645_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_645_53
                                                                              jmp   .Lcall_prolog_α_645_52
.Lcall_prolog_α_645_49: cmp              dl, 80;                              je    .Lcall_prolog_α_645_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_645_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_645_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_645_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_645_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_645_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_645_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_645_51
                                                                              jmp   .Lcall_prolog_α_645_52
.Lcall_prolog_α_645_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_645_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_645_53
.Lcall_prolog_α_645_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_645_54
.Lcall_prolog_α_645_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_645_54
.Lcall_prolog_α_645_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_645_54: mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n253_call_prolog_α
                                                                              jmp   n241_var_ref_α
n240_call_prolog_β:     mov              r11, 241;                            jmp   n253_call_prolog_α
                        .size            n240_call_prolog_bx, .-n240_call_prolog_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n242_lit_string_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_string_bx, @function
n242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_648_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n243_var_ref_α
.Llit_string_α_648_0:   .quad            .Llit_string_α_648_0_s
.Llit_string_α_648_0_s: .string          "/"
                        .size            n242_lit_string_bx, .-n242_lit_string_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n244_var_ref_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n245_call_prolog_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_call_prolog_bx, @function
n245_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_prolog_α:     mov              r11, 246
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 904]
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
                        cmp              al, 104;                             je    n253_call_prolog_α
                                                                              jmp   n246_call_prolog_α
n245_call_prolog_β:     mov              r11, 246;                            jmp   n253_call_prolog_α
                        .size            n245_call_prolog_bx, .-n245_call_prolog_bx
                        .type            n246_call_prolog_bx, @function
n246_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_prolog_α:     mov              r11, 247
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
.Lcall_prolog_α_654_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_654_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_654_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_654_40
.Lcall_prolog_α_654_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_654_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_654_40
.Lcall_prolog_α_654_56: cmp              al, 72;                              jne   .Lcall_prolog_α_654_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_654_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_654_40
.Lcall_prolog_α_654_41: lea              r9, [rsp + 864]
.Lcall_prolog_α_654_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_654_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_654_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_654_42
.Lcall_prolog_α_654_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_654_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_654_42
.Lcall_prolog_α_654_58: cmp              al, 72;                              jne   .Lcall_prolog_α_654_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_654_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_654_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_654_42
.Lcall_prolog_α_654_43: cmp              r8, r9;                              je    .Lcall_prolog_α_654_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_654_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_654_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_654_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_654_44
                                                                              jmp   .Lcall_prolog_α_654_45
.Lcall_prolog_α_654_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_654_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_654_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_654_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_654_53
                                                                              jmp   .Lcall_prolog_α_654_46
.Lcall_prolog_α_654_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_654_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_654_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_654_51
.Lcall_prolog_α_654_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_654_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_654_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_654_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_654_47
                                                                              jmp   .Lcall_prolog_α_654_48
.Lcall_prolog_α_654_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_654_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_654_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_654_51
.Lcall_prolog_α_654_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_654_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_654_53
                                                                              jmp   .Lcall_prolog_α_654_52
.Lcall_prolog_α_654_49: cmp              dl, 80;                              je    .Lcall_prolog_α_654_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_654_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_654_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_654_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_654_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_654_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_654_51
                                                                              jmp   .Lcall_prolog_α_654_52
.Lcall_prolog_α_654_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_654_53
.Lcall_prolog_α_654_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_654_54
.Lcall_prolog_α_654_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_654_54
.Lcall_prolog_α_654_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_654_54: mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n253_call_prolog_α
                                                                              jmp   n247_cut_α
n246_call_prolog_β:     mov              r11, 247;                            jmp   n253_call_prolog_α
                        .size            n246_call_prolog_bx, .-n246_call_prolog_bx
                        .type            n247_cut_bx, @function
n247_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_cut_α:             mov              r11, 248;                            jmp   n248_var_ref_α
                        .size            n247_cut_bx, .-n247_cut_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n249_var_ref_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n250_var_ref_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n251_call_proc_staged_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_call_proc_staged_bx, @function
n251_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        mov              r11, 252
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_663_2
.Lcall_proc_staged_α_663_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_663_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lcall_proc_staged_α_663_29:
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n252_move_label_α
n251_call_proc_staged_β:
                        mov              r11, 252;                            jmp   n277_call_prolog_α
.Lcall_proc_staged_β_663_0:
                        .quad            .Lcall_proc_staged_β_663_0_s
.Lcall_proc_staged_β_663_0_s:
                        .string          "d/3"
                        .size            n251_call_proc_staged_bx, .-n251_call_proc_staged_bx
                        .type            n252_move_label_bx, @function
n252_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_move_label_α:      mov              r11, 253
                        lea              rax, [rip + n251_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n252_move_label_bx, .-n252_move_label_bx
                        .type            n253_call_prolog_bx, @function
n253_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_prolog_α:     mov              r11, 254
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n254_var_ref_α
n253_call_prolog_β:     mov              r11, 254;                            jmp   d$2F3_ω
                        .size            n253_call_prolog_bx, .-n253_call_prolog_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n255_var_ref_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n256_call_prolog_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_call_prolog_bx, @function
n256_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_prolog_α:     mov              r11, 257
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
.Lcall_prolog_α_671_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_671_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_671_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_671_40
.Lcall_prolog_α_671_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_671_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_671_40
.Lcall_prolog_α_671_56: cmp              al, 72;                              jne   .Lcall_prolog_α_671_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_671_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_671_40
.Lcall_prolog_α_671_41: lea              r9, [rsp + 624]
.Lcall_prolog_α_671_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_671_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_671_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_671_42
.Lcall_prolog_α_671_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_671_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_671_42
.Lcall_prolog_α_671_58: cmp              al, 72;                              jne   .Lcall_prolog_α_671_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_671_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_671_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_671_42
.Lcall_prolog_α_671_43: cmp              r8, r9;                              je    .Lcall_prolog_α_671_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_671_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_671_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_671_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_671_44
                                                                              jmp   .Lcall_prolog_α_671_45
.Lcall_prolog_α_671_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_671_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_671_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_671_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_671_53
                                                                              jmp   .Lcall_prolog_α_671_46
.Lcall_prolog_α_671_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_671_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_671_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_671_51
.Lcall_prolog_α_671_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_671_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_671_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_671_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_671_47
                                                                              jmp   .Lcall_prolog_α_671_48
.Lcall_prolog_α_671_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_671_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_671_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_671_51
.Lcall_prolog_α_671_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_671_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_671_53
                                                                              jmp   .Lcall_prolog_α_671_52
.Lcall_prolog_α_671_49: cmp              dl, 80;                              je    .Lcall_prolog_α_671_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_671_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_671_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_671_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_671_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_671_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_671_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_671_51
                                                                              jmp   .Lcall_prolog_α_671_52
.Lcall_prolog_α_671_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_671_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_671_53
.Lcall_prolog_α_671_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_671_54
.Lcall_prolog_α_671_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_671_54
.Lcall_prolog_α_671_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_671_54: mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n265_call_prolog_α
                                                                              jmp   n257_var_ref_α
n256_call_prolog_β:     mov              r11, 257;                            jmp   n265_call_prolog_α
                        .size            n256_call_prolog_bx, .-n256_call_prolog_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n259_call_prolog_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_call_prolog_bx, @function
n259_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_prolog_α:     mov              r11, 260
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
.Lcall_prolog_α_676_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_676_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_676_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_676_40
.Lcall_prolog_α_676_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_676_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_676_40
.Lcall_prolog_α_676_56: cmp              al, 72;                              jne   .Lcall_prolog_α_676_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_676_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_676_40
.Lcall_prolog_α_676_41: lea              r9, [rsp + 544]
.Lcall_prolog_α_676_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_676_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_676_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_676_42
.Lcall_prolog_α_676_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_676_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_676_42
.Lcall_prolog_α_676_58: cmp              al, 72;                              jne   .Lcall_prolog_α_676_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_676_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_676_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_676_42
.Lcall_prolog_α_676_43: cmp              r8, r9;                              je    .Lcall_prolog_α_676_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_676_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_676_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_676_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_676_44
                                                                              jmp   .Lcall_prolog_α_676_45
.Lcall_prolog_α_676_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_676_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_676_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_676_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_676_53
                                                                              jmp   .Lcall_prolog_α_676_46
.Lcall_prolog_α_676_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_676_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_676_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_676_51
.Lcall_prolog_α_676_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_676_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_676_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_676_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_676_47
                                                                              jmp   .Lcall_prolog_α_676_48
.Lcall_prolog_α_676_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_676_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_676_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_676_51
.Lcall_prolog_α_676_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_676_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_676_53
                                                                              jmp   .Lcall_prolog_α_676_52
.Lcall_prolog_α_676_49: cmp              dl, 80;                              je    .Lcall_prolog_α_676_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_676_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_676_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_676_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_676_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_676_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_676_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_676_51
                                                                              jmp   .Lcall_prolog_α_676_52
.Lcall_prolog_α_676_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_676_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_676_53
.Lcall_prolog_α_676_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_676_54
.Lcall_prolog_α_676_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_676_54
.Lcall_prolog_α_676_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_676_54: mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n265_call_prolog_α
                                                                              jmp   n260_var_ref_α
n259_call_prolog_β:     mov              r11, 260;                            jmp   n265_call_prolog_α
                        .size            n259_call_prolog_bx, .-n259_call_prolog_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n261_lit_integer_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_lit_integer_bx, @function
n261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_679_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n262_call_prolog_α
.Llit_integer_α_679_0:  .quad            1
                        .size            n261_lit_integer_bx, .-n261_lit_integer_bx
                        .type            n262_call_prolog_bx, @function
n262_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n265_call_prolog_α
                                                                              jmp   n263_cut_α
n262_call_prolog_β:     mov              r11, 263;                            jmp   n265_call_prolog_α
                        .size            n262_call_prolog_bx, .-n262_call_prolog_bx
                        .type            n263_cut_bx, @function
n263_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_cut_α:             mov              r11, 264;                            jmp   n264_move_label_α
                        .size            n263_cut_bx, .-n263_cut_bx
                        .type            n264_move_label_bx, @function
n264_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_move_label_α:      mov              r11, 265
                        lea              rax, [rip + n265_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n264_move_label_bx, .-n264_move_label_bx
                        .type            n265_call_prolog_bx, @function
n265_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n266_var_ref_α
n265_call_prolog_β:     mov              r11, 266;                            jmp   d$2F3_ω
                        .size            n265_call_prolog_bx, .-n265_call_prolog_bx
                        .type            n266_var_ref_bx, @function
n266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n267_var_ref_α
                        .size            n266_var_ref_bx, .-n266_var_ref_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n268_call_prolog_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_call_prolog_bx, @function
n268_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_prolog_α:     mov              r11, 269
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
.Lcall_prolog_α_689_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_689_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_689_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_689_40
.Lcall_prolog_α_689_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_689_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_689_40
.Lcall_prolog_α_689_56: cmp              al, 72;                              jne   .Lcall_prolog_α_689_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_689_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_689_40
.Lcall_prolog_α_689_41: lea              r9, [rsp + 352]
.Lcall_prolog_α_689_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_689_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_689_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_689_42
.Lcall_prolog_α_689_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_689_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_689_42
.Lcall_prolog_α_689_58: cmp              al, 72;                              jne   .Lcall_prolog_α_689_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_689_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_689_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_689_42
.Lcall_prolog_α_689_43: cmp              r8, r9;                              je    .Lcall_prolog_α_689_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_689_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_689_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_689_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_689_44
                                                                              jmp   .Lcall_prolog_α_689_45
.Lcall_prolog_α_689_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_689_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_689_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_689_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_689_53
                                                                              jmp   .Lcall_prolog_α_689_46
.Lcall_prolog_α_689_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_689_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_689_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_689_51
.Lcall_prolog_α_689_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_689_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_689_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_689_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_689_47
                                                                              jmp   .Lcall_prolog_α_689_48
.Lcall_prolog_α_689_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_689_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_689_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_689_51
.Lcall_prolog_α_689_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_689_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_689_53
                                                                              jmp   .Lcall_prolog_α_689_52
.Lcall_prolog_α_689_49: cmp              dl, 80;                              je    .Lcall_prolog_α_689_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_689_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_689_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_689_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_689_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_689_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_689_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_689_51
                                                                              jmp   .Lcall_prolog_α_689_52
.Lcall_prolog_α_689_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_689_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_689_53
.Lcall_prolog_α_689_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_689_54
.Lcall_prolog_α_689_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_689_54
.Lcall_prolog_α_689_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_689_54: mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n269_var_ref_α
n268_call_prolog_β:     mov              r11, 269;                            jmp   n277_call_prolog_α
                        .size            n268_call_prolog_bx, .-n268_call_prolog_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n270_var_ref_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n271_call_prolog_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_call_prolog_bx, @function
n271_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_prolog_α:     mov              r11, 272
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lcall_prolog_α_694_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_694_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_694_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_694_40
.Lcall_prolog_α_694_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_694_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_694_40
.Lcall_prolog_α_694_56: cmp              al, 72;                              jne   .Lcall_prolog_α_694_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_694_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_694_40
.Lcall_prolog_α_694_41: lea              r9, [rsp + 272]
.Lcall_prolog_α_694_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_694_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_694_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_694_42
.Lcall_prolog_α_694_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_694_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_694_42
.Lcall_prolog_α_694_58: cmp              al, 72;                              jne   .Lcall_prolog_α_694_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_694_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_694_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_694_42
.Lcall_prolog_α_694_43: cmp              r8, r9;                              je    .Lcall_prolog_α_694_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_694_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_694_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_694_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_694_44
                                                                              jmp   .Lcall_prolog_α_694_45
.Lcall_prolog_α_694_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_694_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_694_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_694_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_694_53
                                                                              jmp   .Lcall_prolog_α_694_46
.Lcall_prolog_α_694_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_694_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_694_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_694_51
.Lcall_prolog_α_694_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_694_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_694_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_694_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_694_47
                                                                              jmp   .Lcall_prolog_α_694_48
.Lcall_prolog_α_694_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_694_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_694_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_694_51
.Lcall_prolog_α_694_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_694_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_694_53
                                                                              jmp   .Lcall_prolog_α_694_52
.Lcall_prolog_α_694_49: cmp              dl, 80;                              je    .Lcall_prolog_α_694_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_694_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_694_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_694_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_694_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_694_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_694_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_694_51
                                                                              jmp   .Lcall_prolog_α_694_52
.Lcall_prolog_α_694_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_694_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_694_53
.Lcall_prolog_α_694_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_694_54
.Lcall_prolog_α_694_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_694_54
.Lcall_prolog_α_694_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_694_54: mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n272_var_ref_α
n271_call_prolog_β:     mov              r11, 272;                            jmp   n277_call_prolog_α
                        .size            n271_call_prolog_bx, .-n271_call_prolog_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n273_lit_integer_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_lit_integer_bx, @function
n273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     mov              r11, 274
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_697_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n274_call_prolog_α
.Llit_integer_α_697_0:  .quad            0
                        .size            n273_lit_integer_bx, .-n273_lit_integer_bx
                        .type            n274_call_prolog_bx, @function
n274_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_prolog_α:     mov              r11, 275
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n277_call_prolog_α
                                                                              jmp   n275_move_label_α
n274_call_prolog_β:     mov              r11, 275;                            jmp   n277_call_prolog_α
                        .size            n274_call_prolog_bx, .-n274_call_prolog_bx
                        .type            n275_move_label_bx, @function
n275_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_move_label_α:      mov              r11, 276
                        lea              rax, [rip + n277_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n275_move_label_bx, .-n275_move_label_bx
                        .type            n276_disjunction_bx, @function
n276_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_disjunction_α:     mov              r11, 277
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n276_disjunction_β:     mov              r11, 277;                            jmp   d$2F3_ω
                        .size            n276_disjunction_bx, .-n276_disjunction_bx
                        .type            n277_call_prolog_bx, @function
n277_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_prolog_α:     mov              r11, 278
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ω
n277_call_prolog_β:     mov              r11, 278;                            jmp   d$2F3_ω
                        .size            n277_call_prolog_bx, .-n277_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n276_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8248]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rsp + 8256]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_dcα:
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
                        lea              rcx, [rip + .Ld$2F3_α_704_2]
                        lea              rdx, [rip + .Ld$2F3_α_704_3];        jmp   FN__d$2F3
.Ld$2F3_α_704_2:        pop              r12
                        pop              r12;                                 jmp   r12
.Ld$2F3_α_704_3:        pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rsp
                        mov              rdi, rsp
                        mov              esi, 112
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rsp + 112], rax
                        .type            n705_call_prolog_bx, @function
n705_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_call_prolog_α:     mov              r11, 279
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_709_102
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_prolog_α_709_101
.Lcall_prolog_α_709_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_709_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_709_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_709_101
.Lcall_prolog_α_709_100:
                        lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_709_101:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   n706_call_proc_staged_α
n705_call_prolog_β:     mov              r11, 279;                            jmp   top$2F0_ω
                        .size            n705_call_prolog_bx, .-n705_call_prolog_bx
                        .type            n706_call_proc_staged_bx, @function
n706_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        mov              r11, 280
                        call             times10$2F0_dcα;                     jmp   .Lcall_proc_staged_α_711_2
.Lcall_proc_staged_α_711_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_711_29
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
.Lcall_proc_staged_α_711_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n708_call_prolog_α
                                                                              jmp   n707_suspend_α
n706_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n708_call_prolog_α
.Lcall_proc_staged_β_711_0:
                        .quad            .Lcall_proc_staged_β_711_0_s
.Lcall_proc_staged_β_711_0_s:
                        .string          "times10/0"
                        .size            n706_call_proc_staged_bx, .-n706_call_proc_staged_bx
                        .type            n707_suspend_bx, @function
n707_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_suspend_α:         mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_713_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lsuspend_α_713_61:     mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n707_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n707_suspend_β:         mov              r11, 281;                            jmp   n706_call_proc_staged_β
                        .size            n707_suspend_bx, .-n707_suspend_bx
                        .type            n708_call_prolog_bx, @function
n708_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_call_prolog_α:     mov              r11, 282
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
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   top$2F0_ω
n708_call_prolog_β:     mov              r11, 282;                            jmp   top$2F0_ω
                        .size            n708_call_prolog_bx, .-n708_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n707_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltop$2F0_α_714_50
                        mov              qword ptr [rsp + 112], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Ltop$2F0_α_714_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 152]
                        add              rsp, 176;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 160]
                        add              rsp, 176;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__times10$2F0:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1264
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
times10$2F0_α_body:
                        .type            n715_call_prolog_bx, @function
n715_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_call_prolog_α:     mov              r11, 283
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_750_101
.Lcall_prolog_α_750_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_750_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_750_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_750_101
.Lcall_prolog_α_750_100:
                        lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_750_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n716_lit_string_α
n715_call_prolog_β:     mov              r11, 283;                            jmp   times10$2F0_ω
                        .size            n715_call_prolog_bx, .-n715_call_prolog_bx
                        .type            n716_lit_string_bx, @function
n716_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_751_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n717_lit_string_α
.Llit_string_α_751_0:   .quad            .Llit_string_α_751_0_s
.Llit_string_α_751_0_s: .string          "*"
                        .size            n716_lit_string_bx, .-n716_lit_string_bx
                        .type            n717_lit_string_bx, @function
n717_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_752_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n718_lit_string_α
.Llit_string_α_752_0:   .quad            .Llit_string_α_752_0_s
.Llit_string_α_752_0_s: .string          "*"
                        .size            n717_lit_string_bx, .-n717_lit_string_bx
                        .type            n718_lit_string_bx, @function
n718_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_753_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n719_lit_string_α
.Llit_string_α_753_0:   .quad            .Llit_string_α_753_0_s
.Llit_string_α_753_0_s: .string          "*"
                        .size            n718_lit_string_bx, .-n718_lit_string_bx
                        .type            n719_lit_string_bx, @function
n719_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_754_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n720_lit_string_α
.Llit_string_α_754_0:   .quad            .Llit_string_α_754_0_s
.Llit_string_α_754_0_s: .string          "*"
                        .size            n719_lit_string_bx, .-n719_lit_string_bx
                        .type            n720_lit_string_bx, @function
n720_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:      mov              r11, 288
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_755_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n721_lit_string_α
.Llit_string_α_755_0:   .quad            .Llit_string_α_755_0_s
.Llit_string_α_755_0_s: .string          "*"
                        .size            n720_lit_string_bx, .-n720_lit_string_bx
                        .type            n721_lit_string_bx, @function
n721_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_756_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n722_lit_string_α
.Llit_string_α_756_0:   .quad            .Llit_string_α_756_0_s
.Llit_string_α_756_0_s: .string          "*"
                        .size            n721_lit_string_bx, .-n721_lit_string_bx
                        .type            n722_lit_string_bx, @function
n722_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_757_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n723_lit_string_α
.Llit_string_α_757_0:   .quad            .Llit_string_α_757_0_s
.Llit_string_α_757_0_s: .string          "*"
                        .size            n722_lit_string_bx, .-n722_lit_string_bx
                        .type            n723_lit_string_bx, @function
n723_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_758_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n724_lit_string_α
.Llit_string_α_758_0:   .quad            .Llit_string_α_758_0_s
.Llit_string_α_758_0_s: .string          "*"
                        .size            n723_lit_string_bx, .-n723_lit_string_bx
                        .type            n724_lit_string_bx, @function
n724_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_759_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n725_lit_string_α
.Llit_string_α_759_0:   .quad            .Llit_string_α_759_0_s
.Llit_string_α_759_0_s: .string          "*"
                        .size            n724_lit_string_bx, .-n724_lit_string_bx
                        .type            n725_lit_string_bx, @function
n725_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_760_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n726_lit_string_α
.Llit_string_α_760_0:   .quad            .Llit_string_α_760_0_s
.Llit_string_α_760_0_s: .string          "x"
                        .size            n725_lit_string_bx, .-n725_lit_string_bx
                        .type            n726_lit_string_bx, @function
n726_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_761_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n727_call_prolog_α
.Llit_string_α_761_0:   .quad            .Llit_string_α_761_0_s
.Llit_string_α_761_0_s: .string          "x"
                        .size            n726_lit_string_bx, .-n726_lit_string_bx
                        .type            n727_call_prolog_bx, @function
n727_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_call_prolog_α:     mov              r11, 295
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
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n728_lit_string_α
n727_call_prolog_β:     mov              r11, 295;                            jmp   times10$2F0_ω
                        .size            n727_call_prolog_bx, .-n727_call_prolog_bx
                        .type            n728_lit_string_bx, @function
n728_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_763_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n729_call_prolog_α
.Llit_string_α_763_0:   .quad            .Llit_string_α_763_0_s
.Llit_string_α_763_0_s: .string          "x"
                        .size            n728_lit_string_bx, .-n728_lit_string_bx
                        .type            n729_call_prolog_bx, @function
n729_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_call_prolog_α:     mov              r11, 297
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n730_lit_string_α
n729_call_prolog_β:     mov              r11, 297;                            jmp   times10$2F0_ω
                        .size            n729_call_prolog_bx, .-n729_call_prolog_bx
                        .type            n730_lit_string_bx, @function
n730_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_765_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n731_call_prolog_α
.Llit_string_α_765_0:   .quad            .Llit_string_α_765_0_s
.Llit_string_α_765_0_s: .string          "x"
                        .size            n730_lit_string_bx, .-n730_lit_string_bx
                        .type            n731_call_prolog_bx, @function
n731_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_call_prolog_α:     mov              r11, 299
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n732_lit_string_α
n731_call_prolog_β:     mov              r11, 299;                            jmp   times10$2F0_ω
                        .size            n731_call_prolog_bx, .-n731_call_prolog_bx
                        .type            n732_lit_string_bx, @function
n732_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_767_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n733_call_prolog_α
.Llit_string_α_767_0:   .quad            .Llit_string_α_767_0_s
.Llit_string_α_767_0_s: .string          "x"
                        .size            n732_lit_string_bx, .-n732_lit_string_bx
                        .type            n733_call_prolog_bx, @function
n733_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_call_prolog_α:     mov              r11, 301
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n734_lit_string_α
n733_call_prolog_β:     mov              r11, 301;                            jmp   times10$2F0_ω
                        .size            n733_call_prolog_bx, .-n733_call_prolog_bx
                        .type            n734_lit_string_bx, @function
n734_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_769_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n735_call_prolog_α
.Llit_string_α_769_0:   .quad            .Llit_string_α_769_0_s
.Llit_string_α_769_0_s: .string          "x"
                        .size            n734_lit_string_bx, .-n734_lit_string_bx
                        .type            n735_call_prolog_bx, @function
n735_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_prolog_α:     mov              r11, 303
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n736_lit_string_α
n735_call_prolog_β:     mov              r11, 303;                            jmp   times10$2F0_ω
                        .size            n735_call_prolog_bx, .-n735_call_prolog_bx
                        .type            n736_lit_string_bx, @function
n736_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n737_call_prolog_α
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "x"
                        .size            n736_lit_string_bx, .-n736_lit_string_bx
                        .type            n737_call_prolog_bx, @function
n737_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_call_prolog_α:     mov              r11, 305
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n738_lit_string_α
n737_call_prolog_β:     mov              r11, 305;                            jmp   times10$2F0_ω
                        .size            n737_call_prolog_bx, .-n737_call_prolog_bx
                        .type            n738_lit_string_bx, @function
n738_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_773_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n739_call_prolog_α
.Llit_string_α_773_0:   .quad            .Llit_string_α_773_0_s
.Llit_string_α_773_0_s: .string          "x"
                        .size            n738_lit_string_bx, .-n738_lit_string_bx
                        .type            n739_call_prolog_bx, @function
n739_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_call_prolog_α:     mov              r11, 307
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n740_lit_string_α
n739_call_prolog_β:     mov              r11, 307;                            jmp   times10$2F0_ω
                        .size            n739_call_prolog_bx, .-n739_call_prolog_bx
                        .type            n740_lit_string_bx, @function
n740_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_775_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n741_call_prolog_α
.Llit_string_α_775_0:   .quad            .Llit_string_α_775_0_s
.Llit_string_α_775_0_s: .string          "x"
                        .size            n740_lit_string_bx, .-n740_lit_string_bx
                        .type            n741_call_prolog_bx, @function
n741_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_prolog_α:     mov              r11, 309
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 888]
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
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n742_lit_string_α
n741_call_prolog_β:     mov              r11, 309;                            jmp   times10$2F0_ω
                        .size            n741_call_prolog_bx, .-n741_call_prolog_bx
                        .type            n742_lit_string_bx, @function
n742_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_777_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n743_call_prolog_α
.Llit_string_α_777_0:   .quad            .Llit_string_α_777_0_s
.Llit_string_α_777_0_s: .string          "x"
                        .size            n742_lit_string_bx, .-n742_lit_string_bx
                        .type            n743_call_prolog_bx, @function
n743_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_call_prolog_α:     mov              r11, 311
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n749_call_prolog_α
                                                                              jmp   n744_lit_string_α
n743_call_prolog_β:     mov              r11, 311;                            jmp   n749_call_prolog_α
                        .size            n743_call_prolog_bx, .-n743_call_prolog_bx
                        .type            n744_lit_string_bx, @function
n744_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_779_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n745_var_ref_α
.Llit_string_α_779_0:   .quad            .Llit_string_α_779_0_s
.Llit_string_α_779_0_s: .string          "x"
                        .size            n744_lit_string_bx, .-n744_lit_string_bx
                        .type            n745_var_ref_bx, @function
n745_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n746_call_proc_staged_α
                        .size            n745_var_ref_bx, .-n745_var_ref_bx
                        .type            n746_call_proc_staged_bx, @function
n746_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_call_proc_staged_α:
                        mov              r11, 314
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1200]
                        lea              rcx, [rsp + 1216]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_783_2
.Lcall_proc_staged_α_783_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_783_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lcall_proc_staged_α_783_29:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n749_call_prolog_α
                                                                              jmp   n747_move_label_α
n746_call_proc_staged_β:
                        mov              r11, 314;                            jmp   n749_call_prolog_α
.Lcall_proc_staged_β_783_0:
                        .quad            .Lcall_proc_staged_β_783_0_s
.Lcall_proc_staged_β_783_0_s:
                        .string          "d/3"
                        .size            n746_call_proc_staged_bx, .-n746_call_proc_staged_bx
                        .type            n747_move_label_bx, @function
n747_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_move_label_α:      mov              r11, 315
                        lea              rax, [rip + n746_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   times10$2F0_γ
                        .size            n747_move_label_bx, .-n747_move_label_bx
                        .type            n748_disjunction_bx, @function
n748_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_disjunction_α:     mov              r11, 316
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    times10$2F0_ω
                                                                              jmp   rax
n748_disjunction_β:     mov              r11, 316;                            jmp   times10$2F0_ω
                        .size            n748_disjunction_bx, .-n748_disjunction_bx
                        .type            n749_call_prolog_bx, @function
n749_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_call_prolog_α:     mov              r11, 317
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   times10$2F0_ω
n749_call_prolog_β:     mov              r11, 317;                            jmp   times10$2F0_ω
                        .size            n749_call_prolog_bx, .-n749_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_β:
                                                                              jmp   n748_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ltimes10$2F0_α_789_2]
                        lea              rdx, [rip + .Ltimes10$2F0_α_789_3];  jmp   FN__times10$2F0
.Ltimes10$2F0_α_789_2:  pop              r12
                        pop              r12;                                 jmp   r12
.Ltimes10$2F0_α_789_3:  pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 288
                        rep              stosb
main_α_body:
                        .type            n790_call_proc_staged_bx, @function
n790_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_call_proc_staged_α:
                        mov              r11, 318
                        mov              qword ptr [rsp + 240], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_801_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_801_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_801_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_801_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_801_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_801_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_801_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_801_2
.Lcall_proc_staged_α_801_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_801_2
.Lcall_proc_staged_α_801_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_801_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_801_2
.Lcall_proc_staged_α_801_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_801_2
.Lcall_proc_staged_α_801_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_801_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n793_lit_string_α
.Lcall_proc_staged_α_801_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_801_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lcall_proc_staged_α_801_29:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n793_lit_string_α
                                                                              jmp   n791_lit_string_α
n790_call_proc_staged_β:
                        mov              r11, 318
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 240], 0
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n793_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 16
                        mov              r8d, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n793_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_801_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_801_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_801_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_801_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_801_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n793_lit_string_α
                                                                              jmp   n791_lit_string_α
.Lcall_proc_staged_α_801_0:
                        .quad            .Lcall_proc_staged_α_801_0_s
.Lcall_proc_staged_α_801_0_s:
                        .string          "top/0"
                        .size            n790_call_proc_staged_bx, .-n790_call_proc_staged_bx
                        .type            n791_lit_string_bx, @function
n791_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_802_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n792_call_prolog_α
.Llit_string_α_802_0:   .quad            .Llit_string_α_802_0_s
.Llit_string_α_802_0_s: .string          "ok"
                        .size            n791_lit_string_bx, .-n791_lit_string_bx
                        .type            n792_call_prolog_bx, @function
n792_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_call_prolog_α:     mov              r11, 320
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn804: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn804]
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
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n795_lit_string_α
n792_call_prolog_β:     mov              r11, 320;                            jmp   main_ω
                        .size            n792_call_prolog_bx, .-n792_call_prolog_bx
                        .type            n793_lit_string_bx, @function
n793_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n794_call_prolog_α
.Llit_string_α_805_0:   .quad            .Llit_string_α_805_0_s
.Llit_string_α_805_0_s: .string          "failed"
                        .size            n793_lit_string_bx, .-n793_lit_string_bx
                        .type            n794_call_prolog_bx, @function
n794_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_call_prolog_α:     mov              r11, 322
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn807: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn807]
                        lea              rsi, [rsp + 192]
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n797_lit_string_α
                                                                              jmp   n795_lit_string_α
n794_call_prolog_β:     mov              r11, 322;                            jmp   n797_lit_string_α
                        .size            n794_call_prolog_bx, .-n794_call_prolog_bx
                        .type            n795_lit_string_bx, @function
n795_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_808_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n796_call_prolog_α
.Llit_string_α_808_0:   .quad            .Llit_string_α_808_0_s
.Llit_string_α_808_0_s: .string          ""
                        .size            n795_lit_string_bx, .-n795_lit_string_bx
                        .type            n796_call_prolog_bx, @function
n796_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_call_prolog_α:     mov              r11, 324
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn810: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn810]
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
                        cmp              al, 104;                             je    n797_lit_string_α
                                                                              jmp   main_γ
n796_call_prolog_β:     mov              r11, 324;                            jmp   n797_lit_string_α
                        .size            n796_call_prolog_bx, .-n796_call_prolog_bx
                        .type            n797_lit_string_bx, @function
n797_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_811_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n798_lit_string_α
.Llit_string_α_811_0:   .quad            .Llit_string_α_811_0_s
.Llit_string_α_811_0_s: .string          "user_error"
                        .size            n797_lit_string_bx, .-n797_lit_string_bx
                        .type            n798_lit_string_bx, @function
n798_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_812_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n799_call_prolog_α
.Llit_string_α_812_0:   .quad            .Llit_string_α_812_0_s
.Llit_string_α_812_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n798_lit_string_bx, .-n798_lit_string_bx
                        .type            n799_call_prolog_bx, @function
n799_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_call_prolog_α:     mov              r11, 327
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn814: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn814]
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
n799_call_prolog_β:     mov              r11, 327;                            jmp   main_ω
                        .size            n799_call_prolog_bx, .-n799_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "d/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__d$2F3
                        .quad            d$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            8224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "top/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__top$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "times10/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__times10$2F0
                        .quad            times10$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
