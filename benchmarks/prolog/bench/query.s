                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__area$2F2:
                        sub              rsp, 5344
                        mov              qword ptr [rsp + 5320], rcx
                        mov              qword ptr [rsp + 5328], rdx
                        mov              qword ptr [rsp + 5336], rsp
                        mov              rdi, rsp
                        mov              esi, 5280
                        mov              edx, 5312
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
area$2F2_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_102
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_201_101
.Lcall_prolog_α_201_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_201_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_201_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_201_101
.Lcall_prolog_α_201_100:
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
.Lcall_prolog_α_201_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   area$2F2_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n2_lit_string_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n3_call_prolog_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          "china"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_205_2]
                                                                              jmp   .Lcall_prolog_α_205_3
.Lcall_prolog_α_205_2:  .quad            .Lcall_prolog_α_205_2_s
.Lcall_prolog_α_205_2_s:
                        .string          "china"
.Lcall_prolog_α_205_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    n8_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n8_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n5_lit_integer_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_208_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n6_call_prolog_α
.Llit_integer_α_208_0:  .quad            3380
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_call_prolog_bx, @function
n6_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_prolog_α:       mov              r11, 7
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5144], rax
                        lea              rdi, [rsp + 5136]
                        movabs           rsi, 3380
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              al, 104;                             je    n8_call_prolog_α
                                                                              jmp   n7_suspend_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n8_call_prolog_α
                        .size            n6_call_prolog_bx, .-n6_call_prolog_bx
                        .type            n7_suspend_bx, @function
n7_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:           mov              r11, 8
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_211_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_211_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n7_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n7_suspend_β:           mov              r11, 8;                              jmp   n8_call_prolog_α
                        .size            n7_suspend_bx, .-n7_suspend_bx
                        .type            n8_call_prolog_bx, @function
n8_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   area$2F2_ω
                        .size            n8_call_prolog_bx, .-n8_call_prolog_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n10_lit_string_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_215_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n11_call_prolog_α
.Llit_string_α_215_0:   .quad            .Llit_string_α_215_0_s
.Llit_string_α_215_0_s: .string          "india"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_call_prolog_bx, @function
n11_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_216_2]
                                                                              jmp   .Lcall_prolog_α_216_3
.Lcall_prolog_α_216_2:  .quad            .Lcall_prolog_α_216_2_s
.Lcall_prolog_α_216_2_s:
                        .string          "india"
.Lcall_prolog_α_216_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n16_call_prolog_α
                        .size            n11_call_prolog_bx, .-n11_call_prolog_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n13_lit_integer_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n14_call_prolog_α
.Llit_integer_α_219_0:  .quad            1139
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_prolog_bx, @function
n14_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4936], rax
                        lea              rdi, [rsp + 4928]
                        movabs           rsi, 1139
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n15_suspend_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   n16_call_prolog_α
                        .size            n14_call_prolog_bx, .-n14_call_prolog_bx
                        .type            n15_suspend_bx, @function
n15_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_222_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_222_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
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
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n15_suspend_β:          mov              r11, 16;                             jmp   n16_call_prolog_α
                        .size            n15_suspend_bx, .-n15_suspend_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4888], rax
                        lea              rdi, [rsp + 4880]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n17_var_ref_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   area$2F2_ω
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx;         jmp   n18_lit_string_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n19_call_prolog_α
.Llit_string_α_226_0:   .quad            .Llit_string_α_226_0_s
.Llit_string_α_226_0_s: .string          "ussr"
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4808], rax
                        lea              rdi, [rsp + 4800]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_227_2]
                                                                              jmp   .Lcall_prolog_α_227_3
.Lcall_prolog_α_227_2:  .quad            .Lcall_prolog_α_227_2_s
.Lcall_prolog_α_227_2_s:
                        .string          "ussr"
.Lcall_prolog_α_227_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              al, 104;                             je    n24_call_prolog_α
                                                                              jmp   n20_var_ref_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n24_call_prolog_α
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n21_lit_integer_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n22_call_prolog_α
.Llit_integer_α_230_0:  .quad            8708
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4728], rax
                        lea              rdi, [rsp + 4720]
                        movabs           rsi, 8708
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              al, 104;                             je    n24_call_prolog_α
                                                                              jmp   n23_suspend_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   n24_call_prolog_α
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_suspend_bx, @function
n23_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:          mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_233_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_233_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n23_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n23_suspend_β:          mov              r11, 24;                             jmp   n24_call_prolog_α
                        .size            n23_suspend_bx, .-n23_suspend_bx
                        .type            n24_call_prolog_bx, @function
n24_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_prolog_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4680], rax
                        lea              rdi, [rsp + 4672]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n25_var_ref_α
n24_call_prolog_β:      mov              r11, 25;                             jmp   area$2F2_ω
                        .size            n24_call_prolog_bx, .-n24_call_prolog_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n26_lit_string_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 4640], 2            # result
                        mov              dword ptr [rsp + 4644], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_237_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n27_call_prolog_α
.Llit_string_α_237_0:   .quad            .Llit_string_α_237_0_s
.Llit_string_α_237_0_s: .string          "usa"
                        .size            n26_lit_string_bx, .-n26_lit_string_bx
                        .type            n27_call_prolog_bx, @function
n27_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_prolog_α:      mov              r11, 28
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_238_2]
                                                                              jmp   .Lcall_prolog_α_238_3
.Lcall_prolog_α_238_2:  .quad            .Lcall_prolog_α_238_2_s
.Lcall_prolog_α_238_2_s:
                        .string          "usa"
.Lcall_prolog_α_238_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              al, 104;                             je    n32_call_prolog_α
                                                                              jmp   n28_var_ref_α
n27_call_prolog_β:      mov              r11, 28;                             jmp   n32_call_prolog_α
                        .size            n27_call_prolog_bx, .-n27_call_prolog_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n29_lit_integer_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_241_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n30_call_prolog_α
.Llit_integer_α_241_0:  .quad            3609
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_call_prolog_bx, @function
n30_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_prolog_α:      mov              r11, 31
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4520], rax
                        lea              rdi, [rsp + 4512]
                        movabs           rsi, 3609
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        cmp              al, 104;                             je    n32_call_prolog_α
                                                                              jmp   n31_suspend_α
n30_call_prolog_β:      mov              r11, 31;                             jmp   n32_call_prolog_α
                        .size            n30_call_prolog_bx, .-n30_call_prolog_bx
                        .type            n31_suspend_bx, @function
n31_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:          mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_244_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_244_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n31_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n31_suspend_β:          mov              r11, 32;                             jmp   n32_call_prolog_α
                        .size            n31_suspend_bx, .-n31_suspend_bx
                        .type            n32_call_prolog_bx, @function
n32_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_prolog_α:      mov              r11, 33
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4472], rax
                        lea              rdi, [rsp + 4464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n33_var_ref_α
n32_call_prolog_β:      mov              r11, 33;                             jmp   area$2F2_ω
                        .size            n32_call_prolog_bx, .-n32_call_prolog_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n35_call_prolog_α
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          "indonesia"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_call_prolog_bx, @function
n35_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_249_2]
                                                                              jmp   .Lcall_prolog_α_249_3
.Lcall_prolog_α_249_2:  .quad            .Lcall_prolog_α_249_2_s
.Lcall_prolog_α_249_2_s:
                        .string          "indonesia"
.Lcall_prolog_α_249_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              al, 104;                             je    n40_call_prolog_α
                                                                              jmp   n36_var_ref_α
n35_call_prolog_β:      mov              r11, 36;                             jmp   n40_call_prolog_α
                        .size            n35_call_prolog_bx, .-n35_call_prolog_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n37_lit_integer_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n38_call_prolog_α
.Llit_integer_α_252_0:  .quad            570
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_call_prolog_bx, @function
n38_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_prolog_α:      mov              r11, 39
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        movabs           rsi, 570
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n40_call_prolog_α
                                                                              jmp   n39_suspend_α
n38_call_prolog_β:      mov              r11, 39;                             jmp   n40_call_prolog_α
                        .size            n38_call_prolog_bx, .-n38_call_prolog_bx
                        .type            n39_suspend_bx, @function
n39_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:          mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_255_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_255_61:     mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n39_suspend_β:          mov              r11, 40;                             jmp   n40_call_prolog_α
                        .size            n39_suspend_bx, .-n39_suspend_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4264], rax
                        lea              rdi, [rsp + 4256]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   area$2F2_ω
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n42_lit_string_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_259_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n43_call_prolog_α
.Llit_string_α_259_0:   .quad            .Llit_string_α_259_0_s
.Llit_string_α_259_0_s: .string          "japan"
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_call_prolog_bx, @function
n43_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_prolog_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_260_2]
                                                                              jmp   .Lcall_prolog_α_260_3
.Lcall_prolog_α_260_2:  .quad            .Lcall_prolog_α_260_2_s
.Lcall_prolog_α_260_2_s:
                        .string          "japan"
.Lcall_prolog_α_260_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n48_call_prolog_α
                                                                              jmp   n44_var_ref_α
n43_call_prolog_β:      mov              r11, 44;                             jmp   n48_call_prolog_α
                        .size            n43_call_prolog_bx, .-n43_call_prolog_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n45_lit_integer_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n46_call_prolog_α
.Llit_integer_α_263_0:  .quad            148
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_call_prolog_bx, @function
n46_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_prolog_α:      mov              r11, 47
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rdi, [rsp + 4096]
                        movabs           rsi, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n48_call_prolog_α
                                                                              jmp   n47_suspend_α
n46_call_prolog_β:      mov              r11, 47;                             jmp   n48_call_prolog_α
                        .size            n46_call_prolog_bx, .-n46_call_prolog_bx
                        .type            n47_suspend_bx, @function
n47_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_suspend_α:          mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_266_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_266_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n47_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n47_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n47_suspend_β:          mov              r11, 48;                             jmp   n48_call_prolog_α
                        .size            n47_suspend_bx, .-n47_suspend_bx
                        .type            n48_call_prolog_bx, @function
n48_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_prolog_α:      mov              r11, 49
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4056], rax
                        lea              rdi, [rsp + 4048]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n49_var_ref_α
n48_call_prolog_β:      mov              r11, 49;                             jmp   area$2F2_ω
                        .size            n48_call_prolog_bx, .-n48_call_prolog_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx;         jmp   n50_lit_string_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 4016], 2            # result
                        mov              dword ptr [rsp + 4020], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_270_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n51_call_prolog_α
.Llit_string_α_270_0:   .quad            .Llit_string_α_270_0_s
.Llit_string_α_270_0_s: .string          "brazil"
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_call_prolog_bx, @function
n51_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_prolog_α:      mov              r11, 52
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_271_2]
                                                                              jmp   .Lcall_prolog_α_271_3
.Lcall_prolog_α_271_2:  .quad            .Lcall_prolog_α_271_2_s
.Lcall_prolog_α_271_2_s:
                        .string          "brazil"
.Lcall_prolog_α_271_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    n56_call_prolog_α
                                                                              jmp   n52_var_ref_α
n51_call_prolog_β:      mov              r11, 52;                             jmp   n56_call_prolog_α
                        .size            n51_call_prolog_bx, .-n51_call_prolog_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n53_lit_integer_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_274_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n54_call_prolog_α
.Llit_integer_α_274_0:  .quad            3288
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_call_prolog_bx, @function
n54_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_prolog_α:      mov              r11, 55
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        movabs           rsi, 3288
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              al, 104;                             je    n56_call_prolog_α
                                                                              jmp   n55_suspend_α
n54_call_prolog_β:      mov              r11, 55;                             jmp   n56_call_prolog_α
                        .size            n54_call_prolog_bx, .-n54_call_prolog_bx
                        .type            n55_suspend_bx, @function
n55_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:          mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_277_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_277_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n55_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n55_suspend_β:          mov              r11, 56;                             jmp   n56_call_prolog_α
                        .size            n55_suspend_bx, .-n55_suspend_bx
                        .type            n56_call_prolog_bx, @function
n56_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_prolog_α:      mov              r11, 57
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3848], rax
                        lea              rdi, [rsp + 3840]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n57_var_ref_α
n56_call_prolog_β:      mov              r11, 57;                             jmp   area$2F2_ω
                        .size            n56_call_prolog_bx, .-n56_call_prolog_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx;         jmp   n58_lit_string_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_string_bx, @function
n58_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_281_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n59_call_prolog_α
.Llit_string_α_281_0:   .quad            .Llit_string_α_281_0_s
.Llit_string_α_281_0_s: .string          "bangladesh"
                        .size            n58_lit_string_bx, .-n58_lit_string_bx
                        .type            n59_call_prolog_bx, @function
n59_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_prolog_α:      mov              r11, 60
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        lea              rdi, [rsp + 3760]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_282_2]
                                                                              jmp   .Lcall_prolog_α_282_3
.Lcall_prolog_α_282_2:  .quad            .Lcall_prolog_α_282_2_s
.Lcall_prolog_α_282_2_s:
                        .string          "bangladesh"
.Lcall_prolog_α_282_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n64_call_prolog_α
                                                                              jmp   n60_var_ref_α
n59_call_prolog_β:      mov              r11, 60;                             jmp   n64_call_prolog_α
                        .size            n59_call_prolog_bx, .-n59_call_prolog_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n61_lit_integer_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_285_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n62_call_prolog_α
.Llit_integer_α_285_0:  .quad            55
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_call_prolog_bx, @function
n62_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_prolog_α:      mov              r11, 63
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3688], rax
                        lea              rdi, [rsp + 3680]
                        movabs           rsi, 55
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    n64_call_prolog_α
                                                                              jmp   n63_suspend_α
n62_call_prolog_β:      mov              r11, 63;                             jmp   n64_call_prolog_α
                        .size            n62_call_prolog_bx, .-n62_call_prolog_bx
                        .type            n63_suspend_bx, @function
n63_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_suspend_α:          mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_288_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_288_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n63_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n63_suspend_β:          mov              r11, 64;                             jmp   n64_call_prolog_α
                        .size            n63_suspend_bx, .-n63_suspend_bx
                        .type            n64_call_prolog_bx, @function
n64_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_prolog_α:      mov              r11, 65
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n65_var_ref_α
n64_call_prolog_β:      mov              r11, 65;                             jmp   area$2F2_ω
                        .size            n64_call_prolog_bx, .-n64_call_prolog_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n66_lit_string_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n67_call_prolog_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "pakistan"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_call_prolog_bx, @function
n67_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_prolog_α:      mov              r11, 68
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_293_2]
                                                                              jmp   .Lcall_prolog_α_293_3
.Lcall_prolog_α_293_2:  .quad            .Lcall_prolog_α_293_2_s
.Lcall_prolog_α_293_2_s:
                        .string          "pakistan"
.Lcall_prolog_α_293_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n68_var_ref_α
n67_call_prolog_β:      mov              r11, 68;                             jmp   n72_call_prolog_α
                        .size            n67_call_prolog_bx, .-n67_call_prolog_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n69_lit_integer_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              r11, 70
                        mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_296_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n70_call_prolog_α
.Llit_integer_α_296_0:  .quad            311
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_call_prolog_bx, @function
n70_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_prolog_α:      mov              r11, 71
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3480], rax
                        lea              rdi, [rsp + 3472]
                        movabs           rsi, 311
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
n70_call_prolog_β:      mov              r11, 71;                             jmp   n72_call_prolog_α
                        .size            n70_call_prolog_bx, .-n70_call_prolog_bx
                        .type            n71_suspend_bx, @function
n71_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_299_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_299_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n71_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n71_suspend_β:          mov              r11, 72;                             jmp   n72_call_prolog_α
                        .size            n71_suspend_bx, .-n71_suspend_bx
                        .type            n72_call_prolog_bx, @function
n72_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_prolog_α:      mov              r11, 73
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n73_var_ref_α
n72_call_prolog_β:      mov              r11, 73;                             jmp   area$2F2_ω
                        .size            n72_call_prolog_bx, .-n72_call_prolog_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n74_lit_string_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_303_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n75_call_prolog_α
.Llit_string_α_303_0:   .quad            .Llit_string_α_303_0_s
.Llit_string_α_303_0_s: .string          "w_germany"
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_call_prolog_bx, @function
n75_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_prolog_α:      mov              r11, 76
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_304_2]
                                                                              jmp   .Lcall_prolog_α_304_3
.Lcall_prolog_α_304_2:  .quad            .Lcall_prolog_α_304_2_s
.Lcall_prolog_α_304_2_s:
                        .string          "w_germany"
.Lcall_prolog_α_304_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    n80_call_prolog_α
                                                                              jmp   n76_var_ref_α
n75_call_prolog_β:      mov              r11, 76;                             jmp   n80_call_prolog_α
                        .size            n75_call_prolog_bx, .-n75_call_prolog_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n77_lit_integer_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              r11, 78
                        mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n78_call_prolog_α
.Llit_integer_α_307_0:  .quad            96
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_call_prolog_bx, @function
n78_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_prolog_α:      mov              r11, 79
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        lea              rdi, [rsp + 3264]
                        movabs           rsi, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n80_call_prolog_α
                                                                              jmp   n79_suspend_α
n78_call_prolog_β:      mov              r11, 79;                             jmp   n80_call_prolog_α
                        .size            n78_call_prolog_bx, .-n78_call_prolog_bx
                        .type            n79_suspend_bx, @function
n79_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_suspend_α:          mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_310_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_310_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n79_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n79_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n79_suspend_β:          mov              r11, 80;                             jmp   n80_call_prolog_α
                        .size            n79_suspend_bx, .-n79_suspend_bx
                        .type            n80_call_prolog_bx, @function
n80_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_prolog_α:      mov              r11, 81
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
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n81_var_ref_α
n80_call_prolog_β:      mov              r11, 81;                             jmp   area$2F2_ω
                        .size            n80_call_prolog_bx, .-n80_call_prolog_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n82_lit_string_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_314_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n83_call_prolog_α
.Llit_string_α_314_0:   .quad            .Llit_string_α_314_0_s
.Llit_string_α_314_0_s: .string          "nigeria"
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_call_prolog_bx, @function
n83_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_prolog_α:      mov              r11, 84
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_315_2]
                                                                              jmp   .Lcall_prolog_α_315_3
.Lcall_prolog_α_315_2:  .quad            .Lcall_prolog_α_315_2_s
.Lcall_prolog_α_315_2_s:
                        .string          "nigeria"
.Lcall_prolog_α_315_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n88_call_prolog_α
                                                                              jmp   n84_var_ref_α
n83_call_prolog_β:      mov              r11, 84;                             jmp   n88_call_prolog_α
                        .size            n83_call_prolog_bx, .-n83_call_prolog_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n85_lit_integer_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 86
                        mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n86_call_prolog_α
.Llit_integer_α_318_0:  .quad            373
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_call_prolog_bx, @function
n86_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_prolog_α:      mov              r11, 87
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        lea              rdi, [rsp + 3056]
                        movabs           rsi, 373
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n88_call_prolog_α
                                                                              jmp   n87_suspend_α
n86_call_prolog_β:      mov              r11, 87;                             jmp   n88_call_prolog_α
                        .size            n86_call_prolog_bx, .-n86_call_prolog_bx
                        .type            n87_suspend_bx, @function
n87_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_suspend_α:          mov              r11, 88
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_321_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_321_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n87_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n87_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n87_suspend_β:          mov              r11, 88;                             jmp   n88_call_prolog_α
                        .size            n87_suspend_bx, .-n87_suspend_bx
                        .type            n88_call_prolog_bx, @function
n88_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_prolog_α:      mov              r11, 89
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n89_var_ref_α
n88_call_prolog_β:      mov              r11, 89;                             jmp   area$2F2_ω
                        .size            n88_call_prolog_bx, .-n88_call_prolog_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 91
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_325_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n91_call_prolog_α
.Llit_string_α_325_0:   .quad            .Llit_string_α_325_0_s
.Llit_string_α_325_0_s: .string          "mexico"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_call_prolog_bx, @function
n91_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_prolog_α:      mov              r11, 92
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_326_2]
                                                                              jmp   .Lcall_prolog_α_326_3
.Lcall_prolog_α_326_2:  .quad            .Lcall_prolog_α_326_2_s
.Lcall_prolog_α_326_2_s:
                        .string          "mexico"
.Lcall_prolog_α_326_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n92_var_ref_α
n91_call_prolog_β:      mov              r11, 92;                             jmp   n96_call_prolog_α
                        .size            n91_call_prolog_bx, .-n91_call_prolog_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n93_lit_integer_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_329_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n94_call_prolog_α
.Llit_integer_α_329_0:  .quad            764
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_call_prolog_bx, @function
n94_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_prolog_α:      mov              r11, 95
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        movabs           rsi, 764
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n96_call_prolog_α
                                                                              jmp   n95_suspend_α
n94_call_prolog_β:      mov              r11, 95;                             jmp   n96_call_prolog_α
                        .size            n94_call_prolog_bx, .-n94_call_prolog_bx
                        .type            n95_suspend_bx, @function
n95_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_suspend_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_332_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_332_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n95_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n95_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n95_suspend_β:          mov              r11, 96;                             jmp   n96_call_prolog_α
                        .size            n95_suspend_bx, .-n95_suspend_bx
                        .type            n96_call_prolog_bx, @function
n96_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_prolog_α:      mov              r11, 97
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n97_var_ref_α
n96_call_prolog_β:      mov              r11, 97;                             jmp   area$2F2_ω
                        .size            n96_call_prolog_bx, .-n96_call_prolog_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n98_lit_string_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 99
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_336_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n99_call_prolog_α
.Llit_string_α_336_0:   .quad            .Llit_string_α_336_0_s
.Llit_string_α_336_0_s: .string          "uk"
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_call_prolog_bx, @function
n99_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_prolog_α:      mov              r11, 100
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_337_2]
                                                                              jmp   .Lcall_prolog_α_337_3
.Lcall_prolog_α_337_2:  .quad            .Lcall_prolog_α_337_2_s
.Lcall_prolog_α_337_2_s:
                        .string          "uk"
.Lcall_prolog_α_337_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n104_call_prolog_α
                                                                              jmp   n100_var_ref_α
n99_call_prolog_β:      mov              r11, 100;                            jmp   n104_call_prolog_α
                        .size            n99_call_prolog_bx, .-n99_call_prolog_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n101_lit_integer_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_340_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n102_call_prolog_α
.Llit_integer_α_340_0:  .quad            86
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_call_prolog_bx, @function
n102_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        movabs           rsi, 86
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n104_call_prolog_α
                                                                              jmp   n103_suspend_α
n102_call_prolog_β:     mov              r11, 103;                            jmp   n104_call_prolog_α
                        .size            n102_call_prolog_bx, .-n102_call_prolog_bx
                        .type            n103_suspend_bx, @function
n103_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_suspend_α:         mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_343_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_343_61:     mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n103_suspend_β:         mov              r11, 104;                            jmp   n104_call_prolog_α
                        .size            n103_suspend_bx, .-n103_suspend_bx
                        .type            n104_call_prolog_bx, @function
n104_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_prolog_α:     mov              r11, 105
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n105_var_ref_α
n104_call_prolog_β:     mov              r11, 105;                            jmp   area$2F2_ω
                        .size            n104_call_prolog_bx, .-n104_call_prolog_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n106_lit_string_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_lit_string_bx, @function
n106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_347_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n107_call_prolog_α
.Llit_string_α_347_0:   .quad            .Llit_string_α_347_0_s
.Llit_string_α_347_0_s: .string          "italy"
                        .size            n106_lit_string_bx, .-n106_lit_string_bx
                        .type            n107_call_prolog_bx, @function
n107_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        lea              rdi, [rsp + 2512]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_348_2]
                                                                              jmp   .Lcall_prolog_α_348_3
.Lcall_prolog_α_348_2:  .quad            .Lcall_prolog_α_348_2_s
.Lcall_prolog_α_348_2_s:
                        .string          "italy"
.Lcall_prolog_α_348_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n112_call_prolog_α
                                                                              jmp   n108_var_ref_α
n107_call_prolog_β:     mov              r11, 108;                            jmp   n112_call_prolog_α
                        .size            n107_call_prolog_bx, .-n107_call_prolog_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n109_lit_integer_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_351_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n110_call_prolog_α
.Llit_integer_α_351_0:  .quad            116
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_call_prolog_bx, @function
n110_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_prolog_α:     mov              r11, 111
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2440], rax
                        lea              rdi, [rsp + 2432]
                        movabs           rsi, 116
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n112_call_prolog_α
                                                                              jmp   n111_suspend_α
n110_call_prolog_β:     mov              r11, 111;                            jmp   n112_call_prolog_α
                        .size            n110_call_prolog_bx, .-n110_call_prolog_bx
                        .type            n111_suspend_bx, @function
n111_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_suspend_α:         mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_354_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_354_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n111_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n111_suspend_β:         mov              r11, 112;                            jmp   n112_call_prolog_α
                        .size            n111_suspend_bx, .-n111_suspend_bx
                        .type            n112_call_prolog_bx, @function
n112_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2392], rax
                        lea              rdi, [rsp + 2384]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n113_var_ref_α
n112_call_prolog_β:     mov              r11, 113;                            jmp   area$2F2_ω
                        .size            n112_call_prolog_bx, .-n112_call_prolog_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n114_lit_string_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_lit_string_bx, @function
n114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_358_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n115_call_prolog_α
.Llit_string_α_358_0:   .quad            .Llit_string_α_358_0_s
.Llit_string_α_358_0_s: .string          "france"
                        .size            n114_lit_string_bx, .-n114_lit_string_bx
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 116
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        lea              rdi, [rsp + 2304]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_359_2]
                                                                              jmp   .Lcall_prolog_α_359_3
.Lcall_prolog_α_359_2:  .quad            .Lcall_prolog_α_359_2_s
.Lcall_prolog_α_359_2_s:
                        .string          "france"
.Lcall_prolog_α_359_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n120_call_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_prolog_β:     mov              r11, 116;                            jmp   n120_call_prolog_α
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n117_lit_integer_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n118_call_prolog_α
.Llit_integer_α_362_0:  .quad            213
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_call_prolog_bx, @function
n118_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_prolog_α:     mov              r11, 119
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        lea              rdi, [rsp + 2224]
                        movabs           rsi, 213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n120_call_prolog_α
                                                                              jmp   n119_suspend_α
n118_call_prolog_β:     mov              r11, 119;                            jmp   n120_call_prolog_α
                        .size            n118_call_prolog_bx, .-n118_call_prolog_bx
                        .type            n119_suspend_bx, @function
n119_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_suspend_α:         mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_365_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_365_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n119_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n119_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n119_suspend_β:         mov              r11, 120;                            jmp   n120_call_prolog_α
                        .size            n119_suspend_bx, .-n119_suspend_bx
                        .type            n120_call_prolog_bx, @function
n120_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_prolog_α:     mov              r11, 121
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n121_var_ref_α
n120_call_prolog_β:     mov              r11, 121;                            jmp   area$2F2_ω
                        .size            n120_call_prolog_bx, .-n120_call_prolog_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n122_lit_string_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_369_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n123_call_prolog_α
.Llit_string_α_369_0:   .quad            .Llit_string_α_369_0_s
.Llit_string_α_369_0_s: .string          "philippines"
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_call_prolog_bx, @function
n123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 124
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_370_2]
                                                                              jmp   .Lcall_prolog_α_370_3
.Lcall_prolog_α_370_2:  .quad            .Lcall_prolog_α_370_2_s
.Lcall_prolog_α_370_2_s:
                        .string          "philippines"
.Lcall_prolog_α_370_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n128_call_prolog_α
                                                                              jmp   n124_var_ref_α
n123_call_prolog_β:     mov              r11, 124;                            jmp   n128_call_prolog_α
                        .size            n123_call_prolog_bx, .-n123_call_prolog_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n125_lit_integer_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_lit_integer_bx, @function
n125_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_373_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n126_call_prolog_α
.Llit_integer_α_373_0:  .quad            90
                        .size            n125_lit_integer_bx, .-n125_lit_integer_bx
                        .type            n126_call_prolog_bx, @function
n126_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_prolog_α:     mov              r11, 127
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        movabs           rsi, 90
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n128_call_prolog_α
                                                                              jmp   n127_suspend_α
n126_call_prolog_β:     mov              r11, 127;                            jmp   n128_call_prolog_α
                        .size            n126_call_prolog_bx, .-n126_call_prolog_bx
                        .type            n127_suspend_bx, @function
n127_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:         mov              r11, 128
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_376_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_376_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n127_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n127_suspend_β:         mov              r11, 128;                            jmp   n128_call_prolog_α
                        .size            n127_suspend_bx, .-n127_suspend_bx
                        .type            n128_call_prolog_bx, @function
n128_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_prolog_α:     mov              r11, 129
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n129_var_ref_α
n128_call_prolog_β:     mov              r11, 129;                            jmp   area$2F2_ω
                        .size            n128_call_prolog_bx, .-n128_call_prolog_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n130_lit_string_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_lit_string_bx, @function
n130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_380_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n131_call_prolog_α
.Llit_string_α_380_0:   .quad            .Llit_string_α_380_0_s
.Llit_string_α_380_0_s: .string          "thailand"
                        .size            n130_lit_string_bx, .-n130_lit_string_bx
                        .type            n131_call_prolog_bx, @function
n131_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_prolog_α:     mov              r11, 132
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_381_2]
                                                                              jmp   .Lcall_prolog_α_381_3
.Lcall_prolog_α_381_2:  .quad            .Lcall_prolog_α_381_2_s
.Lcall_prolog_α_381_2_s:
                        .string          "thailand"
.Lcall_prolog_α_381_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n136_call_prolog_α
                                                                              jmp   n132_var_ref_α
n131_call_prolog_β:     mov              r11, 132;                            jmp   n136_call_prolog_α
                        .size            n131_call_prolog_bx, .-n131_call_prolog_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n133_lit_integer_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n134_call_prolog_α
.Llit_integer_α_384_0:  .quad            200
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_prolog_bx, @function
n134_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_prolog_α:     mov              r11, 135
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        movabs           rsi, 200
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n136_call_prolog_α
                                                                              jmp   n135_suspend_α
n134_call_prolog_β:     mov              r11, 135;                            jmp   n136_call_prolog_α
                        .size            n134_call_prolog_bx, .-n134_call_prolog_bx
                        .type            n135_suspend_bx, @function
n135_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:         mov              r11, 136
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_387_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_387_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n135_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n135_suspend_β:         mov              r11, 136;                            jmp   n136_call_prolog_α
                        .size            n135_suspend_bx, .-n135_suspend_bx
                        .type            n136_call_prolog_bx, @function
n136_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_prolog_α:     mov              r11, 137
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n137_var_ref_α
n136_call_prolog_β:     mov              r11, 137;                            jmp   area$2F2_ω
                        .size            n136_call_prolog_bx, .-n136_call_prolog_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n138_lit_string_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n139_call_prolog_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "turkey"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_call_prolog_bx, @function
n139_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 140
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_392_2]
                                                                              jmp   .Lcall_prolog_α_392_3
.Lcall_prolog_α_392_2:  .quad            .Lcall_prolog_α_392_2_s
.Lcall_prolog_α_392_2_s:
                        .string          "turkey"
.Lcall_prolog_α_392_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n144_call_prolog_α
                                                                              jmp   n140_var_ref_α
n139_call_prolog_β:     mov              r11, 140;                            jmp   n144_call_prolog_α
                        .size            n139_call_prolog_bx, .-n139_call_prolog_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n141_lit_integer_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_395_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n142_call_prolog_α
.Llit_integer_α_395_0:  .quad            296
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_call_prolog_bx, @function
n142_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_prolog_α:     mov              r11, 143
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        movabs           rsi, 296
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n144_call_prolog_α
                                                                              jmp   n143_suspend_α
n142_call_prolog_β:     mov              r11, 143;                            jmp   n144_call_prolog_α
                        .size            n142_call_prolog_bx, .-n142_call_prolog_bx
                        .type            n143_suspend_bx, @function
n143_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_suspend_α:         mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_398_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_398_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n143_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n143_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n143_suspend_β:         mov              r11, 144;                            jmp   n144_call_prolog_α
                        .size            n143_suspend_bx, .-n143_suspend_bx
                        .type            n144_call_prolog_bx, @function
n144_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_prolog_α:     mov              r11, 145
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n145_var_ref_α
n144_call_prolog_β:     mov              r11, 145;                            jmp   area$2F2_ω
                        .size            n144_call_prolog_bx, .-n144_call_prolog_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n146_lit_string_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_lit_string_bx, @function
n146_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n147_call_prolog_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "egypt"
                        .size            n146_lit_string_bx, .-n146_lit_string_bx
                        .type            n147_call_prolog_bx, @function
n147_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_prolog_α:     mov              r11, 148
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_403_2]
                                                                              jmp   .Lcall_prolog_α_403_3
.Lcall_prolog_α_403_2:  .quad            .Lcall_prolog_α_403_2_s
.Lcall_prolog_α_403_2_s:
                        .string          "egypt"
.Lcall_prolog_α_403_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n152_call_prolog_α
                                                                              jmp   n148_var_ref_α
n147_call_prolog_β:     mov              r11, 148;                            jmp   n152_call_prolog_α
                        .size            n147_call_prolog_bx, .-n147_call_prolog_bx
                        .type            n148_var_ref_bx, @function
n148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n149_lit_integer_α
                        .size            n148_var_ref_bx, .-n148_var_ref_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_406_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n150_call_prolog_α
.Llit_integer_α_406_0:  .quad            386
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_call_prolog_bx, @function
n150_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_prolog_α:     mov              r11, 151
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        movabs           rsi, 386
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n152_call_prolog_α
                                                                              jmp   n151_suspend_α
n150_call_prolog_β:     mov              r11, 151;                            jmp   n152_call_prolog_α
                        .size            n150_call_prolog_bx, .-n150_call_prolog_bx
                        .type            n151_suspend_bx, @function
n151_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_suspend_α:         mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_409_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_409_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n151_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n151_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n151_suspend_β:         mov              r11, 152;                            jmp   n152_call_prolog_α
                        .size            n151_suspend_bx, .-n151_suspend_bx
                        .type            n152_call_prolog_bx, @function
n152_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_prolog_α:     mov              r11, 153
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n153_var_ref_α
n152_call_prolog_β:     mov              r11, 153;                            jmp   area$2F2_ω
                        .size            n152_call_prolog_bx, .-n152_call_prolog_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n154_lit_string_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_413_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n155_call_prolog_α
.Llit_string_α_413_0:   .quad            .Llit_string_α_413_0_s
.Llit_string_α_413_0_s: .string          "spain"
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_call_prolog_bx, @function
n155_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_prolog_α:     mov              r11, 156
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_414_2]
                                                                              jmp   .Lcall_prolog_α_414_3
.Lcall_prolog_α_414_2:  .quad            .Lcall_prolog_α_414_2_s
.Lcall_prolog_α_414_2_s:
                        .string          "spain"
.Lcall_prolog_α_414_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n160_call_prolog_α
                                                                              jmp   n156_var_ref_α
n155_call_prolog_β:     mov              r11, 156;                            jmp   n160_call_prolog_α
                        .size            n155_call_prolog_bx, .-n155_call_prolog_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n157_lit_integer_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_417_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n158_call_prolog_α
.Llit_integer_α_417_0:  .quad            190
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_prolog_bx, @function
n158_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 159
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        movabs           rsi, 190
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n160_call_prolog_α
                                                                              jmp   n159_suspend_α
n158_call_prolog_β:     mov              r11, 159;                            jmp   n160_call_prolog_α
                        .size            n158_call_prolog_bx, .-n158_call_prolog_bx
                        .type            n159_suspend_bx, @function
n159_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:         mov              r11, 160
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_420_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_420_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n159_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n159_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n159_suspend_β:         mov              r11, 160;                            jmp   n160_call_prolog_α
                        .size            n159_suspend_bx, .-n159_suspend_bx
                        .type            n160_call_prolog_bx, @function
n160_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_prolog_α:     mov              r11, 161
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n161_var_ref_α
n160_call_prolog_β:     mov              r11, 161;                            jmp   area$2F2_ω
                        .size            n160_call_prolog_bx, .-n160_call_prolog_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n162_lit_string_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_424_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n163_call_prolog_α
.Llit_string_α_424_0:   .quad            .Llit_string_α_424_0_s
.Llit_string_α_424_0_s: .string          "poland"
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_425_2]
                                                                              jmp   .Lcall_prolog_α_425_3
.Lcall_prolog_α_425_2:  .quad            .Lcall_prolog_α_425_2_s
.Lcall_prolog_α_425_2_s:
                        .string          "poland"
.Lcall_prolog_α_425_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n168_call_prolog_α
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 164;                            jmp   n168_call_prolog_α
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n165_lit_integer_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_428_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n166_call_prolog_α
.Llit_integer_α_428_0:  .quad            121
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_call_prolog_bx, @function
n166_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_prolog_α:     mov              r11, 167
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        movabs           rsi, 121
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n168_call_prolog_α
                                                                              jmp   n167_suspend_α
n166_call_prolog_β:     mov              r11, 167;                            jmp   n168_call_prolog_α
                        .size            n166_call_prolog_bx, .-n166_call_prolog_bx
                        .type            n167_suspend_bx, @function
n167_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_suspend_α:         mov              r11, 168
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_431_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_431_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n167_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n167_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n167_suspend_β:         mov              r11, 168;                            jmp   n168_call_prolog_α
                        .size            n167_suspend_bx, .-n167_suspend_bx
                        .type            n168_call_prolog_bx, @function
n168_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_prolog_α:     mov              r11, 169
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n169_var_ref_α
n168_call_prolog_β:     mov              r11, 169;                            jmp   area$2F2_ω
                        .size            n168_call_prolog_bx, .-n168_call_prolog_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n170_lit_string_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_lit_string_bx, @function
n170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_435_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n171_call_prolog_α
.Llit_string_α_435_0:   .quad            .Llit_string_α_435_0_s
.Llit_string_α_435_0_s: .string          "s_korea"
                        .size            n170_lit_string_bx, .-n170_lit_string_bx
                        .type            n171_call_prolog_bx, @function
n171_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_prolog_α:     mov              r11, 172
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_436_2]
                                                                              jmp   .Lcall_prolog_α_436_3
.Lcall_prolog_α_436_2:  .quad            .Lcall_prolog_α_436_2_s
.Lcall_prolog_α_436_2_s:
                        .string          "s_korea"
.Lcall_prolog_α_436_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n176_call_prolog_α
                                                                              jmp   n172_var_ref_α
n171_call_prolog_β:     mov              r11, 172;                            jmp   n176_call_prolog_α
                        .size            n171_call_prolog_bx, .-n171_call_prolog_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n173_lit_integer_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_439_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n174_call_prolog_α
.Llit_integer_α_439_0:  .quad            37
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_call_prolog_bx, @function
n174_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_prolog_α:     mov              r11, 175
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        movabs           rsi, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n176_call_prolog_α
                                                                              jmp   n175_suspend_α
n174_call_prolog_β:     mov              r11, 175;                            jmp   n176_call_prolog_α
                        .size            n174_call_prolog_bx, .-n174_call_prolog_bx
                        .type            n175_suspend_bx, @function
n175_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_suspend_α:         mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_442_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_442_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n175_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n175_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n175_suspend_β:         mov              r11, 176;                            jmp   n176_call_prolog_α
                        .size            n175_suspend_bx, .-n175_suspend_bx
                        .type            n176_call_prolog_bx, @function
n176_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n177_var_ref_α
n176_call_prolog_β:     mov              r11, 177;                            jmp   area$2F2_ω
                        .size            n176_call_prolog_bx, .-n176_call_prolog_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n178_lit_string_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_lit_string_bx, @function
n178_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_446_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n179_call_prolog_α
.Llit_string_α_446_0:   .quad            .Llit_string_α_446_0_s
.Llit_string_α_446_0_s: .string          "iran"
                        .size            n178_lit_string_bx, .-n178_lit_string_bx
                        .type            n179_call_prolog_bx, @function
n179_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_447_2]
                                                                              jmp   .Lcall_prolog_α_447_3
.Lcall_prolog_α_447_2:  .quad            .Lcall_prolog_α_447_2_s
.Lcall_prolog_α_447_2_s:
                        .string          "iran"
.Lcall_prolog_α_447_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n184_call_prolog_α
                                                                              jmp   n180_var_ref_α
n179_call_prolog_β:     mov              r11, 180;                            jmp   n184_call_prolog_α
                        .size            n179_call_prolog_bx, .-n179_call_prolog_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n181_lit_integer_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_450_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n182_call_prolog_α
.Llit_integer_α_450_0:  .quad            628
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_call_prolog_bx, @function
n182_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_prolog_α:     mov              r11, 183
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        movabs           rsi, 628
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n184_call_prolog_α
                                                                              jmp   n183_suspend_α
n182_call_prolog_β:     mov              r11, 183;                            jmp   n184_call_prolog_α
                        .size            n182_call_prolog_bx, .-n182_call_prolog_bx
                        .type            n183_suspend_bx, @function
n183_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_suspend_α:         mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_453_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_453_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n183_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n183_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n183_suspend_β:         mov              r11, 184;                            jmp   n184_call_prolog_α
                        .size            n183_suspend_bx, .-n183_suspend_bx
                        .type            n184_call_prolog_bx, @function
n184_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_prolog_α:     mov              r11, 185
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n185_var_ref_α
n184_call_prolog_β:     mov              r11, 185;                            jmp   area$2F2_ω
                        .size            n184_call_prolog_bx, .-n184_call_prolog_bx
                        .type            n185_var_ref_bx, @function
n185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n186_lit_string_α
                        .size            n185_var_ref_bx, .-n185_var_ref_bx
                        .type            n186_lit_string_bx, @function
n186_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n187_call_prolog_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "ethiopia"
                        .size            n186_lit_string_bx, .-n186_lit_string_bx
                        .type            n187_call_prolog_bx, @function
n187_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_prolog_α:     mov              r11, 188
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_458_2]
                                                                              jmp   .Lcall_prolog_α_458_3
.Lcall_prolog_α_458_2:  .quad            .Lcall_prolog_α_458_2_s
.Lcall_prolog_α_458_2_s:
                        .string          "ethiopia"
.Lcall_prolog_α_458_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n192_call_prolog_α
                                                                              jmp   n188_var_ref_α
n187_call_prolog_β:     mov              r11, 188;                            jmp   n192_call_prolog_α
                        .size            n187_call_prolog_bx, .-n187_call_prolog_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n189_lit_integer_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_461_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n190_call_prolog_α
.Llit_integer_α_461_0:  .quad            350
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_call_prolog_bx, @function
n190_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_prolog_α:     mov              r11, 191
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        movabs           rsi, 350
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n192_call_prolog_α
                                                                              jmp   n191_suspend_α
n190_call_prolog_β:     mov              r11, 191;                            jmp   n192_call_prolog_α
                        .size            n190_call_prolog_bx, .-n190_call_prolog_bx
                        .type            n191_suspend_bx, @function
n191_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_suspend_α:         mov              r11, 192
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_464_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_464_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n191_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n191_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n191_suspend_β:         mov              r11, 192;                            jmp   n192_call_prolog_α
                        .size            n191_suspend_bx, .-n191_suspend_bx
                        .type            n192_call_prolog_bx, @function
n192_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_prolog_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   n193_var_ref_α
n192_call_prolog_β:     mov              r11, 193;                            jmp   area$2F2_ω
                        .size            n192_call_prolog_bx, .-n192_call_prolog_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n194_lit_string_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_lit_string_bx, @function
n194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_468_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n195_call_prolog_α
.Llit_string_α_468_0:   .quad            .Llit_string_α_468_0_s
.Llit_string_α_468_0_s: .string          "argentina"
                        .size            n194_lit_string_bx, .-n194_lit_string_bx
                        .type            n195_call_prolog_bx, @function
n195_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_prolog_α:     mov              r11, 196
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_469_2]
                                                                              jmp   .Lcall_prolog_α_469_3
.Lcall_prolog_α_469_2:  .quad            .Lcall_prolog_α_469_2_s
.Lcall_prolog_α_469_2_s:
                        .string          "argentina"
.Lcall_prolog_α_469_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n200_call_prolog_α
                                                                              jmp   n196_var_ref_α
n195_call_prolog_β:     mov              r11, 196;                            jmp   n200_call_prolog_α
                        .size            n195_call_prolog_bx, .-n195_call_prolog_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n197_lit_integer_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n198_call_prolog_α
.Llit_integer_α_472_0:  .quad            1080
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_call_prolog_bx, @function
n198_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_prolog_α:     mov              r11, 199
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        movabs           rsi, 1080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n200_call_prolog_α
                                                                              jmp   n199_suspend_α
n198_call_prolog_β:     mov              r11, 199;                            jmp   n200_call_prolog_α
                        .size            n198_call_prolog_bx, .-n198_call_prolog_bx
                        .type            n199_suspend_bx, @function
n199_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_suspend_α:         mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_475_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_475_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n199_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n199_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   area$2F2_γ
n199_suspend_β:         mov              r11, 200;                            jmp   n200_call_prolog_α
                        .size            n199_suspend_bx, .-n199_suspend_bx
                        .type            n200_call_prolog_bx, @function
n200_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_prolog_α:     mov              r11, 201
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
                        cmp              al, 104;                             je    area$2F2_ω
                                                                              jmp   area$2F2_ω
n200_call_prolog_β:     mov              r11, 201;                            jmp   area$2F2_ω
                        .size            n200_call_prolog_bx, .-n200_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_β:
                                                                              jmp   n7_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Larea$2F2_α_476_50
                        mov              qword ptr [rsp + 5280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Larea$2F2_α_476_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5320]
                        add              rsp, 5344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_ω:
                        mov              rcx, qword ptr [rsp + 5328]
                        add              rsp, 5344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query$2F1:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              qword ptr [rsp + 1480], rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1456
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query$2F1_α_body:
                        lea              rax, [rip + n515_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        .type            n477_call_prolog_bx, @function
n477_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_call_prolog_α:     mov              r11, 202
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_517_102
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_517_101
.Lcall_prolog_α_517_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_517_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_517_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_517_101
.Lcall_prolog_α_517_100:
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
.Lcall_prolog_α_517_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n478_var_ref_α
n477_call_prolog_β:     mov              r11, 202;                            jmp   query$2F1_ω
                        .size            n477_call_prolog_bx, .-n477_call_prolog_bx
                        .type            n478_var_ref_bx, @function
n478_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n479_lit_string_α
                        .size            n478_var_ref_bx, .-n478_var_ref_bx
                        .type            n479_lit_string_bx, @function
n479_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_520_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n480_var_ref_α
.Llit_string_α_520_0:   .quad            .Llit_string_α_520_0_s
.Llit_string_α_520_0_s: .string          "."
                        .size            n479_lit_string_bx, .-n479_lit_string_bx
                        .type            n480_var_ref_bx, @function
n480_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n481_lit_string_α
                        .size            n480_var_ref_bx, .-n480_var_ref_bx
                        .type            n481_lit_string_bx, @function
n481_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n482_var_ref_α
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          "."
                        .size            n481_lit_string_bx, .-n481_lit_string_bx
                        .type            n482_var_ref_bx, @function
n482_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n483_lit_string_α
                        .size            n482_var_ref_bx, .-n482_var_ref_bx
                        .type            n483_lit_string_bx, @function
n483_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_526_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n484_var_ref_α
.Llit_string_α_526_0:   .quad            .Llit_string_α_526_0_s
.Llit_string_α_526_0_s: .string          "."
                        .size            n483_lit_string_bx, .-n483_lit_string_bx
                        .type            n484_var_ref_bx, @function
n484_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n485_lit_string_α
                        .size            n484_var_ref_bx, .-n484_var_ref_bx
                        .type            n485_lit_string_bx, @function
n485_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_529_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n486_var_ref_α
.Llit_string_α_529_0:   .quad            .Llit_string_α_529_0_s
.Llit_string_α_529_0_s: .string          "."
                        .size            n485_lit_string_bx, .-n485_lit_string_bx
                        .type            n486_var_ref_bx, @function
n486_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n487_lit_string_α
                        .size            n486_var_ref_bx, .-n486_var_ref_bx
                        .type            n487_lit_string_bx, @function
n487_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_532_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n488_call_prolog_α
.Llit_string_α_532_0:   .quad            .Llit_string_α_532_0_s
.Llit_string_α_532_0_s: .string          "[]"
                        .size            n487_lit_string_bx, .-n487_lit_string_bx
                        .type            n488_call_prolog_bx, @function
n488_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_call_prolog_α:     mov              r11, 213
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n489_call_prolog_α
n488_call_prolog_β:     mov              r11, 213;                            jmp   query$2F1_ω
                        .size            n488_call_prolog_bx, .-n488_call_prolog_bx
                        .type            n489_call_prolog_bx, @function
n489_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n490_call_prolog_α
n489_call_prolog_β:     mov              r11, 214;                            jmp   query$2F1_ω
                        .size            n489_call_prolog_bx, .-n489_call_prolog_bx
                        .type            n490_call_prolog_bx, @function
n490_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_call_prolog_α:     mov              r11, 215
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n491_call_prolog_α
n490_call_prolog_β:     mov              r11, 215;                            jmp   query$2F1_ω
                        .size            n490_call_prolog_bx, .-n490_call_prolog_bx
                        .type            n491_call_prolog_bx, @function
n491_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_call_prolog_α:     mov              r11, 216
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n492_call_prolog_α
n491_call_prolog_β:     mov              r11, 216;                            jmp   n516_call_prolog_α
                        .size            n491_call_prolog_bx, .-n491_call_prolog_bx
                        .type            n492_call_prolog_bx, @function
n492_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_call_prolog_α:     mov              r11, 217
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        lea              r8, [rsp + 816]
.Lcall_prolog_α_537_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_537_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_537_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_537_40
.Lcall_prolog_α_537_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_537_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_537_40
.Lcall_prolog_α_537_56: cmp              al, 72;                              jne   .Lcall_prolog_α_537_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_537_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_537_40
.Lcall_prolog_α_537_41: lea              r9, [rsp + 832]
.Lcall_prolog_α_537_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_537_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_537_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_537_42
.Lcall_prolog_α_537_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_537_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_537_42
.Lcall_prolog_α_537_58: cmp              al, 72;                              jne   .Lcall_prolog_α_537_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_537_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_537_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_537_42
.Lcall_prolog_α_537_43: cmp              r8, r9;                              je    .Lcall_prolog_α_537_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_537_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_537_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_537_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_537_44
                                                                              jmp   .Lcall_prolog_α_537_45
.Lcall_prolog_α_537_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_537_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_537_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_537_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_537_53
                                                                              jmp   .Lcall_prolog_α_537_46
.Lcall_prolog_α_537_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_537_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_537_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_537_51
.Lcall_prolog_α_537_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_537_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_537_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_537_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_537_47
                                                                              jmp   .Lcall_prolog_α_537_48
.Lcall_prolog_α_537_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_537_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_537_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_537_51
.Lcall_prolog_α_537_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_537_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_537_53
                                                                              jmp   .Lcall_prolog_α_537_52
.Lcall_prolog_α_537_49: cmp              dl, 80;                              je    .Lcall_prolog_α_537_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_537_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_537_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_537_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_537_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_537_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_537_51
                                                                              jmp   .Lcall_prolog_α_537_52
.Lcall_prolog_α_537_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_537_53
.Lcall_prolog_α_537_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_537_54
.Lcall_prolog_α_537_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_537_54
.Lcall_prolog_α_537_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_537_54: mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n493_var_ref_α
n492_call_prolog_β:     mov              r11, 217;                            jmp   n516_call_prolog_α
                        .size            n492_call_prolog_bx, .-n492_call_prolog_bx
                        .type            n493_var_ref_bx, @function
n493_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n494_var_ref_α
                        .size            n493_var_ref_bx, .-n493_var_ref_bx
                        .type            n494_var_ref_bx, @function
n494_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n495_call_proc_staged_α
                        .size            n494_var_ref_bx, .-n494_var_ref_bx
                        .type            n495_call_proc_staged_bx, @function
n495_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_call_proc_staged_α:
                        mov              r11, 220
                        mov              qword ptr [rsp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_200
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_543_201
.Lcall_proc_staged_α_543_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_202
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_543_203
.Lcall_proc_staged_α_543_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_543_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_543_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_543_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_543_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 744], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_543_5
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_543_6
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_543_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
.Lcall_proc_staged_α_543_29:
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n496_var_ref_α
n495_call_proc_staged_β:
                        mov              r11, 220
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 736], 0
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n516_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              ecx, 48
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n516_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_543_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_543_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_543_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n496_var_ref_α
.Lcall_proc_staged_β_543_0:
                        .quad            .Lcall_proc_staged_β_543_0_s
.Lcall_proc_staged_β_543_0_s:
                        .string          "density/2"
                        .size            n495_call_proc_staged_bx, .-n495_call_proc_staged_bx
                        .type            n496_var_ref_bx, @function
n496_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n497_var_ref_α
                        .size            n496_var_ref_bx, .-n496_var_ref_bx
                        .type            n497_var_ref_bx, @function
n497_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n498_call_proc_staged_α
                        .size            n497_var_ref_bx, .-n497_var_ref_bx
                        .type            n498_call_proc_staged_bx, @function
n498_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_proc_staged_α:
                        mov              r11, 223
                        mov              qword ptr [rsp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_549_200
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_549_201
.Lcall_proc_staged_α_549_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_549_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_549_202
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_549_203
.Lcall_proc_staged_α_549_202:
                        mov              edi, 1
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
.Lcall_proc_staged_α_549_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_549_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_549_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_549_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_549_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_549_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_549_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 632], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 624]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_549_5
                        mov              qword ptr [rsp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 624]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_549_6
                        mov              qword ptr [rsp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_549_2
.Lcall_proc_staged_α_549_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lcall_proc_staged_α_549_29:
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n495_call_proc_staged_β
                                                                              jmp   n499_var_α
n498_call_proc_staged_β:
                        mov              r11, 223
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 624], 0
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n495_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              ecx, 48
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
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
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n495_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_549_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_549_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_549_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_549_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_549_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n495_call_proc_staged_β
                                                                              jmp   n499_var_α
.Lcall_proc_staged_β_549_0:
                        .quad            .Lcall_proc_staged_β_549_0_s
.Lcall_proc_staged_β_549_0_s:
                        .string          "density/2"
                        .size            n498_call_proc_staged_bx, .-n498_call_proc_staged_bx
                        .type            n499_var_bx, @function
n499_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 552], rax;          jmp   n500_var_α
                        .size            n499_var_bx, .-n499_var_bx
                        .type            n500_var_bx, @function
n500_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             mov              r11, 225
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 568], rax;          jmp   n501_call_prolog_α
                        .size            n500_var_bx, .-n500_var_bx
                        .type            n501_call_prolog_bx, @function
n501_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_prolog_α:     mov              r11, 226
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n498_call_proc_staged_β
                                                                              jmp   n502_var_ref_α
n501_call_prolog_β:     mov              r11, 226;                            jmp   n498_call_proc_staged_β
                        .size            n501_call_prolog_bx, .-n501_call_prolog_bx
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n503_lit_integer_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_lit_integer_bx, @function
n503_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:     mov              r11, 228
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_557_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n504_var_α
.Llit_integer_α_557_0:  .quad            20
                        .size            n503_lit_integer_bx, .-n503_lit_integer_bx
                        .type            n504_var_bx, @function
n504_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 488], rax;          jmp   n505_call_prolog_α
                        .size            n504_var_bx, .-n504_var_bx
                        .type            n505_call_prolog_bx, @function
n505_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_call_prolog_α:     mov              r11, 230
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
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
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n506_call_prolog_α
n505_call_prolog_β:     mov              r11, 230;                            jmp   n516_call_prolog_α
                        .size            n505_call_prolog_bx, .-n505_call_prolog_bx
                        .type            n506_call_prolog_bx, @function
n506_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_prolog_α:     mov              r11, 231
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n498_call_proc_staged_β
                                                                              jmp   n507_var_ref_α
n506_call_prolog_β:     mov              r11, 231;                            jmp   n498_call_proc_staged_β
                        .size            n506_call_prolog_bx, .-n506_call_prolog_bx
                        .type            n507_var_ref_bx, @function
n507_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n508_lit_integer_α
                        .size            n507_var_ref_bx, .-n507_var_ref_bx
                        .type            n508_lit_integer_bx, @function
n508_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_564_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n509_var_α
.Llit_integer_α_564_0:  .quad            21
                        .size            n508_lit_integer_bx, .-n508_lit_integer_bx
                        .type            n509_var_bx, @function
n509_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 328], rax;          jmp   n510_call_prolog_α
                        .size            n509_var_bx, .-n509_var_bx
                        .type            n510_call_prolog_bx, @function
n510_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_prolog_α:     mov              r11, 235
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n516_call_prolog_α
                                                                              jmp   n511_call_prolog_α
n510_call_prolog_β:     mov              r11, 235;                            jmp   n516_call_prolog_α
                        .size            n510_call_prolog_bx, .-n510_call_prolog_bx
                        .type            n511_call_prolog_bx, @function
n511_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_call_prolog_α:     mov              r11, 236
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n498_call_proc_staged_β
                                                                              jmp   n512_var_α
n511_call_prolog_β:     mov              r11, 236;                            jmp   n498_call_proc_staged_β
                        .size            n511_call_prolog_bx, .-n511_call_prolog_bx
                        .type            n512_var_bx, @function
n512_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 152], rax;          jmp   n513_var_α
                        .size            n512_var_bx, .-n512_var_bx
                        .type            n513_var_bx, @function
n513_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 168], rax;          jmp   n514_call_prolog_α
                        .size            n513_var_bx, .-n513_var_bx
                        .type            n514_call_prolog_bx, @function
n514_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_call_prolog_α:     mov              r11, 239
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n498_call_proc_staged_β
                                                                              jmp   n515_suspend_α
n514_call_prolog_β:     mov              r11, 239;                            jmp   n498_call_proc_staged_β
                        .size            n514_call_prolog_bx, .-n514_call_prolog_bx
                        .type            n515_suspend_bx, @function
n515_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_suspend_α:         mov              r11, 240
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_575_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lsuspend_α_575_61:     mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n515_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n515_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   query$2F1_γ
n515_suspend_β:         mov              r11, 240;                            jmp   n498_call_proc_staged_β
                        .size            n515_suspend_bx, .-n515_suspend_bx
                        .type            n516_call_prolog_bx, @function
n516_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_prolog_α:     mov              r11, 241
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
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   query$2F1_ω
n516_call_prolog_β:     mov              r11, 241;                            jmp   query$2F1_ω
                        .size            n516_call_prolog_bx, .-n516_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_β:
                                                                              jmp   n515_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lquery$2F1_α_576_50
                        mov              qword ptr [rsp + 1328], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lquery$2F1_α_576_50:   mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1464]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_ω:
                        mov              rcx, qword ptr [rsp + 1472]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pop$2F2:
                        sub              rsp, 5344
                        mov              qword ptr [rsp + 5320], rcx
                        mov              qword ptr [rsp + 5328], rdx
                        mov              qword ptr [rsp + 5336], rsp
                        mov              rdi, rsp
                        mov              esi, 5280
                        mov              edx, 5312
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
pop$2F2_α_body:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        .type            n577_call_prolog_bx, @function
n577_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_prolog_α:     mov              r11, 242
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_778_102
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_778_101
.Lcall_prolog_α_778_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_778_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_778_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_778_101
.Lcall_prolog_α_778_100:
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
.Lcall_prolog_α_778_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n578_var_ref_α
n577_call_prolog_β:     mov              r11, 242;                            jmp   pop$2F2_ω
                        .size            n577_call_prolog_bx, .-n577_call_prolog_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n579_lit_string_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_lit_string_bx, @function
n579_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_781_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n580_call_prolog_α
.Llit_string_α_781_0:   .quad            .Llit_string_α_781_0_s
.Llit_string_α_781_0_s: .string          "china"
                        .size            n579_lit_string_bx, .-n579_lit_string_bx
                        .type            n580_call_prolog_bx, @function
n580_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_call_prolog_α:     mov              r11, 245
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_782_2]
                                                                              jmp   .Lcall_prolog_α_782_3
.Lcall_prolog_α_782_2:  .quad            .Lcall_prolog_α_782_2_s
.Lcall_prolog_α_782_2_s:
                        .string          "china"
.Lcall_prolog_α_782_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    n585_call_prolog_α
                                                                              jmp   n581_var_ref_α
n580_call_prolog_β:     mov              r11, 245;                            jmp   n585_call_prolog_α
                        .size            n580_call_prolog_bx, .-n580_call_prolog_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n582_lit_integer_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_lit_integer_bx, @function
n582_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_785_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n583_call_prolog_α
.Llit_integer_α_785_0:  .quad            8250
                        .size            n582_lit_integer_bx, .-n582_lit_integer_bx
                        .type            n583_call_prolog_bx, @function
n583_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_prolog_α:     mov              r11, 248
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5144], rax
                        lea              rdi, [rsp + 5136]
                        movabs           rsi, 8250
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              al, 104;                             je    n585_call_prolog_α
                                                                              jmp   n584_suspend_α
n583_call_prolog_β:     mov              r11, 248;                            jmp   n585_call_prolog_α
                        .size            n583_call_prolog_bx, .-n583_call_prolog_bx
                        .type            n584_suspend_bx, @function
n584_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_suspend_α:         mov              r11, 249
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_788_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_788_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n584_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n584_suspend_β:         mov              r11, 249;                            jmp   n585_call_prolog_α
                        .size            n584_suspend_bx, .-n584_suspend_bx
                        .type            n585_call_prolog_bx, @function
n585_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_call_prolog_α:     mov              r11, 250
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n586_var_ref_α
n585_call_prolog_β:     mov              r11, 250;                            jmp   pop$2F2_ω
                        .size            n585_call_prolog_bx, .-n585_call_prolog_bx
                        .type            n586_var_ref_bx, @function
n586_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n587_lit_string_α
                        .size            n586_var_ref_bx, .-n586_var_ref_bx
                        .type            n587_lit_string_bx, @function
n587_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n588_call_prolog_α
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          "india"
                        .size            n587_lit_string_bx, .-n587_lit_string_bx
                        .type            n588_call_prolog_bx, @function
n588_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_call_prolog_α:     mov              r11, 253
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_793_2]
                                                                              jmp   .Lcall_prolog_α_793_3
.Lcall_prolog_α_793_2:  .quad            .Lcall_prolog_α_793_2_s
.Lcall_prolog_α_793_2_s:
                        .string          "india"
.Lcall_prolog_α_793_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              al, 104;                             je    n593_call_prolog_α
                                                                              jmp   n589_var_ref_α
n588_call_prolog_β:     mov              r11, 253;                            jmp   n593_call_prolog_α
                        .size            n588_call_prolog_bx, .-n588_call_prolog_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n590_lit_integer_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_lit_integer_bx, @function
n590_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_integer_α:     mov              r11, 255
                        mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_796_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n591_call_prolog_α
.Llit_integer_α_796_0:  .quad            5863
                        .size            n590_lit_integer_bx, .-n590_lit_integer_bx
                        .type            n591_call_prolog_bx, @function
n591_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_call_prolog_α:     mov              r11, 256
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4936], rax
                        lea              rdi, [rsp + 4928]
                        movabs           rsi, 5863
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    n593_call_prolog_α
                                                                              jmp   n592_suspend_α
n591_call_prolog_β:     mov              r11, 256;                            jmp   n593_call_prolog_α
                        .size            n591_call_prolog_bx, .-n591_call_prolog_bx
                        .type            n592_suspend_bx, @function
n592_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_suspend_α:         mov              r11, 257
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_799_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_799_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n592_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n592_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n592_suspend_β:         mov              r11, 257;                            jmp   n593_call_prolog_α
                        .size            n592_suspend_bx, .-n592_suspend_bx
                        .type            n593_call_prolog_bx, @function
n593_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_call_prolog_α:     mov              r11, 258
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4888], rax
                        lea              rdi, [rsp + 4880]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n594_var_ref_α
n593_call_prolog_β:     mov              r11, 258;                            jmp   pop$2F2_ω
                        .size            n593_call_prolog_bx, .-n593_call_prolog_bx
                        .type            n594_var_ref_bx, @function
n594_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx;         jmp   n595_lit_string_α
                        .size            n594_var_ref_bx, .-n594_var_ref_bx
                        .type            n595_lit_string_bx, @function
n595_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_803_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n596_call_prolog_α
.Llit_string_α_803_0:   .quad            .Llit_string_α_803_0_s
.Llit_string_α_803_0_s: .string          "ussr"
                        .size            n595_lit_string_bx, .-n595_lit_string_bx
                        .type            n596_call_prolog_bx, @function
n596_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_prolog_α:     mov              r11, 261
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4808], rax
                        lea              rdi, [rsp + 4800]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_804_2]
                                                                              jmp   .Lcall_prolog_α_804_3
.Lcall_prolog_α_804_2:  .quad            .Lcall_prolog_α_804_2_s
.Lcall_prolog_α_804_2_s:
                        .string          "ussr"
.Lcall_prolog_α_804_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              al, 104;                             je    n601_call_prolog_α
                                                                              jmp   n597_var_ref_α
n596_call_prolog_β:     mov              r11, 261;                            jmp   n601_call_prolog_α
                        .size            n596_call_prolog_bx, .-n596_call_prolog_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n598_lit_integer_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_lit_integer_bx, @function
n598_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_807_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n599_call_prolog_α
.Llit_integer_α_807_0:  .quad            2521
                        .size            n598_lit_integer_bx, .-n598_lit_integer_bx
                        .type            n599_call_prolog_bx, @function
n599_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_prolog_α:     mov              r11, 264
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4728], rax
                        lea              rdi, [rsp + 4720]
                        movabs           rsi, 2521
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              al, 104;                             je    n601_call_prolog_α
                                                                              jmp   n600_suspend_α
n599_call_prolog_β:     mov              r11, 264;                            jmp   n601_call_prolog_α
                        .size            n599_call_prolog_bx, .-n599_call_prolog_bx
                        .type            n600_suspend_bx, @function
n600_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_suspend_α:         mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_810_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_810_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n600_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n600_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n600_suspend_β:         mov              r11, 265;                            jmp   n601_call_prolog_α
                        .size            n600_suspend_bx, .-n600_suspend_bx
                        .type            n601_call_prolog_bx, @function
n601_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4680], rax
                        lea              rdi, [rsp + 4672]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n602_var_ref_α
n601_call_prolog_β:     mov              r11, 266;                            jmp   pop$2F2_ω
                        .size            n601_call_prolog_bx, .-n601_call_prolog_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n603_lit_string_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_lit_string_bx, @function
n603_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 4640], 2            # result
                        mov              dword ptr [rsp + 4644], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_814_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n604_call_prolog_α
.Llit_string_α_814_0:   .quad            .Llit_string_α_814_0_s
.Llit_string_α_814_0_s: .string          "usa"
                        .size            n603_lit_string_bx, .-n603_lit_string_bx
                        .type            n604_call_prolog_bx, @function
n604_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_call_prolog_α:     mov              r11, 269
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_815_2]
                                                                              jmp   .Lcall_prolog_α_815_3
.Lcall_prolog_α_815_2:  .quad            .Lcall_prolog_α_815_2_s
.Lcall_prolog_α_815_2_s:
                        .string          "usa"
.Lcall_prolog_α_815_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n605_var_ref_α
n604_call_prolog_β:     mov              r11, 269;                            jmp   n609_call_prolog_α
                        .size            n604_call_prolog_bx, .-n604_call_prolog_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n606_lit_integer_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_lit_integer_bx, @function
n606_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:     mov              r11, 271
                        mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_818_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n607_call_prolog_α
.Llit_integer_α_818_0:  .quad            2119
                        .size            n606_lit_integer_bx, .-n606_lit_integer_bx
                        .type            n607_call_prolog_bx, @function
n607_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_prolog_α:     mov              r11, 272
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4520], rax
                        lea              rdi, [rsp + 4512]
                        movabs           rsi, 2119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n608_suspend_α
n607_call_prolog_β:     mov              r11, 272;                            jmp   n609_call_prolog_α
                        .size            n607_call_prolog_bx, .-n607_call_prolog_bx
                        .type            n608_suspend_bx, @function
n608_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:         mov              r11, 273
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_821_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_821_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n608_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n608_suspend_β:         mov              r11, 273;                            jmp   n609_call_prolog_α
                        .size            n608_suspend_bx, .-n608_suspend_bx
                        .type            n609_call_prolog_bx, @function
n609_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_prolog_α:     mov              r11, 274
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4472], rax
                        lea              rdi, [rsp + 4464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n610_var_ref_α
n609_call_prolog_β:     mov              r11, 274;                            jmp   pop$2F2_ω
                        .size            n609_call_prolog_bx, .-n609_call_prolog_bx
                        .type            n610_var_ref_bx, @function
n610_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n611_lit_string_α
                        .size            n610_var_ref_bx, .-n610_var_ref_bx
                        .type            n611_lit_string_bx, @function
n611_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_825_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n612_call_prolog_α
.Llit_string_α_825_0:   .quad            .Llit_string_α_825_0_s
.Llit_string_α_825_0_s: .string          "indonesia"
                        .size            n611_lit_string_bx, .-n611_lit_string_bx
                        .type            n612_call_prolog_bx, @function
n612_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_prolog_α:     mov              r11, 277
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_826_2]
                                                                              jmp   .Lcall_prolog_α_826_3
.Lcall_prolog_α_826_2:  .quad            .Lcall_prolog_α_826_2_s
.Lcall_prolog_α_826_2_s:
                        .string          "indonesia"
.Lcall_prolog_α_826_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              al, 104;                             je    n617_call_prolog_α
                                                                              jmp   n613_var_ref_α
n612_call_prolog_β:     mov              r11, 277;                            jmp   n617_call_prolog_α
                        .size            n612_call_prolog_bx, .-n612_call_prolog_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n614_lit_integer_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_lit_integer_bx, @function
n614_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_829_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n615_call_prolog_α
.Llit_integer_α_829_0:  .quad            1276
                        .size            n614_lit_integer_bx, .-n614_lit_integer_bx
                        .type            n615_call_prolog_bx, @function
n615_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_call_prolog_α:     mov              r11, 280
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        movabs           rsi, 1276
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n617_call_prolog_α
                                                                              jmp   n616_suspend_α
n615_call_prolog_β:     mov              r11, 280;                            jmp   n617_call_prolog_α
                        .size            n615_call_prolog_bx, .-n615_call_prolog_bx
                        .type            n616_suspend_bx, @function
n616_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_suspend_α:         mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_832_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_832_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n616_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n616_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n616_suspend_β:         mov              r11, 281;                            jmp   n617_call_prolog_α
                        .size            n616_suspend_bx, .-n616_suspend_bx
                        .type            n617_call_prolog_bx, @function
n617_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_call_prolog_α:     mov              r11, 282
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4264], rax
                        lea              rdi, [rsp + 4256]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n618_var_ref_α
n617_call_prolog_β:     mov              r11, 282;                            jmp   pop$2F2_ω
                        .size            n617_call_prolog_bx, .-n617_call_prolog_bx
                        .type            n618_var_ref_bx, @function
n618_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n619_lit_string_α
                        .size            n618_var_ref_bx, .-n618_var_ref_bx
                        .type            n619_lit_string_bx, @function
n619_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_836_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n620_call_prolog_α
.Llit_string_α_836_0:   .quad            .Llit_string_α_836_0_s
.Llit_string_α_836_0_s: .string          "japan"
                        .size            n619_lit_string_bx, .-n619_lit_string_bx
                        .type            n620_call_prolog_bx, @function
n620_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_call_prolog_α:     mov              r11, 285
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_837_2]
                                                                              jmp   .Lcall_prolog_α_837_3
.Lcall_prolog_α_837_2:  .quad            .Lcall_prolog_α_837_2_s
.Lcall_prolog_α_837_2_s:
                        .string          "japan"
.Lcall_prolog_α_837_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n625_call_prolog_α
                                                                              jmp   n621_var_ref_α
n620_call_prolog_β:     mov              r11, 285;                            jmp   n625_call_prolog_α
                        .size            n620_call_prolog_bx, .-n620_call_prolog_bx
                        .type            n621_var_ref_bx, @function
n621_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n622_lit_integer_α
                        .size            n621_var_ref_bx, .-n621_var_ref_bx
                        .type            n622_lit_integer_bx, @function
n622_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_integer_α:     mov              r11, 287
                        mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_840_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n623_call_prolog_α
.Llit_integer_α_840_0:  .quad            1097
                        .size            n622_lit_integer_bx, .-n622_lit_integer_bx
                        .type            n623_call_prolog_bx, @function
n623_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_prolog_α:     mov              r11, 288
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rdi, [rsp + 4096]
                        movabs           rsi, 1097
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n625_call_prolog_α
                                                                              jmp   n624_suspend_α
n623_call_prolog_β:     mov              r11, 288;                            jmp   n625_call_prolog_α
                        .size            n623_call_prolog_bx, .-n623_call_prolog_bx
                        .type            n624_suspend_bx, @function
n624_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_suspend_α:         mov              r11, 289
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_843_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_843_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n624_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n624_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n624_suspend_β:         mov              r11, 289;                            jmp   n625_call_prolog_α
                        .size            n624_suspend_bx, .-n624_suspend_bx
                        .type            n625_call_prolog_bx, @function
n625_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_call_prolog_α:     mov              r11, 290
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4056], rax
                        lea              rdi, [rsp + 4048]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n626_var_ref_α
n625_call_prolog_β:     mov              r11, 290;                            jmp   pop$2F2_ω
                        .size            n625_call_prolog_bx, .-n625_call_prolog_bx
                        .type            n626_var_ref_bx, @function
n626_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx;         jmp   n627_lit_string_α
                        .size            n626_var_ref_bx, .-n626_var_ref_bx
                        .type            n627_lit_string_bx, @function
n627_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 4016], 2            # result
                        mov              dword ptr [rsp + 4020], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_847_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n628_call_prolog_α
.Llit_string_α_847_0:   .quad            .Llit_string_α_847_0_s
.Llit_string_α_847_0_s: .string          "brazil"
                        .size            n627_lit_string_bx, .-n627_lit_string_bx
                        .type            n628_call_prolog_bx, @function
n628_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_call_prolog_α:     mov              r11, 293
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_848_2]
                                                                              jmp   .Lcall_prolog_α_848_3
.Lcall_prolog_α_848_2:  .quad            .Lcall_prolog_α_848_2_s
.Lcall_prolog_α_848_2_s:
                        .string          "brazil"
.Lcall_prolog_α_848_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    n633_call_prolog_α
                                                                              jmp   n629_var_ref_α
n628_call_prolog_β:     mov              r11, 293;                            jmp   n633_call_prolog_α
                        .size            n628_call_prolog_bx, .-n628_call_prolog_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n630_lit_integer_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_lit_integer_bx, @function
n630_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:     mov              r11, 295
                        mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_851_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n631_call_prolog_α
.Llit_integer_α_851_0:  .quad            1042
                        .size            n630_lit_integer_bx, .-n630_lit_integer_bx
                        .type            n631_call_prolog_bx, @function
n631_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_call_prolog_α:     mov              r11, 296
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        lea              rdi, [rsp + 3888]
                        movabs           rsi, 1042
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              al, 104;                             je    n633_call_prolog_α
                                                                              jmp   n632_suspend_α
n631_call_prolog_β:     mov              r11, 296;                            jmp   n633_call_prolog_α
                        .size            n631_call_prolog_bx, .-n631_call_prolog_bx
                        .type            n632_suspend_bx, @function
n632_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_suspend_α:         mov              r11, 297
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_854_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_854_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n632_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n632_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n632_suspend_β:         mov              r11, 297;                            jmp   n633_call_prolog_α
                        .size            n632_suspend_bx, .-n632_suspend_bx
                        .type            n633_call_prolog_bx, @function
n633_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_call_prolog_α:     mov              r11, 298
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3848], rax
                        lea              rdi, [rsp + 3840]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n634_var_ref_α
n633_call_prolog_β:     mov              r11, 298;                            jmp   pop$2F2_ω
                        .size            n633_call_prolog_bx, .-n633_call_prolog_bx
                        .type            n634_var_ref_bx, @function
n634_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx;         jmp   n635_lit_string_α
                        .size            n634_var_ref_bx, .-n634_var_ref_bx
                        .type            n635_lit_string_bx, @function
n635_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n636_call_prolog_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "bangladesh"
                        .size            n635_lit_string_bx, .-n635_lit_string_bx
                        .type            n636_call_prolog_bx, @function
n636_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_call_prolog_α:     mov              r11, 301
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        lea              rdi, [rsp + 3760]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_859_2]
                                                                              jmp   .Lcall_prolog_α_859_3
.Lcall_prolog_α_859_2:  .quad            .Lcall_prolog_α_859_2_s
.Lcall_prolog_α_859_2_s:
                        .string          "bangladesh"
.Lcall_prolog_α_859_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n641_call_prolog_α
                                                                              jmp   n637_var_ref_α
n636_call_prolog_β:     mov              r11, 301;                            jmp   n641_call_prolog_α
                        .size            n636_call_prolog_bx, .-n636_call_prolog_bx
                        .type            n637_var_ref_bx, @function
n637_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n638_lit_integer_α
                        .size            n637_var_ref_bx, .-n637_var_ref_bx
                        .type            n638_lit_integer_bx, @function
n638_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_862_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n639_call_prolog_α
.Llit_integer_α_862_0:  .quad            750
                        .size            n638_lit_integer_bx, .-n638_lit_integer_bx
                        .type            n639_call_prolog_bx, @function
n639_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_prolog_α:     mov              r11, 304
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3688], rax
                        lea              rdi, [rsp + 3680]
                        movabs           rsi, 750
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    n641_call_prolog_α
                                                                              jmp   n640_suspend_α
n639_call_prolog_β:     mov              r11, 304;                            jmp   n641_call_prolog_α
                        .size            n639_call_prolog_bx, .-n639_call_prolog_bx
                        .type            n640_suspend_bx, @function
n640_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_suspend_α:         mov              r11, 305
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_865_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_865_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n640_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n640_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n640_suspend_β:         mov              r11, 305;                            jmp   n641_call_prolog_α
                        .size            n640_suspend_bx, .-n640_suspend_bx
                        .type            n641_call_prolog_bx, @function
n641_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_prolog_α:     mov              r11, 306
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n642_var_ref_α
n641_call_prolog_β:     mov              r11, 306;                            jmp   pop$2F2_ω
                        .size            n641_call_prolog_bx, .-n641_call_prolog_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n643_lit_string_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_lit_string_bx, @function
n643_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n644_call_prolog_α
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "pakistan"
                        .size            n643_lit_string_bx, .-n643_lit_string_bx
                        .type            n644_call_prolog_bx, @function
n644_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_call_prolog_α:     mov              r11, 309
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_870_2]
                                                                              jmp   .Lcall_prolog_α_870_3
.Lcall_prolog_α_870_2:  .quad            .Lcall_prolog_α_870_2_s
.Lcall_prolog_α_870_2_s:
                        .string          "pakistan"
.Lcall_prolog_α_870_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n649_call_prolog_α
                                                                              jmp   n645_var_ref_α
n644_call_prolog_β:     mov              r11, 309;                            jmp   n649_call_prolog_α
                        .size            n644_call_prolog_bx, .-n644_call_prolog_bx
                        .type            n645_var_ref_bx, @function
n645_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n646_lit_integer_α
                        .size            n645_var_ref_bx, .-n645_var_ref_bx
                        .type            n646_lit_integer_bx, @function
n646_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_integer_α:     mov              r11, 311
                        mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_873_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n647_call_prolog_α
.Llit_integer_α_873_0:  .quad            682
                        .size            n646_lit_integer_bx, .-n646_lit_integer_bx
                        .type            n647_call_prolog_bx, @function
n647_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_call_prolog_α:     mov              r11, 312
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3480], rax
                        lea              rdi, [rsp + 3472]
                        movabs           rsi, 682
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n649_call_prolog_α
                                                                              jmp   n648_suspend_α
n647_call_prolog_β:     mov              r11, 312;                            jmp   n649_call_prolog_α
                        .size            n647_call_prolog_bx, .-n647_call_prolog_bx
                        .type            n648_suspend_bx, @function
n648_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_suspend_α:         mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_876_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_876_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n648_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n648_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n648_suspend_β:         mov              r11, 313;                            jmp   n649_call_prolog_α
                        .size            n648_suspend_bx, .-n648_suspend_bx
                        .type            n649_call_prolog_bx, @function
n649_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_call_prolog_α:     mov              r11, 314
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n650_var_ref_α
n649_call_prolog_β:     mov              r11, 314;                            jmp   pop$2F2_ω
                        .size            n649_call_prolog_bx, .-n649_call_prolog_bx
                        .type            n650_var_ref_bx, @function
n650_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n651_lit_string_α
                        .size            n650_var_ref_bx, .-n650_var_ref_bx
                        .type            n651_lit_string_bx, @function
n651_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n652_call_prolog_α
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "w_germany"
                        .size            n651_lit_string_bx, .-n651_lit_string_bx
                        .type            n652_call_prolog_bx, @function
n652_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_call_prolog_α:     mov              r11, 317
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_881_2]
                                                                              jmp   .Lcall_prolog_α_881_3
.Lcall_prolog_α_881_2:  .quad            .Lcall_prolog_α_881_2_s
.Lcall_prolog_α_881_2_s:
                        .string          "w_germany"
.Lcall_prolog_α_881_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    n657_call_prolog_α
                                                                              jmp   n653_var_ref_α
n652_call_prolog_β:     mov              r11, 317;                            jmp   n657_call_prolog_α
                        .size            n652_call_prolog_bx, .-n652_call_prolog_bx
                        .type            n653_var_ref_bx, @function
n653_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n654_lit_integer_α
                        .size            n653_var_ref_bx, .-n653_var_ref_bx
                        .type            n654_lit_integer_bx, @function
n654_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_884_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n655_call_prolog_α
.Llit_integer_α_884_0:  .quad            620
                        .size            n654_lit_integer_bx, .-n654_lit_integer_bx
                        .type            n655_call_prolog_bx, @function
n655_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_call_prolog_α:     mov              r11, 320
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        lea              rdi, [rsp + 3264]
                        movabs           rsi, 620
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n657_call_prolog_α
                                                                              jmp   n656_suspend_α
n655_call_prolog_β:     mov              r11, 320;                            jmp   n657_call_prolog_α
                        .size            n655_call_prolog_bx, .-n655_call_prolog_bx
                        .type            n656_suspend_bx, @function
n656_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_suspend_α:         mov              r11, 321
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_887_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_887_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n656_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n656_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n656_suspend_β:         mov              r11, 321;                            jmp   n657_call_prolog_α
                        .size            n656_suspend_bx, .-n656_suspend_bx
                        .type            n657_call_prolog_bx, @function
n657_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_prolog_α:     mov              r11, 322
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
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n658_var_ref_α
n657_call_prolog_β:     mov              r11, 322;                            jmp   pop$2F2_ω
                        .size            n657_call_prolog_bx, .-n657_call_prolog_bx
                        .type            n658_var_ref_bx, @function
n658_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n659_lit_string_α
                        .size            n658_var_ref_bx, .-n658_var_ref_bx
                        .type            n659_lit_string_bx, @function
n659_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n660_call_prolog_α
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "nigeria"
                        .size            n659_lit_string_bx, .-n659_lit_string_bx
                        .type            n660_call_prolog_bx, @function
n660_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_call_prolog_α:     mov              r11, 325
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_892_2]
                                                                              jmp   .Lcall_prolog_α_892_3
.Lcall_prolog_α_892_2:  .quad            .Lcall_prolog_α_892_2_s
.Lcall_prolog_α_892_2_s:
                        .string          "nigeria"
.Lcall_prolog_α_892_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n665_call_prolog_α
                                                                              jmp   n661_var_ref_α
n660_call_prolog_β:     mov              r11, 325;                            jmp   n665_call_prolog_α
                        .size            n660_call_prolog_bx, .-n660_call_prolog_bx
                        .type            n661_var_ref_bx, @function
n661_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n662_lit_integer_α
                        .size            n661_var_ref_bx, .-n661_var_ref_bx
                        .type            n662_lit_integer_bx, @function
n662_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_integer_α:     mov              r11, 327
                        mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_895_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n663_call_prolog_α
.Llit_integer_α_895_0:  .quad            613
                        .size            n662_lit_integer_bx, .-n662_lit_integer_bx
                        .type            n663_call_prolog_bx, @function
n663_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_call_prolog_α:     mov              r11, 328
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        lea              rdi, [rsp + 3056]
                        movabs           rsi, 613
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n665_call_prolog_α
                                                                              jmp   n664_suspend_α
n663_call_prolog_β:     mov              r11, 328;                            jmp   n665_call_prolog_α
                        .size            n663_call_prolog_bx, .-n663_call_prolog_bx
                        .type            n664_suspend_bx, @function
n664_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_suspend_α:         mov              r11, 329
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_898_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_898_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n664_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n664_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n664_suspend_β:         mov              r11, 329;                            jmp   n665_call_prolog_α
                        .size            n664_suspend_bx, .-n664_suspend_bx
                        .type            n665_call_prolog_bx, @function
n665_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_call_prolog_α:     mov              r11, 330
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n666_var_ref_α
n665_call_prolog_β:     mov              r11, 330;                            jmp   pop$2F2_ω
                        .size            n665_call_prolog_bx, .-n665_call_prolog_bx
                        .type            n666_var_ref_bx, @function
n666_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n667_lit_string_α
                        .size            n666_var_ref_bx, .-n666_var_ref_bx
                        .type            n667_lit_string_bx, @function
n667_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_902_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n668_call_prolog_α
.Llit_string_α_902_0:   .quad            .Llit_string_α_902_0_s
.Llit_string_α_902_0_s: .string          "mexico"
                        .size            n667_lit_string_bx, .-n667_lit_string_bx
                        .type            n668_call_prolog_bx, @function
n668_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_call_prolog_α:     mov              r11, 333
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_903_2]
                                                                              jmp   .Lcall_prolog_α_903_3
.Lcall_prolog_α_903_2:  .quad            .Lcall_prolog_α_903_2_s
.Lcall_prolog_α_903_2_s:
                        .string          "mexico"
.Lcall_prolog_α_903_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n673_call_prolog_α
                                                                              jmp   n669_var_ref_α
n668_call_prolog_β:     mov              r11, 333;                            jmp   n673_call_prolog_α
                        .size            n668_call_prolog_bx, .-n668_call_prolog_bx
                        .type            n669_var_ref_bx, @function
n669_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n670_lit_integer_α
                        .size            n669_var_ref_bx, .-n669_var_ref_bx
                        .type            n670_lit_integer_bx, @function
n670_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_lit_integer_α:     mov              r11, 335
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_906_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n671_call_prolog_α
.Llit_integer_α_906_0:  .quad            581
                        .size            n670_lit_integer_bx, .-n670_lit_integer_bx
                        .type            n671_call_prolog_bx, @function
n671_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_call_prolog_α:     mov              r11, 336
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        movabs           rsi, 581
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n673_call_prolog_α
                                                                              jmp   n672_suspend_α
n671_call_prolog_β:     mov              r11, 336;                            jmp   n673_call_prolog_α
                        .size            n671_call_prolog_bx, .-n671_call_prolog_bx
                        .type            n672_suspend_bx, @function
n672_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_suspend_α:         mov              r11, 337
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_909_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_909_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n672_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n672_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n672_suspend_β:         mov              r11, 337;                            jmp   n673_call_prolog_α
                        .size            n672_suspend_bx, .-n672_suspend_bx
                        .type            n673_call_prolog_bx, @function
n673_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_call_prolog_α:     mov              r11, 338
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n674_var_ref_α
n673_call_prolog_β:     mov              r11, 338;                            jmp   pop$2F2_ω
                        .size            n673_call_prolog_bx, .-n673_call_prolog_bx
                        .type            n674_var_ref_bx, @function
n674_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n675_lit_string_α
                        .size            n674_var_ref_bx, .-n674_var_ref_bx
                        .type            n675_lit_string_bx, @function
n675_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      mov              r11, 340
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_913_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n676_call_prolog_α
.Llit_string_α_913_0:   .quad            .Llit_string_α_913_0_s
.Llit_string_α_913_0_s: .string          "uk"
                        .size            n675_lit_string_bx, .-n675_lit_string_bx
                        .type            n676_call_prolog_bx, @function
n676_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_call_prolog_α:     mov              r11, 341
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_914_2]
                                                                              jmp   .Lcall_prolog_α_914_3
.Lcall_prolog_α_914_2:  .quad            .Lcall_prolog_α_914_2_s
.Lcall_prolog_α_914_2_s:
                        .string          "uk"
.Lcall_prolog_α_914_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n681_call_prolog_α
                                                                              jmp   n677_var_ref_α
n676_call_prolog_β:     mov              r11, 341;                            jmp   n681_call_prolog_α
                        .size            n676_call_prolog_bx, .-n676_call_prolog_bx
                        .type            n677_var_ref_bx, @function
n677_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n678_lit_integer_α
                        .size            n677_var_ref_bx, .-n677_var_ref_bx
                        .type            n678_lit_integer_bx, @function
n678_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_917_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n679_call_prolog_α
.Llit_integer_α_917_0:  .quad            559
                        .size            n678_lit_integer_bx, .-n678_lit_integer_bx
                        .type            n679_call_prolog_bx, @function
n679_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_call_prolog_α:     mov              r11, 344
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        movabs           rsi, 559
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n681_call_prolog_α
                                                                              jmp   n680_suspend_α
n679_call_prolog_β:     mov              r11, 344;                            jmp   n681_call_prolog_α
                        .size            n679_call_prolog_bx, .-n679_call_prolog_bx
                        .type            n680_suspend_bx, @function
n680_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_suspend_α:         mov              r11, 345
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_920_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_920_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n680_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n680_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n680_suspend_β:         mov              r11, 345;                            jmp   n681_call_prolog_α
                        .size            n680_suspend_bx, .-n680_suspend_bx
                        .type            n681_call_prolog_bx, @function
n681_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_call_prolog_α:     mov              r11, 346
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n682_var_ref_α
n681_call_prolog_β:     mov              r11, 346;                            jmp   pop$2F2_ω
                        .size            n681_call_prolog_bx, .-n681_call_prolog_bx
                        .type            n682_var_ref_bx, @function
n682_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n683_lit_string_α
                        .size            n682_var_ref_bx, .-n682_var_ref_bx
                        .type            n683_lit_string_bx, @function
n683_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_924_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n684_call_prolog_α
.Llit_string_α_924_0:   .quad            .Llit_string_α_924_0_s
.Llit_string_α_924_0_s: .string          "italy"
                        .size            n683_lit_string_bx, .-n683_lit_string_bx
                        .type            n684_call_prolog_bx, @function
n684_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_call_prolog_α:     mov              r11, 349
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        lea              rdi, [rsp + 2512]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_925_2]
                                                                              jmp   .Lcall_prolog_α_925_3
.Lcall_prolog_α_925_2:  .quad            .Lcall_prolog_α_925_2_s
.Lcall_prolog_α_925_2_s:
                        .string          "italy"
.Lcall_prolog_α_925_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n689_call_prolog_α
                                                                              jmp   n685_var_ref_α
n684_call_prolog_β:     mov              r11, 349;                            jmp   n689_call_prolog_α
                        .size            n684_call_prolog_bx, .-n684_call_prolog_bx
                        .type            n685_var_ref_bx, @function
n685_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n686_lit_integer_α
                        .size            n685_var_ref_bx, .-n685_var_ref_bx
                        .type            n686_lit_integer_bx, @function
n686_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_928_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n687_call_prolog_α
.Llit_integer_α_928_0:  .quad            554
                        .size            n686_lit_integer_bx, .-n686_lit_integer_bx
                        .type            n687_call_prolog_bx, @function
n687_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_call_prolog_α:     mov              r11, 352
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2440], rax
                        lea              rdi, [rsp + 2432]
                        movabs           rsi, 554
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n689_call_prolog_α
                                                                              jmp   n688_suspend_α
n687_call_prolog_β:     mov              r11, 352;                            jmp   n689_call_prolog_α
                        .size            n687_call_prolog_bx, .-n687_call_prolog_bx
                        .type            n688_suspend_bx, @function
n688_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_suspend_α:         mov              r11, 353
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_931_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_931_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n688_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n688_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n688_suspend_β:         mov              r11, 353;                            jmp   n689_call_prolog_α
                        .size            n688_suspend_bx, .-n688_suspend_bx
                        .type            n689_call_prolog_bx, @function
n689_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_call_prolog_α:     mov              r11, 354
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2392], rax
                        lea              rdi, [rsp + 2384]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n690_var_ref_α
n689_call_prolog_β:     mov              r11, 354;                            jmp   pop$2F2_ω
                        .size            n689_call_prolog_bx, .-n689_call_prolog_bx
                        .type            n690_var_ref_bx, @function
n690_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n691_lit_string_α
                        .size            n690_var_ref_bx, .-n690_var_ref_bx
                        .type            n691_lit_string_bx, @function
n691_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_935_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n692_call_prolog_α
.Llit_string_α_935_0:   .quad            .Llit_string_α_935_0_s
.Llit_string_α_935_0_s: .string          "france"
                        .size            n691_lit_string_bx, .-n691_lit_string_bx
                        .type            n692_call_prolog_bx, @function
n692_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_call_prolog_α:     mov              r11, 357
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        lea              rdi, [rsp + 2304]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_936_2]
                                                                              jmp   .Lcall_prolog_α_936_3
.Lcall_prolog_α_936_2:  .quad            .Lcall_prolog_α_936_2_s
.Lcall_prolog_α_936_2_s:
                        .string          "france"
.Lcall_prolog_α_936_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n697_call_prolog_α
                                                                              jmp   n693_var_ref_α
n692_call_prolog_β:     mov              r11, 357;                            jmp   n697_call_prolog_α
                        .size            n692_call_prolog_bx, .-n692_call_prolog_bx
                        .type            n693_var_ref_bx, @function
n693_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n694_lit_integer_α
                        .size            n693_var_ref_bx, .-n693_var_ref_bx
                        .type            n694_lit_integer_bx, @function
n694_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:     mov              r11, 359
                        mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_939_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n695_call_prolog_α
.Llit_integer_α_939_0:  .quad            525
                        .size            n694_lit_integer_bx, .-n694_lit_integer_bx
                        .type            n695_call_prolog_bx, @function
n695_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_call_prolog_α:     mov              r11, 360
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        lea              rdi, [rsp + 2224]
                        movabs           rsi, 525
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n697_call_prolog_α
                                                                              jmp   n696_suspend_α
n695_call_prolog_β:     mov              r11, 360;                            jmp   n697_call_prolog_α
                        .size            n695_call_prolog_bx, .-n695_call_prolog_bx
                        .type            n696_suspend_bx, @function
n696_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_suspend_α:         mov              r11, 361
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_942_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_942_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n696_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n696_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n696_suspend_β:         mov              r11, 361;                            jmp   n697_call_prolog_α
                        .size            n696_suspend_bx, .-n696_suspend_bx
                        .type            n697_call_prolog_bx, @function
n697_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_prolog_α:     mov              r11, 362
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n698_var_ref_α
n697_call_prolog_β:     mov              r11, 362;                            jmp   pop$2F2_ω
                        .size            n697_call_prolog_bx, .-n697_call_prolog_bx
                        .type            n698_var_ref_bx, @function
n698_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n699_lit_string_α
                        .size            n698_var_ref_bx, .-n698_var_ref_bx
                        .type            n699_lit_string_bx, @function
n699_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n700_call_prolog_α
.Llit_string_α_946_0:   .quad            .Llit_string_α_946_0_s
.Llit_string_α_946_0_s: .string          "philippines"
                        .size            n699_lit_string_bx, .-n699_lit_string_bx
                        .type            n700_call_prolog_bx, @function
n700_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_call_prolog_α:     mov              r11, 365
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_947_2]
                                                                              jmp   .Lcall_prolog_α_947_3
.Lcall_prolog_α_947_2:  .quad            .Lcall_prolog_α_947_2_s
.Lcall_prolog_α_947_2_s:
                        .string          "philippines"
.Lcall_prolog_α_947_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n705_call_prolog_α
                                                                              jmp   n701_var_ref_α
n700_call_prolog_β:     mov              r11, 365;                            jmp   n705_call_prolog_α
                        .size            n700_call_prolog_bx, .-n700_call_prolog_bx
                        .type            n701_var_ref_bx, @function
n701_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_var_ref_α:         mov              r11, 366
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n702_lit_integer_α
                        .size            n701_var_ref_bx, .-n701_var_ref_bx
                        .type            n702_lit_integer_bx, @function
n702_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:     mov              r11, 367
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_950_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n703_call_prolog_α
.Llit_integer_α_950_0:  .quad            415
                        .size            n702_lit_integer_bx, .-n702_lit_integer_bx
                        .type            n703_call_prolog_bx, @function
n703_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_call_prolog_α:     mov              r11, 368
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        movabs           rsi, 415
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n705_call_prolog_α
                                                                              jmp   n704_suspend_α
n703_call_prolog_β:     mov              r11, 368;                            jmp   n705_call_prolog_α
                        .size            n703_call_prolog_bx, .-n703_call_prolog_bx
                        .type            n704_suspend_bx, @function
n704_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_suspend_α:         mov              r11, 369
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_953_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_953_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n704_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n704_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n704_suspend_β:         mov              r11, 369;                            jmp   n705_call_prolog_α
                        .size            n704_suspend_bx, .-n704_suspend_bx
                        .type            n705_call_prolog_bx, @function
n705_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_call_prolog_α:     mov              r11, 370
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n706_var_ref_α
n705_call_prolog_β:     mov              r11, 370;                            jmp   pop$2F2_ω
                        .size            n705_call_prolog_bx, .-n705_call_prolog_bx
                        .type            n706_var_ref_bx, @function
n706_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              r11, 371
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n707_lit_string_α
                        .size            n706_var_ref_bx, .-n706_var_ref_bx
                        .type            n707_lit_string_bx, @function
n707_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_957_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n708_call_prolog_α
.Llit_string_α_957_0:   .quad            .Llit_string_α_957_0_s
.Llit_string_α_957_0_s: .string          "thailand"
                        .size            n707_lit_string_bx, .-n707_lit_string_bx
                        .type            n708_call_prolog_bx, @function
n708_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_call_prolog_α:     mov              r11, 373
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_958_2]
                                                                              jmp   .Lcall_prolog_α_958_3
.Lcall_prolog_α_958_2:  .quad            .Lcall_prolog_α_958_2_s
.Lcall_prolog_α_958_2_s:
                        .string          "thailand"
.Lcall_prolog_α_958_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n713_call_prolog_α
                                                                              jmp   n709_var_ref_α
n708_call_prolog_β:     mov              r11, 373;                            jmp   n713_call_prolog_α
                        .size            n708_call_prolog_bx, .-n708_call_prolog_bx
                        .type            n709_var_ref_bx, @function
n709_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n710_lit_integer_α
                        .size            n709_var_ref_bx, .-n709_var_ref_bx
                        .type            n710_lit_integer_bx, @function
n710_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:     mov              r11, 375
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_961_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n711_call_prolog_α
.Llit_integer_α_961_0:  .quad            410
                        .size            n710_lit_integer_bx, .-n710_lit_integer_bx
                        .type            n711_call_prolog_bx, @function
n711_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_call_prolog_α:     mov              r11, 376
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        movabs           rsi, 410
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n713_call_prolog_α
                                                                              jmp   n712_suspend_α
n711_call_prolog_β:     mov              r11, 376;                            jmp   n713_call_prolog_α
                        .size            n711_call_prolog_bx, .-n711_call_prolog_bx
                        .type            n712_suspend_bx, @function
n712_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_suspend_α:         mov              r11, 377
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_964_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_964_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n712_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n712_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n712_suspend_β:         mov              r11, 377;                            jmp   n713_call_prolog_α
                        .size            n712_suspend_bx, .-n712_suspend_bx
                        .type            n713_call_prolog_bx, @function
n713_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_call_prolog_α:     mov              r11, 378
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n714_var_ref_α
n713_call_prolog_β:     mov              r11, 378;                            jmp   pop$2F2_ω
                        .size            n713_call_prolog_bx, .-n713_call_prolog_bx
                        .type            n714_var_ref_bx, @function
n714_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_var_ref_α:         mov              r11, 379
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n715_lit_string_α
                        .size            n714_var_ref_bx, .-n714_var_ref_bx
                        .type            n715_lit_string_bx, @function
n715_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_968_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n716_call_prolog_α
.Llit_string_α_968_0:   .quad            .Llit_string_α_968_0_s
.Llit_string_α_968_0_s: .string          "turkey"
                        .size            n715_lit_string_bx, .-n715_lit_string_bx
                        .type            n716_call_prolog_bx, @function
n716_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_call_prolog_α:     mov              r11, 381
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_969_2]
                                                                              jmp   .Lcall_prolog_α_969_3
.Lcall_prolog_α_969_2:  .quad            .Lcall_prolog_α_969_2_s
.Lcall_prolog_α_969_2_s:
                        .string          "turkey"
.Lcall_prolog_α_969_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n721_call_prolog_α
                                                                              jmp   n717_var_ref_α
n716_call_prolog_β:     mov              r11, 381;                            jmp   n721_call_prolog_α
                        .size            n716_call_prolog_bx, .-n716_call_prolog_bx
                        .type            n717_var_ref_bx, @function
n717_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n718_lit_integer_α
                        .size            n717_var_ref_bx, .-n717_var_ref_bx
                        .type            n718_lit_integer_bx, @function
n718_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     mov              r11, 383
                        mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_972_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n719_call_prolog_α
.Llit_integer_α_972_0:  .quad            383
                        .size            n718_lit_integer_bx, .-n718_lit_integer_bx
                        .type            n719_call_prolog_bx, @function
n719_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_call_prolog_α:     mov              r11, 384
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        movabs           rsi, 383
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n721_call_prolog_α
                                                                              jmp   n720_suspend_α
n719_call_prolog_β:     mov              r11, 384;                            jmp   n721_call_prolog_α
                        .size            n719_call_prolog_bx, .-n719_call_prolog_bx
                        .type            n720_suspend_bx, @function
n720_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_suspend_α:         mov              r11, 385
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_975_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_975_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n720_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n720_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n720_suspend_β:         mov              r11, 385;                            jmp   n721_call_prolog_α
                        .size            n720_suspend_bx, .-n720_suspend_bx
                        .type            n721_call_prolog_bx, @function
n721_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_call_prolog_α:     mov              r11, 386
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n722_var_ref_α
n721_call_prolog_β:     mov              r11, 386;                            jmp   pop$2F2_ω
                        .size            n721_call_prolog_bx, .-n721_call_prolog_bx
                        .type            n722_var_ref_bx, @function
n722_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n723_lit_string_α
                        .size            n722_var_ref_bx, .-n722_var_ref_bx
                        .type            n723_lit_string_bx, @function
n723_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 388
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_979_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n724_call_prolog_α
.Llit_string_α_979_0:   .quad            .Llit_string_α_979_0_s
.Llit_string_α_979_0_s: .string          "egypt"
                        .size            n723_lit_string_bx, .-n723_lit_string_bx
                        .type            n724_call_prolog_bx, @function
n724_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_call_prolog_α:     mov              r11, 389
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_980_2]
                                                                              jmp   .Lcall_prolog_α_980_3
.Lcall_prolog_α_980_2:  .quad            .Lcall_prolog_α_980_2_s
.Lcall_prolog_α_980_2_s:
                        .string          "egypt"
.Lcall_prolog_α_980_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n729_call_prolog_α
                                                                              jmp   n725_var_ref_α
n724_call_prolog_β:     mov              r11, 389;                            jmp   n729_call_prolog_α
                        .size            n724_call_prolog_bx, .-n724_call_prolog_bx
                        .type            n725_var_ref_bx, @function
n725_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n726_lit_integer_α
                        .size            n725_var_ref_bx, .-n725_var_ref_bx
                        .type            n726_lit_integer_bx, @function
n726_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:     mov              r11, 391
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_983_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n727_call_prolog_α
.Llit_integer_α_983_0:  .quad            364
                        .size            n726_lit_integer_bx, .-n726_lit_integer_bx
                        .type            n727_call_prolog_bx, @function
n727_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_call_prolog_α:     mov              r11, 392
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        movabs           rsi, 364
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n729_call_prolog_α
                                                                              jmp   n728_suspend_α
n727_call_prolog_β:     mov              r11, 392;                            jmp   n729_call_prolog_α
                        .size            n727_call_prolog_bx, .-n727_call_prolog_bx
                        .type            n728_suspend_bx, @function
n728_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_suspend_α:         mov              r11, 393
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_986_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_986_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n728_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n728_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n728_suspend_β:         mov              r11, 393;                            jmp   n729_call_prolog_α
                        .size            n728_suspend_bx, .-n728_suspend_bx
                        .type            n729_call_prolog_bx, @function
n729_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_call_prolog_α:     mov              r11, 394
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n730_var_ref_α
n729_call_prolog_β:     mov              r11, 394;                            jmp   pop$2F2_ω
                        .size            n729_call_prolog_bx, .-n729_call_prolog_bx
                        .type            n730_var_ref_bx, @function
n730_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n731_lit_string_α
                        .size            n730_var_ref_bx, .-n730_var_ref_bx
                        .type            n731_lit_string_bx, @function
n731_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_990_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n732_call_prolog_α
.Llit_string_α_990_0:   .quad            .Llit_string_α_990_0_s
.Llit_string_α_990_0_s: .string          "spain"
                        .size            n731_lit_string_bx, .-n731_lit_string_bx
                        .type            n732_call_prolog_bx, @function
n732_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_call_prolog_α:     mov              r11, 397
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_991_2]
                                                                              jmp   .Lcall_prolog_α_991_3
.Lcall_prolog_α_991_2:  .quad            .Lcall_prolog_α_991_2_s
.Lcall_prolog_α_991_2_s:
                        .string          "spain"
.Lcall_prolog_α_991_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n737_call_prolog_α
                                                                              jmp   n733_var_ref_α
n732_call_prolog_β:     mov              r11, 397;                            jmp   n737_call_prolog_α
                        .size            n732_call_prolog_bx, .-n732_call_prolog_bx
                        .type            n733_var_ref_bx, @function
n733_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n734_lit_integer_α
                        .size            n733_var_ref_bx, .-n733_var_ref_bx
                        .type            n734_lit_integer_bx, @function
n734_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 399
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_994_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n735_call_prolog_α
.Llit_integer_α_994_0:  .quad            352
                        .size            n734_lit_integer_bx, .-n734_lit_integer_bx
                        .type            n735_call_prolog_bx, @function
n735_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_prolog_α:     mov              r11, 400
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        movabs           rsi, 352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n737_call_prolog_α
                                                                              jmp   n736_suspend_α
n735_call_prolog_β:     mov              r11, 400;                            jmp   n737_call_prolog_α
                        .size            n735_call_prolog_bx, .-n735_call_prolog_bx
                        .type            n736_suspend_bx, @function
n736_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_suspend_α:         mov              r11, 401
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_997_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_997_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n736_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n736_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n736_suspend_β:         mov              r11, 401;                            jmp   n737_call_prolog_α
                        .size            n736_suspend_bx, .-n736_suspend_bx
                        .type            n737_call_prolog_bx, @function
n737_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_call_prolog_α:     mov              r11, 402
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n738_var_ref_α
n737_call_prolog_β:     mov              r11, 402;                            jmp   pop$2F2_ω
                        .size            n737_call_prolog_bx, .-n737_call_prolog_bx
                        .type            n738_var_ref_bx, @function
n738_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n739_lit_string_α
                        .size            n738_var_ref_bx, .-n738_var_ref_bx
                        .type            n739_lit_string_bx, @function
n739_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1001_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n740_call_prolog_α
.Llit_string_α_1001_0:  .quad            .Llit_string_α_1001_0_s
.Llit_string_α_1001_0_s:
                        .string          "poland"
                        .size            n739_lit_string_bx, .-n739_lit_string_bx
                        .type            n740_call_prolog_bx, @function
n740_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_call_prolog_α:     mov              r11, 405
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1002_2]
                                                                              jmp   .Lcall_prolog_α_1002_3
.Lcall_prolog_α_1002_2: .quad            .Lcall_prolog_α_1002_2_s
.Lcall_prolog_α_1002_2_s:
                        .string          "poland"
.Lcall_prolog_α_1002_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n745_call_prolog_α
                                                                              jmp   n741_var_ref_α
n740_call_prolog_β:     mov              r11, 405;                            jmp   n745_call_prolog_α
                        .size            n740_call_prolog_bx, .-n740_call_prolog_bx
                        .type            n741_var_ref_bx, @function
n741_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n742_lit_integer_α
                        .size            n741_var_ref_bx, .-n741_var_ref_bx
                        .type            n742_lit_integer_bx, @function
n742_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_integer_α:     mov              r11, 407
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1005_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n743_call_prolog_α
.Llit_integer_α_1005_0: .quad            337
                        .size            n742_lit_integer_bx, .-n742_lit_integer_bx
                        .type            n743_call_prolog_bx, @function
n743_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_call_prolog_α:     mov              r11, 408
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        movabs           rsi, 337
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n745_call_prolog_α
                                                                              jmp   n744_suspend_α
n743_call_prolog_β:     mov              r11, 408;                            jmp   n745_call_prolog_α
                        .size            n743_call_prolog_bx, .-n743_call_prolog_bx
                        .type            n744_suspend_bx, @function
n744_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_suspend_α:         mov              r11, 409
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1008_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_1008_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n744_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n744_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n744_suspend_β:         mov              r11, 409;                            jmp   n745_call_prolog_α
                        .size            n744_suspend_bx, .-n744_suspend_bx
                        .type            n745_call_prolog_bx, @function
n745_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_call_prolog_α:     mov              r11, 410
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n746_var_ref_α
n745_call_prolog_β:     mov              r11, 410;                            jmp   pop$2F2_ω
                        .size            n745_call_prolog_bx, .-n745_call_prolog_bx
                        .type            n746_var_ref_bx, @function
n746_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_var_ref_α:         mov              r11, 411
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n747_lit_string_α
                        .size            n746_var_ref_bx, .-n746_var_ref_bx
                        .type            n747_lit_string_bx, @function
n747_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:      mov              r11, 412
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1012_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n748_call_prolog_α
.Llit_string_α_1012_0:  .quad            .Llit_string_α_1012_0_s
.Llit_string_α_1012_0_s:
                        .string          "s_korea"
                        .size            n747_lit_string_bx, .-n747_lit_string_bx
                        .type            n748_call_prolog_bx, @function
n748_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_call_prolog_α:     mov              r11, 413
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1013_2]
                                                                              jmp   .Lcall_prolog_α_1013_3
.Lcall_prolog_α_1013_2: .quad            .Lcall_prolog_α_1013_2_s
.Lcall_prolog_α_1013_2_s:
                        .string          "s_korea"
.Lcall_prolog_α_1013_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n753_call_prolog_α
                                                                              jmp   n749_var_ref_α
n748_call_prolog_β:     mov              r11, 413;                            jmp   n753_call_prolog_α
                        .size            n748_call_prolog_bx, .-n748_call_prolog_bx
                        .type            n749_var_ref_bx, @function
n749_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_var_ref_α:         mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n750_lit_integer_α
                        .size            n749_var_ref_bx, .-n749_var_ref_bx
                        .type            n750_lit_integer_bx, @function
n750_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:     mov              r11, 415
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1016_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n751_call_prolog_α
.Llit_integer_α_1016_0: .quad            335
                        .size            n750_lit_integer_bx, .-n750_lit_integer_bx
                        .type            n751_call_prolog_bx, @function
n751_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_call_prolog_α:     mov              r11, 416
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        movabs           rsi, 335
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n753_call_prolog_α
                                                                              jmp   n752_suspend_α
n751_call_prolog_β:     mov              r11, 416;                            jmp   n753_call_prolog_α
                        .size            n751_call_prolog_bx, .-n751_call_prolog_bx
                        .type            n752_suspend_bx, @function
n752_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n752_suspend_α:         mov              r11, 417
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1019_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_1019_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n752_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n752_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n752_suspend_β:         mov              r11, 417;                            jmp   n753_call_prolog_α
                        .size            n752_suspend_bx, .-n752_suspend_bx
                        .type            n753_call_prolog_bx, @function
n753_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n753_call_prolog_α:     mov              r11, 418
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n754_var_ref_α
n753_call_prolog_β:     mov              r11, 418;                            jmp   pop$2F2_ω
                        .size            n753_call_prolog_bx, .-n753_call_prolog_bx
                        .type            n754_var_ref_bx, @function
n754_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n754_var_ref_α:         mov              r11, 419
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n755_lit_string_α
                        .size            n754_var_ref_bx, .-n754_var_ref_bx
                        .type            n755_lit_string_bx, @function
n755_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:      mov              r11, 420
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1023_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n756_call_prolog_α
.Llit_string_α_1023_0:  .quad            .Llit_string_α_1023_0_s
.Llit_string_α_1023_0_s:
                        .string          "iran"
                        .size            n755_lit_string_bx, .-n755_lit_string_bx
                        .type            n756_call_prolog_bx, @function
n756_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n756_call_prolog_α:     mov              r11, 421
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1024_2]
                                                                              jmp   .Lcall_prolog_α_1024_3
.Lcall_prolog_α_1024_2: .quad            .Lcall_prolog_α_1024_2_s
.Lcall_prolog_α_1024_2_s:
                        .string          "iran"
.Lcall_prolog_α_1024_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n761_call_prolog_α
                                                                              jmp   n757_var_ref_α
n756_call_prolog_β:     mov              r11, 421;                            jmp   n761_call_prolog_α
                        .size            n756_call_prolog_bx, .-n756_call_prolog_bx
                        .type            n757_var_ref_bx, @function
n757_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n757_var_ref_α:         mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n758_lit_integer_α
                        .size            n757_var_ref_bx, .-n757_var_ref_bx
                        .type            n758_lit_integer_bx, @function
n758_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:     mov              r11, 423
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1027_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n759_call_prolog_α
.Llit_integer_α_1027_0: .quad            320
                        .size            n758_lit_integer_bx, .-n758_lit_integer_bx
                        .type            n759_call_prolog_bx, @function
n759_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_call_prolog_α:     mov              r11, 424
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        movabs           rsi, 320
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n761_call_prolog_α
                                                                              jmp   n760_suspend_α
n759_call_prolog_β:     mov              r11, 424;                            jmp   n761_call_prolog_α
                        .size            n759_call_prolog_bx, .-n759_call_prolog_bx
                        .type            n760_suspend_bx, @function
n760_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_suspend_α:         mov              r11, 425
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1030_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_1030_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n760_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n760_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n760_suspend_β:         mov              r11, 425;                            jmp   n761_call_prolog_α
                        .size            n760_suspend_bx, .-n760_suspend_bx
                        .type            n761_call_prolog_bx, @function
n761_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n761_call_prolog_α:     mov              r11, 426
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n762_var_ref_α
n761_call_prolog_β:     mov              r11, 426;                            jmp   pop$2F2_ω
                        .size            n761_call_prolog_bx, .-n761_call_prolog_bx
                        .type            n762_var_ref_bx, @function
n762_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_var_ref_α:         mov              r11, 427
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n763_lit_string_α
                        .size            n762_var_ref_bx, .-n762_var_ref_bx
                        .type            n763_lit_string_bx, @function
n763_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:      mov              r11, 428
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1034_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n764_call_prolog_α
.Llit_string_α_1034_0:  .quad            .Llit_string_α_1034_0_s
.Llit_string_α_1034_0_s:
                        .string          "ethiopia"
                        .size            n763_lit_string_bx, .-n763_lit_string_bx
                        .type            n764_call_prolog_bx, @function
n764_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n764_call_prolog_α:     mov              r11, 429
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1035_2]
                                                                              jmp   .Lcall_prolog_α_1035_3
.Lcall_prolog_α_1035_2: .quad            .Lcall_prolog_α_1035_2_s
.Lcall_prolog_α_1035_2_s:
                        .string          "ethiopia"
.Lcall_prolog_α_1035_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n769_call_prolog_α
                                                                              jmp   n765_var_ref_α
n764_call_prolog_β:     mov              r11, 429;                            jmp   n769_call_prolog_α
                        .size            n764_call_prolog_bx, .-n764_call_prolog_bx
                        .type            n765_var_ref_bx, @function
n765_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:         mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n766_lit_integer_α
                        .size            n765_var_ref_bx, .-n765_var_ref_bx
                        .type            n766_lit_integer_bx, @function
n766_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:     mov              r11, 431
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1038_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n767_call_prolog_α
.Llit_integer_α_1038_0: .quad            272
                        .size            n766_lit_integer_bx, .-n766_lit_integer_bx
                        .type            n767_call_prolog_bx, @function
n767_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_call_prolog_α:     mov              r11, 432
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        movabs           rsi, 272
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n769_call_prolog_α
                                                                              jmp   n768_suspend_α
n767_call_prolog_β:     mov              r11, 432;                            jmp   n769_call_prolog_α
                        .size            n767_call_prolog_bx, .-n767_call_prolog_bx
                        .type            n768_suspend_bx, @function
n768_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_suspend_α:         mov              r11, 433
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1041_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_1041_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n768_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n768_suspend_β:         mov              r11, 433;                            jmp   n769_call_prolog_α
                        .size            n768_suspend_bx, .-n768_suspend_bx
                        .type            n769_call_prolog_bx, @function
n769_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_call_prolog_α:     mov              r11, 434
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   n770_var_ref_α
n769_call_prolog_β:     mov              r11, 434;                            jmp   pop$2F2_ω
                        .size            n769_call_prolog_bx, .-n769_call_prolog_bx
                        .type            n770_var_ref_bx, @function
n770_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_var_ref_α:         mov              r11, 435
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n771_lit_string_α
                        .size            n770_var_ref_bx, .-n770_var_ref_bx
                        .type            n771_lit_string_bx, @function
n771_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:      mov              r11, 436
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1045_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n772_call_prolog_α
.Llit_string_α_1045_0:  .quad            .Llit_string_α_1045_0_s
.Llit_string_α_1045_0_s:
                        .string          "argentina"
                        .size            n771_lit_string_bx, .-n771_lit_string_bx
                        .type            n772_call_prolog_bx, @function
n772_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_call_prolog_α:     mov              r11, 437
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1046_2]
                                                                              jmp   .Lcall_prolog_α_1046_3
.Lcall_prolog_α_1046_2: .quad            .Lcall_prolog_α_1046_2_s
.Lcall_prolog_α_1046_2_s:
                        .string          "argentina"
.Lcall_prolog_α_1046_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n777_call_prolog_α
                                                                              jmp   n773_var_ref_α
n772_call_prolog_β:     mov              r11, 437;                            jmp   n777_call_prolog_α
                        .size            n772_call_prolog_bx, .-n772_call_prolog_bx
                        .type            n773_var_ref_bx, @function
n773_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_var_ref_α:         mov              r11, 438
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n774_lit_integer_α
                        .size            n773_var_ref_bx, .-n773_var_ref_bx
                        .type            n774_lit_integer_bx, @function
n774_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_integer_α:     mov              r11, 439
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1049_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n775_call_prolog_α
.Llit_integer_α_1049_0: .quad            251
                        .size            n774_lit_integer_bx, .-n774_lit_integer_bx
                        .type            n775_call_prolog_bx, @function
n775_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n775_call_prolog_α:     mov              r11, 440
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        movabs           rsi, 251
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n777_call_prolog_α
                                                                              jmp   n776_suspend_α
n775_call_prolog_β:     mov              r11, 440;                            jmp   n777_call_prolog_α
                        .size            n775_call_prolog_bx, .-n775_call_prolog_bx
                        .type            n776_suspend_bx, @function
n776_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_suspend_α:         mov              r11, 441
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1052_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lsuspend_α_1052_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n776_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n776_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   pop$2F2_γ
n776_suspend_β:         mov              r11, 441;                            jmp   n777_call_prolog_α
                        .size            n776_suspend_bx, .-n776_suspend_bx
                        .type            n777_call_prolog_bx, @function
n777_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_call_prolog_α:     mov              r11, 442
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
                        cmp              al, 104;                             je    pop$2F2_ω
                                                                              jmp   pop$2F2_ω
n777_call_prolog_β:     mov              r11, 442;                            jmp   pop$2F2_ω
                        .size            n777_call_prolog_bx, .-n777_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_β:
                                                                              jmp   n584_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lpop$2F2_α_1053_50
                        mov              qword ptr [rsp + 5280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lpop$2F2_α_1053_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5320]
                        add              rsp, 5344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_ω:
                        mov              rcx, qword ptr [rsp + 5328]
                        add              rsp, 5344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__density$2F2:
                        sub              rsp, 864
                        mov              qword ptr [rsp + 840], rcx
                        mov              qword ptr [rsp + 848], rdx
                        mov              qword ptr [rsp + 856], rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
density$2F2_α_body:
                        lea              rax, [rip + n1074_suspend_β]
                        mov              qword ptr [rsp + 736], rax
                        .type            n1054_call_prolog_bx, @function
n1054_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_prolog_α:    mov              r11, 443
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_1076_102
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_1076_101
.Lcall_prolog_α_1076_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_1076_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_1076_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_1076_101
.Lcall_prolog_α_1076_100:
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
.Lcall_prolog_α_1076_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    density$2F2_ω
                                                                              jmp   n1055_var_ref_α
n1054_call_prolog_β:    mov              r11, 443;                            jmp   density$2F2_ω
                        .size            n1054_call_prolog_bx, .-n1054_call_prolog_bx
                        .type            n1055_var_ref_bx, @function
n1055_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:        mov              r11, 444
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n1056_var_ref_α
                        .size            n1055_var_ref_bx, .-n1055_var_ref_bx
                        .type            n1056_var_ref_bx, @function
n1056_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_ref_α:        mov              r11, 445
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n1057_call_prolog_α
                        .size            n1056_var_ref_bx, .-n1056_var_ref_bx
                        .type            n1057_call_prolog_bx, @function
n1057_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_call_prolog_α:    mov              r11, 446
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lcall_prolog_α_1081_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1081_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1081_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1081_40
.Lcall_prolog_α_1081_55:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1081_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1081_40
.Lcall_prolog_α_1081_56:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1081_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1081_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1081_40
.Lcall_prolog_α_1081_41:
                        lea              r9, [rsp + 688]
.Lcall_prolog_α_1081_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1081_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1081_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1081_42
.Lcall_prolog_α_1081_57:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1081_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1081_42
.Lcall_prolog_α_1081_58:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1081_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1081_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1081_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1081_42
.Lcall_prolog_α_1081_43:
                        cmp              r8, r9;                              je    .Lcall_prolog_α_1081_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1081_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_1081_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1081_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1081_44
                                                                              jmp   .Lcall_prolog_α_1081_45
.Lcall_prolog_α_1081_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1081_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_1081_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1081_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1081_53
                                                                              jmp   .Lcall_prolog_α_1081_46
.Lcall_prolog_α_1081_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1081_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1081_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_1081_51
.Lcall_prolog_α_1081_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1081_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_1081_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1081_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1081_47
                                                                              jmp   .Lcall_prolog_α_1081_48
.Lcall_prolog_α_1081_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1081_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1081_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_1081_51
.Lcall_prolog_α_1081_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_1081_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1081_53
                                                                              jmp   .Lcall_prolog_α_1081_52
.Lcall_prolog_α_1081_49:
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1081_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_1081_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_1081_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_1081_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_1081_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1081_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_1081_51
                                                                              jmp   .Lcall_prolog_α_1081_52
.Lcall_prolog_α_1081_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1081_53
.Lcall_prolog_α_1081_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_1081_54
.Lcall_prolog_α_1081_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_1081_54
.Lcall_prolog_α_1081_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_1081_54:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1058_var_ref_α
n1057_call_prolog_β:    mov              r11, 446;                            jmp   n1075_call_prolog_α
                        .size            n1057_call_prolog_bx, .-n1057_call_prolog_bx
                        .type            n1058_var_ref_bx, @function
n1058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_ref_α:        mov              r11, 447
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n1059_var_ref_α
                        .size            n1058_var_ref_bx, .-n1058_var_ref_bx
                        .type            n1059_var_ref_bx, @function
n1059_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n1060_call_prolog_α
                        .size            n1059_var_ref_bx, .-n1059_var_ref_bx
                        .type            n1060_call_prolog_bx, @function
n1060_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_prolog_α:    mov              r11, 449
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
.Lcall_prolog_α_1086_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1086_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1086_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1086_40
.Lcall_prolog_α_1086_55:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1086_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1086_40
.Lcall_prolog_α_1086_56:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1086_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1086_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1086_40
.Lcall_prolog_α_1086_41:
                        lea              r9, [rsp + 608]
.Lcall_prolog_α_1086_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1086_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1086_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1086_42
.Lcall_prolog_α_1086_57:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1086_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1086_42
.Lcall_prolog_α_1086_58:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1086_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1086_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1086_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1086_42
.Lcall_prolog_α_1086_43:
                        cmp              r8, r9;                              je    .Lcall_prolog_α_1086_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1086_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_1086_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1086_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1086_44
                                                                              jmp   .Lcall_prolog_α_1086_45
.Lcall_prolog_α_1086_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1086_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_1086_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1086_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1086_53
                                                                              jmp   .Lcall_prolog_α_1086_46
.Lcall_prolog_α_1086_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1086_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1086_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_1086_51
.Lcall_prolog_α_1086_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1086_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_1086_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1086_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1086_47
                                                                              jmp   .Lcall_prolog_α_1086_48
.Lcall_prolog_α_1086_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1086_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1086_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_1086_51
.Lcall_prolog_α_1086_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_1086_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1086_53
                                                                              jmp   .Lcall_prolog_α_1086_52
.Lcall_prolog_α_1086_49:
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1086_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_1086_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_1086_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_1086_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_1086_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1086_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1086_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_1086_51
                                                                              jmp   .Lcall_prolog_α_1086_52
.Lcall_prolog_α_1086_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1086_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1086_53
.Lcall_prolog_α_1086_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_1086_54
.Lcall_prolog_α_1086_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_1086_54
.Lcall_prolog_α_1086_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_1086_54:
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1061_var_ref_α
n1060_call_prolog_β:    mov              r11, 449;                            jmp   n1075_call_prolog_α
                        .size            n1060_call_prolog_bx, .-n1060_call_prolog_bx
                        .type            n1061_var_ref_bx, @function
n1061_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_ref_α:        mov              r11, 450
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n1062_var_ref_α
                        .size            n1061_var_ref_bx, .-n1061_var_ref_bx
                        .type            n1062_var_ref_bx, @function
n1062_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_ref_α:        mov              r11, 451
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 768]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n1063_call_proc_staged_α
                        .size            n1062_var_ref_bx, .-n1062_var_ref_bx
                        .type            n1063_call_proc_staged_bx, @function
n1063_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_proc_staged_α:
                        mov              r11, 452
                        mov              qword ptr [rsp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1092_200
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1092_201
.Lcall_proc_staged_α_1092_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_1092_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1092_202
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1092_203
.Lcall_proc_staged_α_1092_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1092_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1092_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1092_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1092_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1092_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1092_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1092_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 520], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1092_5
                        mov              qword ptr [rsp + 512], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1092_2
.Lcall_proc_staged_α_1092_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1092_2
.Lcall_proc_staged_α_1092_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1092_6
                        mov              qword ptr [rsp + 512], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1092_2
.Lcall_proc_staged_α_1092_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1092_2
.Lcall_proc_staged_α_1092_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1092_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1092_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lcall_proc_staged_α_1092_29:
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1064_var_ref_α
n1063_call_proc_staged_β:
                        mov              r11, 452
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 512], 0
                        lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n1075_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              ecx, 48
                        mov              r8d, 5280
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
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
                        test             rax, rax;                            je    n1075_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_1092_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_1092_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1092_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1092_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1092_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1064_var_ref_α
.Lcall_proc_staged_β_1092_0:
                        .quad            .Lcall_proc_staged_β_1092_0_s
.Lcall_proc_staged_β_1092_0_s:
                        .string          "pop/2"
                        .size            n1063_call_proc_staged_bx, .-n1063_call_proc_staged_bx
                        .type            n1064_var_ref_bx, @function
n1064_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_ref_α:        mov              r11, 453
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n1065_var_ref_α
                        .size            n1064_var_ref_bx, .-n1064_var_ref_bx
                        .type            n1065_var_ref_bx, @function
n1065_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:        mov              r11, 454
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1066_call_proc_staged_α
                        .size            n1065_var_ref_bx, .-n1065_var_ref_bx
                        .type            n1066_call_proc_staged_bx, @function
n1066_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_call_proc_staged_α:
                        mov              r11, 455
                        mov              qword ptr [rsp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1098_200
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1098_201
.Lcall_proc_staged_α_1098_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1098_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1098_202
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1098_203
.Lcall_proc_staged_α_1098_202:
                        mov              edi, 1
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
.Lcall_proc_staged_α_1098_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1098_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1098_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1098_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1098_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1098_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1098_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 408], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1098_5
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1098_2
.Lcall_proc_staged_α_1098_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1098_2
.Lcall_proc_staged_α_1098_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1098_6
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1098_2
.Lcall_proc_staged_α_1098_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1098_2
.Lcall_proc_staged_α_1098_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1098_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1098_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lcall_proc_staged_α_1098_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1063_call_proc_staged_β
                                                                              jmp   n1067_var_ref_α
n1066_call_proc_staged_β:
                        mov              r11, 455
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 400], 0
                        lea              rdi, [rsp + 416]
                        lea              rsi, [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n1063_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              ecx, 48
                        mov              r8d, 5280
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        test             rax, rax;                            je    n1063_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_1098_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_1098_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1098_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1098_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1098_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1063_call_proc_staged_β
                                                                              jmp   n1067_var_ref_α
.Lcall_proc_staged_β_1098_0:
                        .quad            .Lcall_proc_staged_β_1098_0_s
.Lcall_proc_staged_β_1098_0_s:
                        .string          "area/2"
                        .size            n1066_call_proc_staged_bx, .-n1066_call_proc_staged_bx
                        .type            n1067_var_ref_bx, @function
n1067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_ref_α:        mov              r11, 456
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n1068_var_α
                        .size            n1067_var_ref_bx, .-n1067_var_ref_bx
                        .type            n1068_var_bx, @function
n1068_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_α:            mov              r11, 457
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1069_lit_integer_α
                        .size            n1068_var_bx, .-n1068_var_bx
                        .type            n1069_lit_integer_bx, @function
n1069_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_lit_integer_α:    mov              r11, 458
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1103_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1070_call_prolog_α
.Llit_integer_α_1103_0: .quad            100
                        .size            n1069_lit_integer_bx, .-n1069_lit_integer_bx
                        .type            n1070_call_prolog_bx, @function
n1070_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_call_prolog_α:    mov              r11, 459
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1071_var_α
n1070_call_prolog_β:    mov              r11, 459;                            jmp   n1075_call_prolog_α
                        .size            n1070_call_prolog_bx, .-n1070_call_prolog_bx
                        .type            n1071_var_bx, @function
n1071_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_α:            mov              r11, 460
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1072_call_prolog_α
                        .size            n1071_var_bx, .-n1071_var_bx
                        .type            n1072_call_prolog_bx, @function
n1072_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_prolog_α:    mov              r11, 461
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n1075_call_prolog_α
                                                                              jmp   n1073_call_prolog_α
n1072_call_prolog_β:    mov              r11, 461;                            jmp   n1075_call_prolog_α
                        .size            n1072_call_prolog_bx, .-n1072_call_prolog_bx
                        .type            n1073_call_prolog_bx, @function
n1073_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_call_prolog_α:    mov              r11, 462
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n1066_call_proc_staged_β
                                                                              jmp   n1074_suspend_α
n1073_call_prolog_β:    mov              r11, 462;                            jmp   n1066_call_proc_staged_β
                        .size            n1073_call_prolog_bx, .-n1073_call_prolog_bx
                        .type            n1074_suspend_bx, @function
n1074_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_suspend_α:        mov              r11, 463
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_1110_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lsuspend_α_1110_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n1074_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n1074_suspend_β]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   density$2F2_γ
n1074_suspend_β:        mov              r11, 463;                            jmp   n1066_call_proc_staged_β
                        .size            n1074_suspend_bx, .-n1074_suspend_bx
                        .type            n1075_call_prolog_bx, @function
n1075_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_prolog_α:    mov              r11, 464
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
                        cmp              al, 104;                             je    density$2F2_ω
                                                                              jmp   density$2F2_ω
n1075_call_prolog_β:    mov              r11, 464;                            jmp   density$2F2_ω
                        .size            n1075_call_prolog_bx, .-n1075_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_β:
                                                                              jmp   n1074_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ldensity$2F2_α_1111_50
                        mov              qword ptr [rsp + 736], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Ldensity$2F2_α_1111_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 840]
                        add              rsp, 864;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ω:
                        mov              rcx, qword ptr [rsp + 848]
                        add              rsp, 864;                            jmp   rcx
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
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1056
                        rep              stosb
main_α_body:
                        .type            n1112_lit_string_bx, @function
n1112_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1112_lit_string_α:     mov              r11, 465
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1141_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1113_var_ref_α
.Llit_string_α_1141_0:  .quad            .Llit_string_α_1141_0_s
.Llit_string_α_1141_0_s:
                        .string          "."
                        .size            n1112_lit_string_bx, .-n1112_lit_string_bx
                        .type            n1113_var_ref_bx, @function
n1113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1113_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n1114_lit_string_α
                        .size            n1113_var_ref_bx, .-n1113_var_ref_bx
                        .type            n1114_lit_string_bx, @function
n1114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1114_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1144_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n1115_var_ref_α
.Llit_string_α_1144_0:  .quad            .Llit_string_α_1144_0_s
.Llit_string_α_1144_0_s:
                        .string          "."
                        .size            n1114_lit_string_bx, .-n1114_lit_string_bx
                        .type            n1115_var_ref_bx, @function
n1115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1115_var_ref_α:        mov              r11, 468
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n1116_lit_string_α
                        .size            n1115_var_ref_bx, .-n1115_var_ref_bx
                        .type            n1116_lit_string_bx, @function
n1116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1116_lit_string_α:     mov              r11, 469
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1147_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1117_var_ref_α
.Llit_string_α_1147_0:  .quad            .Llit_string_α_1147_0_s
.Llit_string_α_1147_0_s:
                        .string          "."
                        .size            n1116_lit_string_bx, .-n1116_lit_string_bx
                        .type            n1117_var_ref_bx, @function
n1117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1117_var_ref_α:        mov              r11, 470
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n1118_lit_string_α
                        .size            n1117_var_ref_bx, .-n1117_var_ref_bx
                        .type            n1118_lit_string_bx, @function
n1118_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1118_lit_string_α:     mov              r11, 471
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1150_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1119_var_ref_α
.Llit_string_α_1150_0:  .quad            .Llit_string_α_1150_0_s
.Llit_string_α_1150_0_s:
                        .string          "."
                        .size            n1118_lit_string_bx, .-n1118_lit_string_bx
                        .type            n1119_var_ref_bx, @function
n1119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1119_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n1120_lit_string_α
                        .size            n1119_var_ref_bx, .-n1119_var_ref_bx
                        .type            n1120_lit_string_bx, @function
n1120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:     mov              r11, 473
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1153_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1121_call_prolog_α
.Llit_string_α_1153_0:  .quad            .Llit_string_α_1153_0_s
.Llit_string_α_1153_0_s:
                        .string          "[]"
                        .size            n1120_lit_string_bx, .-n1120_lit_string_bx
                        .type            n1121_call_prolog_bx, @function
n1121_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1121_call_prolog_α:    mov              r11, 474
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 536]
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
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1122_call_prolog_α
n1121_call_prolog_β:    mov              r11, 474;                            jmp   main_ω
                        .size            n1121_call_prolog_bx, .-n1121_call_prolog_bx
                        .type            n1122_call_prolog_bx, @function
n1122_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1122_call_prolog_α:    mov              r11, 475
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 648]
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
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1123_call_prolog_α
n1122_call_prolog_β:    mov              r11, 475;                            jmp   main_ω
                        .size            n1122_call_prolog_bx, .-n1122_call_prolog_bx
                        .type            n1123_call_prolog_bx, @function
n1123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_prolog_α:    mov              r11, 476
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 760]
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
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1124_call_prolog_α
n1123_call_prolog_β:    mov              r11, 476;                            jmp   main_ω
                        .size            n1123_call_prolog_bx, .-n1123_call_prolog_bx
                        .type            n1124_call_prolog_bx, @function
n1124_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_prolog_α:    mov              r11, 477
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 872]
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
                        cmp              al, 104;                             je    n1134_lit_string_α
                                                                              jmp   n1125_call_proc_staged_α
n1124_call_prolog_β:    mov              r11, 477;                            jmp   n1134_lit_string_α
                        .size            n1124_call_prolog_bx, .-n1124_call_prolog_bx
                        .type            n1125_call_proc_staged_bx, @function
n1125_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1125_call_proc_staged_α:
                        mov              r11, 478
                        mov              qword ptr [rsp + 480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1159_200
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1159_201
.Lcall_proc_staged_α_1159_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1159_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1159_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1159_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1159_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1159_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1159_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1159_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 488], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1159_5
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1159_2
.Lcall_proc_staged_α_1159_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1159_2
.Lcall_proc_staged_α_1159_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1159_6
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1159_2
.Lcall_proc_staged_α_1159_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1159_2
.Lcall_proc_staged_α_1159_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1159_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1159_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lcall_proc_staged_α_1159_29:
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n1134_lit_string_α
                                                                              jmp   n1126_lit_string_α
n1125_call_proc_staged_β:
                        mov              r11, 478
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 480], 0
                        lea              rdi, [rsp + 496]
                        lea              rsi, [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n1134_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              ecx, 32
                        mov              r8d, 1328
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n1134_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_1159_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_1159_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1159_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1159_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1159_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n1134_lit_string_α
                                                                              jmp   n1126_lit_string_α
.Lcall_proc_staged_β_1159_0:
                        .quad            .Lcall_proc_staged_β_1159_0_s
.Lcall_proc_staged_β_1159_0_s:
                        .string          "query/1"
                        .size            n1125_call_proc_staged_bx, .-n1125_call_proc_staged_bx
                        .type            n1126_lit_string_bx, @function
n1126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1126_lit_string_α:     mov              r11, 479
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1127_var_ref_α
.Llit_string_α_1160_0:  .quad            .Llit_string_α_1160_0_s
.Llit_string_α_1160_0_s:
                        .string          "."
                        .size            n1126_lit_string_bx, .-n1126_lit_string_bx
                        .type            n1127_var_ref_bx, @function
n1127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1127_var_ref_α:        mov              r11, 480
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n1128_lit_string_α
                        .size            n1127_var_ref_bx, .-n1127_var_ref_bx
                        .type            n1128_lit_string_bx, @function
n1128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1128_lit_string_α:     mov              r11, 481
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1163_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1129_var_ref_α
.Llit_string_α_1163_0:  .quad            .Llit_string_α_1163_0_s
.Llit_string_α_1163_0_s:
                        .string          "."
                        .size            n1128_lit_string_bx, .-n1128_lit_string_bx
                        .type            n1129_var_ref_bx, @function
n1129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1129_var_ref_α:        mov              r11, 482
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n1130_lit_string_α
                        .size            n1129_var_ref_bx, .-n1129_var_ref_bx
                        .type            n1130_lit_string_bx, @function
n1130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1130_lit_string_α:     mov              r11, 483
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1166_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1131_call_prolog_α
.Llit_string_α_1166_0:  .quad            .Llit_string_α_1166_0_s
.Llit_string_α_1166_0_s:
                        .string          "[]"
                        .size            n1130_lit_string_bx, .-n1130_lit_string_bx
                        .type            n1131_call_prolog_bx, @function
n1131_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1131_call_prolog_α:    mov              r11, 484
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1132_call_prolog_α
n1131_call_prolog_β:    mov              r11, 484;                            jmp   main_ω
                        .size            n1131_call_prolog_bx, .-n1131_call_prolog_bx
                        .type            n1132_call_prolog_bx, @function
n1132_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1132_call_prolog_α:    mov              r11, 485
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
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
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1133_call_prolog_α
n1132_call_prolog_β:    mov              r11, 485;                            jmp   main_ω
                        .size            n1132_call_prolog_bx, .-n1132_call_prolog_bx
                        .type            n1133_call_prolog_bx, @function
n1133_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_prolog_α:    mov              r11, 486
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1170: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1170]
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
                                                                              jmp   n1136_lit_string_α
n1133_call_prolog_β:    mov              r11, 486;                            jmp   main_ω
                        .size            n1133_call_prolog_bx, .-n1133_call_prolog_bx
                        .type            n1134_lit_string_bx, @function
n1134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1134_lit_string_α:     mov              r11, 487
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1171_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1135_call_prolog_α
.Llit_string_α_1171_0:  .quad            .Llit_string_α_1171_0_s
.Llit_string_α_1171_0_s:
                        .string          "none"
                        .size            n1134_lit_string_bx, .-n1134_lit_string_bx
                        .type            n1135_call_prolog_bx, @function
n1135_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1135_call_prolog_α:    mov              r11, 488
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1173: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1173]
                        lea              rsi, [rsp + 416]
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n1138_lit_string_α
                                                                              jmp   n1136_lit_string_α
n1135_call_prolog_β:    mov              r11, 488;                            jmp   n1138_lit_string_α
                        .size            n1135_call_prolog_bx, .-n1135_call_prolog_bx
                        .type            n1136_lit_string_bx, @function
n1136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1136_lit_string_α:     mov              r11, 489
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1174_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1137_call_prolog_α
.Llit_string_α_1174_0:  .quad            .Llit_string_α_1174_0_s
.Llit_string_α_1174_0_s:
                        .string          ""
                        .size            n1136_lit_string_bx, .-n1136_lit_string_bx
                        .type            n1137_call_prolog_bx, @function
n1137_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1137_call_prolog_α:    mov              r11, 490
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1176: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1176]
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
                        cmp              al, 104;                             je    n1138_lit_string_α
                                                                              jmp   main_γ
n1137_call_prolog_β:    mov              r11, 490;                            jmp   n1138_lit_string_α
                        .size            n1137_call_prolog_bx, .-n1137_call_prolog_bx
                        .type            n1138_lit_string_bx, @function
n1138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1138_lit_string_α:     mov              r11, 491
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_1177_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1139_lit_string_α
.Llit_string_α_1177_0:  .quad            .Llit_string_α_1177_0_s
.Llit_string_α_1177_0_s:
                        .string          "user_error"
                        .size            n1138_lit_string_bx, .-n1138_lit_string_bx
                        .type            n1139_lit_string_bx, @function
n1139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1139_lit_string_α:     mov              r11, 492
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_1178_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n1140_call_prolog_α
.Llit_string_α_1178_0:  .quad            .Llit_string_α_1178_0_s
.Llit_string_α_1178_0_s:
                        .string          "Warning: initialization goal failed: main/0\n"
                        .size            n1139_lit_string_bx, .-n1139_lit_string_bx
                        .type            n1140_call_prolog_bx, @function
n1140_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1140_call_prolog_α:    mov              r11, 493
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1180: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1180]
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
n1140_call_prolog_β:    mov              r11, 493;                            jmp   main_ω
                        .size            n1140_call_prolog_bx, .-n1140_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        add              rsp, 1088;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "area/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__area$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            5296
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "query/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__query$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1440
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pop/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__pop$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            5296
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "density/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__density$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
