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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
area$2F2_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx201_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx201_101
.Lx201_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx201_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx201_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx201_101
.Lx201_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx201_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n3_call_builtin_prolog_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "china"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              rsi, qword ptr [rip + .Lx205_2];     jmp   .Lx205_3
.Lx205_2:               .quad            .Lx205_2_s
.Lx205_2_s:             .string          "china"
.Lx205_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              eax, 104;                            je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n6_call_builtin_prolog_α
.Lx208_0:               .quad            3380
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_suspend_α
n6_call_builtin_prolog_β:
                                                                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx211_61
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
.Lx211_61:              mov              rdi, qword ptr [rsp + 48]
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
n7_suspend_β:                                                                 jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 5
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n11_call_builtin_prolog_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "india"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              rsi, qword ptr [rip + .Lx216_2];     jmp   .Lx216_3
.Lx216_2:               .quad            .Lx216_2_s
.Lx216_2_s:             .string          "india"
.Lx216_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              eax, 104;                            je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n14_call_builtin_prolog_α
.Lx219_0:               .quad            1139
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx222_61
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
.Lx222_61:              mov              rdi, qword ptr [rsp + 48]
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
n15_suspend_β:                                                                jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx;         jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 4
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n19_call_builtin_prolog_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "ussr"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4808], rax
                        lea              rdi, [rsp + 4800]
                        mov              rsi, qword ptr [rip + .Lx227_2];     jmp   .Lx227_3
.Lx227_2:               .quad            .Lx227_2_s
.Lx227_2_s:             .string          "ussr"
.Lx227_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              eax, 104;                            je    n24_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                              jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n22_call_builtin_prolog_α
.Lx230_0:               .quad            8708
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n24_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_suspend_α
n22_call_builtin_prolog_β:
                                                                              jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:          mov              rax, qword ptr [rsp + 0]
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
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lx233_61:              mov              rdi, qword ptr [rsp + 48]
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
n23_suspend_β:                                                                jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 4640], 2            # result
                        mov              dword ptr [rsp + 4644], 3
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n27_call_builtin_prolog_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "usa"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              rsi, qword ptr [rip + .Lx238_2];     jmp   .Lx238_3
.Lx238_2:               .quad            .Lx238_2_s
.Lx238_2_s:             .string          "usa"
.Lx238_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              eax, 104;                            je    n32_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                              jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n30_call_builtin_prolog_α
.Lx241_0:               .quad            3609
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n32_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_suspend_α
n30_call_builtin_prolog_β:
                                                                              jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx244_61
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
.Lx244_61:              mov              rdi, qword ptr [rsp + 48]
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
n31_suspend_β:                                                                jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 9
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n35_call_builtin_prolog_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "indonesia"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        mov              rsi, qword ptr [rip + .Lx249_2];     jmp   .Lx249_3
.Lx249_2:               .quad            .Lx249_2_s
.Lx249_2_s:             .string          "indonesia"
.Lx249_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                                                                              jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n38_call_builtin_prolog_α
.Lx252_0:               .quad            570
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n40_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_suspend_α
n38_call_builtin_prolog_β:
                                                                              jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx255_61
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
.Lx255_61:              mov              rdi, qword ptr [rsp + 48]
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
n39_suspend_β:                                                                jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 5
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n43_call_builtin_prolog_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "japan"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              rsi, qword ptr [rip + .Lx260_2];     jmp   .Lx260_3
.Lx260_2:               .quad            .Lx260_2_s
.Lx260_2_s:             .string          "japan"
.Lx260_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                                                                              jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n46_call_builtin_prolog_α
.Lx263_0:               .quad            148
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_suspend_α
n46_call_builtin_prolog_β:
                                                                              jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx266_61
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
.Lx266_61:              mov              rdi, qword ptr [rsp + 48]
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
n47_suspend_β:                                                                jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx;         jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              qword ptr [rsp + 4016], 2            # result
                        mov              dword ptr [rsp + 4020], 6
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n51_call_builtin_prolog_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "brazil"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              rsi, qword ptr [rip + .Lx271_2];     jmp   .Lx271_3
.Lx271_2:               .quad            .Lx271_2_s
.Lx271_2_s:             .string          "brazil"
.Lx271_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n54_call_builtin_prolog_α
.Lx274_0:               .quad            3288
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_suspend_α
n54_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx277_61
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
.Lx277_61:              mov              rdi, qword ptr [rsp + 48]
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
n55_suspend_β:                                                                jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx;         jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 10
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n59_call_builtin_prolog_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "bangladesh"
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        lea              rdi, [rsp + 3760]
                        mov              rsi, qword ptr [rip + .Lx282_2];     jmp   .Lx282_3
.Lx282_2:               .quad            .Lx282_2_s
.Lx282_2_s:             .string          "bangladesh"
.Lx282_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              eax, 104;                            je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                                                                              jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n62_call_builtin_prolog_α
.Lx285_0:               .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_suspend_α
n62_call_builtin_prolog_β:
                                                                              jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx288_61
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
.Lx288_61:              mov              rdi, qword ptr [rsp + 48]
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
n63_suspend_β:                                                                jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_var_ref_α
n64_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 8
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n67_call_builtin_prolog_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "pakistan"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              rsi, qword ptr [rip + .Lx293_2];     jmp   .Lx293_3
.Lx293_2:               .quad            .Lx293_2_s
.Lx293_2_s:             .string          "pakistan"
.Lx293_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              eax, 104;                            je    n72_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_var_ref_α
n67_call_builtin_prolog_β:
                                                                              jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n70_call_builtin_prolog_α
.Lx296_0:               .quad            311
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n72_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_suspend_α
n70_call_builtin_prolog_β:
                                                                              jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx299_61
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
.Lx299_61:              mov              rdi, qword ptr [rsp + 48]
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
n71_suspend_β:                                                                jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_var_ref_α
n72_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 9
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n75_call_builtin_prolog_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "w_germany"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              rsi, qword ptr [rip + .Lx304_2];     jmp   .Lx304_3
.Lx304_2:               .quad            .Lx304_2_s
.Lx304_2_s:             .string          "w_germany"
.Lx304_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104;                            je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n78_call_builtin_prolog_α
.Lx307_0:               .quad            96
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_suspend_α
n78_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx310_61
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
.Lx310_61:              mov              rdi, qword ptr [rsp + 48]
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
n79_suspend_β:                                                                jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 7
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n83_call_builtin_prolog_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "nigeria"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              rsi, qword ptr [rip + .Lx315_2];     jmp   .Lx315_3
.Lx315_2:               .quad            .Lx315_2_s
.Lx315_2_s:             .string          "nigeria"
.Lx315_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104;                            je    n88_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                                                                              jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n86_call_builtin_prolog_α
.Lx318_0:               .quad            373
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n88_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_suspend_α
n86_call_builtin_prolog_β:
                                                                              jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx321_61
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
.Lx321_61:              mov              rdi, qword ptr [rsp + 48]
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
n87_suspend_β:                                                                jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 6
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n91_call_builtin_prolog_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "mexico"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              rsi, qword ptr [rip + .Lx326_2];     jmp   .Lx326_3
.Lx326_2:               .quad            .Lx326_2_s
.Lx326_2_s:             .string          "mexico"
.Lx326_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n96_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                                                                              jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n94_call_builtin_prolog_α
.Lx329_0:               .quad            764
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n96_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_suspend_α
n94_call_builtin_prolog_β:
                                                                              jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx332_61
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
.Lx332_61:              mov              rdi, qword ptr [rsp + 48]
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
n95_suspend_β:                                                                jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n99_call_builtin_prolog_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "uk"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              rsi, qword ptr [rip + .Lx337_2];     jmp   .Lx337_3
.Lx337_2:               .quad            .Lx337_2_s
.Lx337_2_s:             .string          "uk"
.Lx337_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              eax, 104;                            je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                                                                              jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n102_call_builtin_prolog_α
.Lx340_0:               .quad            86
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n104_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_suspend_α
n102_call_builtin_prolog_β:
                                                                              jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx343_61
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
.Lx343_61:              mov              rdi, qword ptr [rsp + 48]
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
n103_suspend_β:                                                               jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_var_ref_α
n104_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 5
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n107_call_builtin_prolog_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "italy"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        lea              rdi, [rsp + 2512]
                        mov              rsi, qword ptr [rip + .Lx348_2];     jmp   .Lx348_3
.Lx348_2:               .quad            .Lx348_2_s
.Lx348_2_s:             .string          "italy"
.Lx348_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104;                            je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_var_ref_α
n107_call_builtin_prolog_β:
                                                                              jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n110_call_builtin_prolog_α
.Lx351_0:               .quad            116
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_suspend_α
n110_call_builtin_prolog_β:
                                                                              jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx354_61
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
.Lx354_61:              mov              rdi, qword ptr [rsp + 48]
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
n111_suspend_β:                                                               jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_var_ref_α
n112_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n115_call_builtin_prolog_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          "france"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        lea              rdi, [rsp + 2304]
                        mov              rsi, qword ptr [rip + .Lx359_2];     jmp   .Lx359_3
.Lx359_2:               .quad            .Lx359_2_s
.Lx359_2_s:             .string          "france"
.Lx359_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104;                            je    n120_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                              jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n118_call_builtin_prolog_α
.Lx362_0:               .quad            213
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n120_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_suspend_α
n118_call_builtin_prolog_β:
                                                                              jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx365_61
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
.Lx365_61:              mov              rdi, qword ptr [rsp + 48]
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
n119_suspend_β:                                                               jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_var_ref_α
n120_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 11
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n123_call_builtin_prolog_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "philippines"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              rsi, qword ptr [rip + .Lx370_2];     jmp   .Lx370_3
.Lx370_2:               .quad            .Lx370_2_s
.Lx370_2_s:             .string          "philippines"
.Lx370_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                              jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n126_call_builtin_prolog_α
.Lx373_0:               .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_suspend_α
n126_call_builtin_prolog_β:
                                                                              jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx376_61
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
.Lx376_61:              mov              rdi, qword ptr [rsp + 48]
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
n127_suspend_β:                                                               jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_var_ref_α
n128_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 8
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n131_call_builtin_prolog_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "thailand"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              rsi, qword ptr [rip + .Lx381_2];     jmp   .Lx381_3
.Lx381_2:               .quad            .Lx381_2_s
.Lx381_2_s:             .string          "thailand"
.Lx381_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n136_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                                                                              jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n134_call_builtin_prolog_α
.Lx384_0:               .quad            200
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n136_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_suspend_α
n134_call_builtin_prolog_β:
                                                                              jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx387_61
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
.Lx387_61:              mov              rdi, qword ptr [rsp + 48]
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
n135_suspend_β:                                                               jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 6
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n139_call_builtin_prolog_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "turkey"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              rsi, qword ptr [rip + .Lx392_2];     jmp   .Lx392_3
.Lx392_2:               .quad            .Lx392_2_s
.Lx392_2_s:             .string          "turkey"
.Lx392_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n144_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                              jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n142_call_builtin_prolog_α
.Lx395_0:               .quad            296
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n144_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_suspend_α
n142_call_builtin_prolog_β:
                                                                              jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx398_61
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
.Lx398_61:              mov              rdi, qword ptr [rsp + 48]
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
n143_suspend_β:                                                               jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_var_ref_α
n144_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 5
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n147_call_builtin_prolog_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "egypt"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              rsi, qword ptr [rip + .Lx403_2];     jmp   .Lx403_3
.Lx403_2:               .quad            .Lx403_2_s
.Lx403_2_s:             .string          "egypt"
.Lx403_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n152_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                                                                              jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n150_call_builtin_prolog_α
.Lx406_0:               .quad            386
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n152_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_suspend_α
n150_call_builtin_prolog_β:
                                                                              jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx409_61
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
.Lx409_61:              mov              rdi, qword ptr [rsp + 48]
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
n151_suspend_β:                                                               jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_var_ref_α
n152_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n155_call_builtin_prolog_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "spain"
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              rsi, qword ptr [rip + .Lx414_2];     jmp   .Lx414_3
.Lx414_2:               .quad            .Lx414_2_s
.Lx414_2_s:             .string          "spain"
.Lx414_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 104;                            je    n160_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                                                                              jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n158_call_builtin_prolog_α
.Lx417_0:               .quad            190
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n160_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_suspend_α
n158_call_builtin_prolog_β:
                                                                              jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx420_61
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
.Lx420_61:              mov              rdi, qword ptr [rsp + 48]
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
n159_suspend_β:                                                               jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_var_ref_α
n160_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n163_call_builtin_prolog_α
.Lx424_0:               .quad            .Lx424_0_s
.Lx424_0_s:             .string          "poland"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lx425_2];     jmp   .Lx425_3
.Lx425_2:               .quad            .Lx425_2_s
.Lx425_2_s:             .string          "poland"
.Lx425_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n168_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                                                                              jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n166_call_builtin_prolog_α
.Lx428_0:               .quad            121
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n168_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_suspend_α
n166_call_builtin_prolog_β:
                                                                              jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx431_61
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
.Lx431_61:              mov              rdi, qword ptr [rsp + 48]
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
n167_suspend_β:                                                               jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_var_ref_α
n168_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 7
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n171_call_builtin_prolog_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "s_korea"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lx436_2];     jmp   .Lx436_3
.Lx436_2:               .quad            .Lx436_2_s
.Lx436_2_s:             .string          "s_korea"
.Lx436_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n176_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                              jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n174_call_builtin_prolog_α
.Lx439_0:               .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n176_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_suspend_α
n174_call_builtin_prolog_β:
                                                                              jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n175_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx442_61
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
.Lx442_61:              mov              rdi, qword ptr [rsp + 48]
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
n175_suspend_β:                                                               jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_var_ref_α
n176_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n179_call_builtin_prolog_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "iran"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx447_2];     jmp   .Lx447_3
.Lx447_2:               .quad            .Lx447_2_s
.Lx447_2_s:             .string          "iran"
.Lx447_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_var_ref_α
n179_call_builtin_prolog_β:
                                                                              jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n182_call_builtin_prolog_α
.Lx450_0:               .quad            628
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_suspend_α
n182_call_builtin_prolog_β:
                                                                              jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx453_61
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
.Lx453_61:              mov              rdi, qword ptr [rsp + 48]
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
n183_suspend_β:                                                               jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n187_call_builtin_prolog_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "ethiopia"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx458_2];     jmp   .Lx458_3
.Lx458_2:               .quad            .Lx458_2_s
.Lx458_2_s:             .string          "ethiopia"
.Lx458_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n188_var_ref_α
n187_call_builtin_prolog_β:
                                                                              jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n190_call_builtin_prolog_α
.Lx461_0:               .quad            350
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_suspend_α
n190_call_builtin_prolog_β:
                                                                              jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx464_61
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
.Lx464_61:              mov              rdi, qword ptr [rsp + 48]
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
n191_suspend_β:                                                               jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n193_var_ref_α
n192_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 9
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n195_call_builtin_prolog_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "argentina"
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx469_2];     jmp   .Lx469_3
.Lx469_2:               .quad            .Lx469_2_s
.Lx469_2_s:             .string          "argentina"
.Lx469_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n200_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_var_ref_α
n195_call_builtin_prolog_β:
                                                                              jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n198_call_builtin_prolog_α
.Lx472_0:               .quad            1080
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n200_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_suspend_α
n198_call_builtin_prolog_β:
                                                                              jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx475_61
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
.Lx475_61:              mov              rdi, qword ptr [rsp + 48]
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
n199_suspend_β:                                                               jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    area$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   area$2F2_ω
n200_call_builtin_prolog_β:
                                                                              jmp   area$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_β:
                                                                              jmp   n7_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx476_50
                        mov              qword ptr [rsp + 5280], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lx476_50:              mov              rdi, rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
query$2F1_α_body:
                        lea              rax, [rip + n515_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx517_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx517_101
.Lx517_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx517_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx517_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx517_101
.Lx517_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx517_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    query$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_var_ref_α
n477_call_builtin_prolog_β:
                                                                              jmp   query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n480_var_ref_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n482_var_ref_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n483_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n484_var_ref_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n485_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n486_var_ref_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n487_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 2
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n488_call_builtin_prolog_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    query$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n489_call_builtin_prolog_α
n488_call_builtin_prolog_β:
                                                                              jmp   query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    query$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n490_call_builtin_prolog_α
n489_call_builtin_prolog_β:
                                                                              jmp   query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    query$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_call_builtin_prolog_α
n490_call_builtin_prolog_β:
                                                                              jmp   query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n492_call_builtin_prolog_α
n491_call_builtin_prolog_β:
                                                                              jmp   n516_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_prolog_α:
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
.Lx537_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx537_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx537_41
                        cmp              esi, 1;                              jne   .Lx537_55
                        mov              r8, rax;                             jmp   .Lx537_40
.Lx537_55:              cmp              esi, 2;                              jne   .Lx537_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx537_41
                        mov              r8, rax;                             jmp   .Lx537_40
.Lx537_56:              cmp              eax, 72;                             jne   .Lx537_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx537_41
                        cmp              rax, r8;                             je    .Lx537_41
                        mov              r8, rax;                             jmp   .Lx537_40
.Lx537_41:              lea              r9, [rsp + 832]
.Lx537_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx537_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx537_43
                        cmp              esi, 1;                              jne   .Lx537_57
                        mov              r9, rax;                             jmp   .Lx537_42
.Lx537_57:              cmp              esi, 2;                              jne   .Lx537_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx537_43
                        mov              r9, rax;                             jmp   .Lx537_42
.Lx537_58:              cmp              eax, 72;                             jne   .Lx537_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx537_43
                        cmp              rax, r9;                             je    .Lx537_43
                        mov              r9, rax;                             jmp   .Lx537_42
.Lx537_43:              cmp              r8, r9;                              je    .Lx537_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx537_44
                        cmp              eax, 104;                            je    .Lx537_44
                        cmp              eax, 72;                             jne   .Lx537_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx537_44
                                                                              jmp   .Lx537_45
.Lx537_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx537_53
                        cmp              eax, 104;                            je    .Lx537_53
                        cmp              eax, 72;                             jne   .Lx537_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx537_53
                                                                              jmp   .Lx537_46
.Lx537_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx537_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx537_51
.Lx537_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx537_47
                        cmp              eax, 104;                            je    .Lx537_47
                        cmp              eax, 72;                             jne   .Lx537_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx537_47
                                                                              jmp   .Lx537_48
.Lx537_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx537_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx537_51
.Lx537_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx537_49
                        cmp              edx, 80;                             je    .Lx537_53
                                                                              jmp   .Lx537_52
.Lx537_49:              cmp              edx, 80;                             je    .Lx537_52
                        cmp              ecx, 5;                              je    .Lx537_53
                        cmp              edx, 5;                              je    .Lx537_53
                        cmp              ecx, 3;                              jne   .Lx537_50
                        cmp              edx, 3;                              jne   .Lx537_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx537_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx537_51
                                                                              jmp   .Lx537_52
.Lx537_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx537_53
.Lx537_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx537_54
.Lx537_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx537_54
.Lx537_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx537_54:              mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_var_ref_α
n492_call_builtin_prolog_β:
                                                                              jmp   n516_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n495_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_proc_staged_α:
                        mov              qword ptr [rsp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx543_20
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx543_21
.Lx543_20:              mov              edi, 0
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
.Lx543_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx543_22
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx543_23
.Lx543_22:              mov              edi, 1
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
.Lx543_23:              lea              rax, [rip + .Lx543_7]
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
                        test             rax, rax;                            je    .Lx543_1
                        lea              rcx, [rip + .Lx543_3]
                        lea              rdx, [rip + .Lx543_4];               jmp   rax
.Lx543_3:               mov              qword ptr [rsp + 744], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lx543_5
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx543_2
.Lx543_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx543_2
.Lx543_4:               mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lx543_6
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx543_2
.Lx543_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx543_2
.Lx543_1:               call             rt_faildescr@PLT
.Lx543_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx543_29
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
.Lx543_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                                                                              jmp   n496_var_ref_α
n495_call_proc_staged_β:
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
                        test             rax, rax;                            je    n516_call_builtin_prolog_α
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
                        test             rax, rax;                            je    n516_call_builtin_prolog_α
                        lea              r11, [rip + .Lx543_7]
                        push             r11
                        lea              rcx, [rip + .Lx543_3]
                        lea              rdx, [rip + .Lx543_4];               jmp   rax
.Lx543_7:               add              rsp, 8
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                                                                              jmp   n496_var_ref_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "density/2"
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n498_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_proc_staged_α:
                        mov              qword ptr [rsp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx549_20
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx549_21
.Lx549_20:              mov              edi, 0
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
.Lx549_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx549_22
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx549_23
.Lx549_22:              mov              edi, 1
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
.Lx549_23:              lea              rax, [rip + .Lx549_7]
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
                        test             rax, rax;                            je    .Lx549_1
                        lea              rcx, [rip + .Lx549_3]
                        lea              rdx, [rip + .Lx549_4];               jmp   rax
.Lx549_3:               mov              qword ptr [rsp + 632], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 624]
                        test             rax, rax;                            jne   .Lx549_5
                        mov              qword ptr [rsp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx549_2
.Lx549_4:               mov              rax, qword ptr [rsp + 624]
                        test             rax, rax;                            jne   .Lx549_6
                        mov              qword ptr [rsp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx549_2
.Lx549_1:               call             rt_faildescr@PLT
.Lx549_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx549_29
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
.Lx549_29:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n495_call_proc_staged_β
                                                                              jmp   n499_var_α
n498_call_proc_staged_β:
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
                        lea              r11, [rip + .Lx549_7]
                        push             r11
                        lea              rcx, [rip + .Lx549_3]
                        lea              rdx, [rip + .Lx549_4];               jmp   rax
.Lx549_7:               add              rsp, 8
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n495_call_proc_staged_β
                                                                              jmp   n499_var_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "density/2"
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 552], rax;          jmp   n500_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 568], rax;          jmp   n501_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n498_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n502_var_ref_α
n501_call_builtin_prolog_β:
                                                                              jmp   n498_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:     mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n504_var_α
.Lx557_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 488], rax;          jmp   n505_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_call_builtin_prolog_α
n505_call_builtin_prolog_β:
                                                                              jmp   n516_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n498_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_var_ref_α
n506_call_builtin_prolog_β:
                                                                              jmp   n498_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n508_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:     mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n509_var_α
.Lx564_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 328], rax;          jmp   n510_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n516_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n511_call_builtin_prolog_α
n510_call_builtin_prolog_β:
                                                                              jmp   n516_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n498_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_var_α
n511_call_builtin_prolog_β:
                                                                              jmp   n498_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n512_var_α:             mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 152], rax;          jmp   n513_var_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:             mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 168], rax;          jmp   n514_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n498_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_suspend_α
n514_call_builtin_prolog_β:
                                                                              jmp   n498_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n515_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx575_61
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
.Lx575_61:              mov              rdi, qword ptr [rsp + 32]
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
n515_suspend_β:                                                               jmp   n498_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    query$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query$2F1_ω
n516_call_builtin_prolog_β:
                                                                              jmp   query$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_β:
                                                                              jmp   n515_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx576_50
                        mov              qword ptr [rsp + 1328], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx576_50:              mov              rdi, rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pop$2F2_α_body:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rsp + 5280], rax
#-----------------------------------------------------------------------------------------------------------------------
n577_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx778_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx778_101
.Lx778_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx778_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx778_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx778_101
.Lx778_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx778_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n578_var_ref_α
n577_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 5
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n580_call_builtin_prolog_α
.Lx781_0:               .quad            .Lx781_0_s
.Lx781_0_s:             .string          "china"
#-----------------------------------------------------------------------------------------------------------------------
n580_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              rsi, qword ptr [rip + .Lx782_2];     jmp   .Lx782_3
.Lx782_2:               .quad            .Lx782_2_s
.Lx782_2_s:             .string          "china"
.Lx782_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              eax, 104;                            je    n585_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n581_var_ref_α
n580_call_builtin_prolog_β:
                                                                              jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n582_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_integer_α:     mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n583_call_builtin_prolog_α
.Lx785_0:               .quad            8250
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n585_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n584_suspend_α
n583_call_builtin_prolog_β:
                                                                              jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n584_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx788_61
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
.Lx788_61:              mov              rdi, qword ptr [rsp + 48]
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
n584_suspend_β:                                                               jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n585_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_var_ref_α
n585_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n587_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 5
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n588_call_builtin_prolog_α
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "india"
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 5008], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 5016], rax
                        lea              rdi, [rsp + 5008]
                        mov              rsi, qword ptr [rip + .Lx793_2];     jmp   .Lx793_3
.Lx793_2:               .quad            .Lx793_2_s
.Lx793_2_s:             .string          "india"
.Lx793_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                        cmp              eax, 104;                            je    n593_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_var_ref_α
n588_call_builtin_prolog_β:
                                                                              jmp   n593_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n590_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_integer_α:     mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n591_call_builtin_prolog_α
.Lx796_0:               .quad            5863
#-----------------------------------------------------------------------------------------------------------------------
n591_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n593_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n592_suspend_α
n591_call_builtin_prolog_β:
                                                                              jmp   n593_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n592_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx799_61
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
.Lx799_61:              mov              rdi, qword ptr [rsp + 48]
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
n592_suspend_β:                                                               jmp   n593_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_var_ref_α
n593_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx;         jmp   n595_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 4
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n596_call_builtin_prolog_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "ussr"
#-----------------------------------------------------------------------------------------------------------------------
n596_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4808], rax
                        lea              rdi, [rsp + 4800]
                        mov              rsi, qword ptr [rip + .Lx804_2];     jmp   .Lx804_3
.Lx804_2:               .quad            .Lx804_2_s
.Lx804_2_s:             .string          "ussr"
.Lx804_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              eax, 104;                            je    n601_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n597_var_ref_α
n596_call_builtin_prolog_β:
                                                                              jmp   n601_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n598_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_integer_α:     mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n599_call_builtin_prolog_α
.Lx807_0:               .quad            2521
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n601_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n600_suspend_α
n599_call_builtin_prolog_β:
                                                                              jmp   n601_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n600_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx810_61
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
.Lx810_61:              mov              rdi, qword ptr [rsp + 48]
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
n600_suspend_β:                                                               jmp   n601_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n601_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n602_var_ref_α
n601_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n603_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              qword ptr [rsp + 4640], 2            # result
                        mov              dword ptr [rsp + 4644], 3
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n604_call_builtin_prolog_α
.Lx814_0:               .quad            .Lx814_0_s
.Lx814_0_s:             .string          "usa"
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              rsi, qword ptr [rip + .Lx815_2];     jmp   .Lx815_3
.Lx815_2:               .quad            .Lx815_2_s
.Lx815_2_s:             .string          "usa"
.Lx815_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              eax, 104;                            je    n609_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n605_var_ref_α
n604_call_builtin_prolog_β:
                                                                              jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n606_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:     mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n607_call_builtin_prolog_α
.Lx818_0:               .quad            2119
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n609_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n608_suspend_α
n607_call_builtin_prolog_β:
                                                                              jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:         mov              rax, qword ptr [rsp + 0]
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
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lx821_61:              mov              rdi, qword ptr [rsp + 48]
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
n608_suspend_β:                                                               jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n610_var_ref_α
n609_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n611_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:      mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 9
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n612_call_builtin_prolog_α
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "indonesia"
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        mov              rsi, qword ptr [rip + .Lx826_2];     jmp   .Lx826_3
.Lx826_2:               .quad            .Lx826_2_s
.Lx826_2_s:             .string          "indonesia"
.Lx826_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              eax, 104;                            je    n617_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_var_ref_α
n612_call_builtin_prolog_β:
                                                                              jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n614_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_integer_α:     mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n615_call_builtin_prolog_α
.Lx829_0:               .quad            1276
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n617_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_suspend_α
n615_call_builtin_prolog_β:
                                                                              jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n616_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx832_61
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
.Lx832_61:              mov              rdi, qword ptr [rsp + 48]
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
n616_suspend_β:                                                               jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n617_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n618_var_ref_α
n617_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n619_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 5
                        mov              rax, qword ptr [rip + .Lx836_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n620_call_builtin_prolog_α
.Lx836_0:               .quad            .Lx836_0_s
.Lx836_0_s:             .string          "japan"
#-----------------------------------------------------------------------------------------------------------------------
n620_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              rsi, qword ptr [rip + .Lx837_2];     jmp   .Lx837_3
.Lx837_2:               .quad            .Lx837_2_s
.Lx837_2_s:             .string          "japan"
.Lx837_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n625_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n621_var_ref_α
n620_call_builtin_prolog_β:
                                                                              jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n622_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_integer_α:     mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n623_call_builtin_prolog_α
.Lx840_0:               .quad            1097
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n625_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n624_suspend_α
n623_call_builtin_prolog_β:
                                                                              jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n624_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx843_61
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
.Lx843_61:              mov              rdi, qword ptr [rsp + 48]
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
n624_suspend_β:                                                               jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n625_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_var_ref_α
n625_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx;         jmp   n627_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      mov              qword ptr [rsp + 4016], 2            # result
                        mov              dword ptr [rsp + 4020], 6
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n628_call_builtin_prolog_α
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "brazil"
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax
                        lea              rdi, [rsp + 3968]
                        mov              rsi, qword ptr [rip + .Lx848_2];     jmp   .Lx848_3
.Lx848_2:               .quad            .Lx848_2_s
.Lx848_2_s:             .string          "brazil"
.Lx848_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              eax, 104;                            je    n633_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_var_ref_α
n628_call_builtin_prolog_β:
                                                                              jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n630_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:     mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n631_call_builtin_prolog_α
.Lx851_0:               .quad            1042
#-----------------------------------------------------------------------------------------------------------------------
n631_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n633_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n632_suspend_α
n631_call_builtin_prolog_β:
                                                                              jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n632_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx854_61
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
.Lx854_61:              mov              rdi, qword ptr [rsp + 48]
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
n632_suspend_β:                                                               jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n633_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n634_var_ref_α
n633_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx;         jmp   n635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 10
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n636_call_builtin_prolog_α
.Lx858_0:               .quad            .Lx858_0_s
.Lx858_0_s:             .string          "bangladesh"
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        lea              rdi, [rsp + 3760]
                        mov              rsi, qword ptr [rip + .Lx859_2];     jmp   .Lx859_3
.Lx859_2:               .quad            .Lx859_2_s
.Lx859_2_s:             .string          "bangladesh"
.Lx859_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              eax, 104;                            je    n641_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n637_var_ref_α
n636_call_builtin_prolog_β:
                                                                              jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n638_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_integer_α:     mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n639_call_builtin_prolog_α
.Lx862_0:               .quad            750
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n641_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n640_suspend_α
n639_call_builtin_prolog_β:
                                                                              jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n640_suspend_α:         mov              rax, qword ptr [rsp + 0]
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
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lx865_61:              mov              rdi, qword ptr [rsp + 48]
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
n640_suspend_β:                                                               jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n642_var_ref_α
n641_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n643_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 8
                        mov              rax, qword ptr [rip + .Lx869_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n644_call_builtin_prolog_α
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "pakistan"
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              rsi, qword ptr [rip + .Lx870_2];     jmp   .Lx870_3
.Lx870_2:               .quad            .Lx870_2_s
.Lx870_2_s:             .string          "pakistan"
.Lx870_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              eax, 104;                            je    n649_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_var_ref_α
n644_call_builtin_prolog_β:
                                                                              jmp   n649_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n646_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_integer_α:     mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n647_call_builtin_prolog_α
.Lx873_0:               .quad            682
#-----------------------------------------------------------------------------------------------------------------------
n647_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n649_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n648_suspend_α
n647_call_builtin_prolog_β:
                                                                              jmp   n649_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n648_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx876_61
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
.Lx876_61:              mov              rdi, qword ptr [rsp + 48]
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
n648_suspend_β:                                                               jmp   n649_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n649_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n650_var_ref_α
n649_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n650_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n651_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:      mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 9
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n652_call_builtin_prolog_α
.Lx880_0:               .quad            .Lx880_0_s
.Lx880_0_s:             .string          "w_germany"
#-----------------------------------------------------------------------------------------------------------------------
n652_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              rsi, qword ptr [rip + .Lx881_2];     jmp   .Lx881_3
.Lx881_2:               .quad            .Lx881_2_s
.Lx881_2_s:             .string          "w_germany"
.Lx881_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104;                            je    n657_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n653_var_ref_α
n652_call_builtin_prolog_β:
                                                                              jmp   n657_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n654_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_integer_α:     mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n655_call_builtin_prolog_α
.Lx884_0:               .quad            620
#-----------------------------------------------------------------------------------------------------------------------
n655_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n657_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n656_suspend_α
n655_call_builtin_prolog_β:
                                                                              jmp   n657_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n656_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx887_61
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
.Lx887_61:              mov              rdi, qword ptr [rsp + 48]
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
n656_suspend_β:                                                               jmp   n657_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n657_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n658_var_ref_α
n657_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n658_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n659_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:      mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 7
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n660_call_builtin_prolog_α
.Lx891_0:               .quad            .Lx891_0_s
.Lx891_0_s:             .string          "nigeria"
#-----------------------------------------------------------------------------------------------------------------------
n660_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              rsi, qword ptr [rip + .Lx892_2];     jmp   .Lx892_3
.Lx892_2:               .quad            .Lx892_2_s
.Lx892_2_s:             .string          "nigeria"
.Lx892_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104;                            je    n665_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_var_ref_α
n660_call_builtin_prolog_β:
                                                                              jmp   n665_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n662_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_integer_α:     mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n663_call_builtin_prolog_α
.Lx895_0:               .quad            613
#-----------------------------------------------------------------------------------------------------------------------
n663_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n665_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n664_suspend_α
n663_call_builtin_prolog_β:
                                                                              jmp   n665_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n664_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx898_61
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
.Lx898_61:              mov              rdi, qword ptr [rsp + 48]
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
n664_suspend_β:                                                               jmp   n665_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n665_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n666_var_ref_α
n665_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n667_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 6
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n668_call_builtin_prolog_α
.Lx902_0:               .quad            .Lx902_0_s
.Lx902_0_s:             .string          "mexico"
#-----------------------------------------------------------------------------------------------------------------------
n668_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              rsi, qword ptr [rip + .Lx903_2];     jmp   .Lx903_3
.Lx903_2:               .quad            .Lx903_2_s
.Lx903_2_s:             .string          "mexico"
.Lx903_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n673_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n669_var_ref_α
n668_call_builtin_prolog_β:
                                                                              jmp   n673_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n670_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n670_lit_integer_α:     mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n671_call_builtin_prolog_α
.Lx906_0:               .quad            581
#-----------------------------------------------------------------------------------------------------------------------
n671_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n673_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n672_suspend_α
n671_call_builtin_prolog_β:
                                                                              jmp   n673_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n672_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx909_61
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
.Lx909_61:              mov              rdi, qword ptr [rsp + 48]
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
n672_suspend_β:                                                               jmp   n673_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n673_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n674_var_ref_α
n673_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n674_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n675_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n676_call_builtin_prolog_α
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "uk"
#-----------------------------------------------------------------------------------------------------------------------
n676_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              rsi, qword ptr [rip + .Lx914_2];     jmp   .Lx914_3
.Lx914_2:               .quad            .Lx914_2_s
.Lx914_2_s:             .string          "uk"
.Lx914_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              eax, 104;                            je    n681_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n677_var_ref_α
n676_call_builtin_prolog_β:
                                                                              jmp   n681_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n678_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_integer_α:     mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n679_call_builtin_prolog_α
.Lx917_0:               .quad            559
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n681_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n680_suspend_α
n679_call_builtin_prolog_β:
                                                                              jmp   n681_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n680_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx920_61
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
.Lx920_61:              mov              rdi, qword ptr [rsp + 48]
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
n680_suspend_β:                                                               jmp   n681_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n681_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n682_var_ref_α
n681_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 5
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n684_call_builtin_prolog_α
.Lx924_0:               .quad            .Lx924_0_s
.Lx924_0_s:             .string          "italy"
#-----------------------------------------------------------------------------------------------------------------------
n684_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        lea              rdi, [rsp + 2512]
                        mov              rsi, qword ptr [rip + .Lx925_2];     jmp   .Lx925_3
.Lx925_2:               .quad            .Lx925_2_s
.Lx925_2_s:             .string          "italy"
.Lx925_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104;                            je    n689_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n685_var_ref_α
n684_call_builtin_prolog_β:
                                                                              jmp   n689_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n686_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_integer_α:     mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n687_call_builtin_prolog_α
.Lx928_0:               .quad            554
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n689_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n688_suspend_α
n687_call_builtin_prolog_β:
                                                                              jmp   n689_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n688_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx931_61
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
.Lx931_61:              mov              rdi, qword ptr [rsp + 48]
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
n688_suspend_β:                                                               jmp   n689_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n689_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n690_var_ref_α
n689_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n691_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_string_α:      mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 6
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n692_call_builtin_prolog_α
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          "france"
#-----------------------------------------------------------------------------------------------------------------------
n692_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        lea              rdi, [rsp + 2304]
                        mov              rsi, qword ptr [rip + .Lx936_2];     jmp   .Lx936_3
.Lx936_2:               .quad            .Lx936_2_s
.Lx936_2_s:             .string          "france"
.Lx936_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104;                            je    n697_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n693_var_ref_α
n692_call_builtin_prolog_β:
                                                                              jmp   n697_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n694_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:     mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n695_call_builtin_prolog_α
.Lx939_0:               .quad            525
#-----------------------------------------------------------------------------------------------------------------------
n695_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n697_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n696_suspend_α
n695_call_builtin_prolog_β:
                                                                              jmp   n697_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n696_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx942_61
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
.Lx942_61:              mov              rdi, qword ptr [rsp + 48]
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
n696_suspend_β:                                                               jmp   n697_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n697_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n698_var_ref_α
n697_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n698_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 11
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n700_call_builtin_prolog_α
.Lx946_0:               .quad            .Lx946_0_s
.Lx946_0_s:             .string          "philippines"
#-----------------------------------------------------------------------------------------------------------------------
n700_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              rsi, qword ptr [rip + .Lx947_2];     jmp   .Lx947_3
.Lx947_2:               .quad            .Lx947_2_s
.Lx947_2_s:             .string          "philippines"
.Lx947_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n705_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_var_ref_α
n700_call_builtin_prolog_β:
                                                                              jmp   n705_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n701_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n702_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:     mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n703_call_builtin_prolog_α
.Lx950_0:               .quad            415
#-----------------------------------------------------------------------------------------------------------------------
n703_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n705_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n704_suspend_α
n703_call_builtin_prolog_β:
                                                                              jmp   n705_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n704_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx953_61
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
.Lx953_61:              mov              rdi, qword ptr [rsp + 48]
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
n704_suspend_β:                                                               jmp   n705_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n705_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n706_var_ref_α
n705_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n707_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 8
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n708_call_builtin_prolog_α
.Lx957_0:               .quad            .Lx957_0_s
.Lx957_0_s:             .string          "thailand"
#-----------------------------------------------------------------------------------------------------------------------
n708_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              rsi, qword ptr [rip + .Lx958_2];     jmp   .Lx958_3
.Lx958_2:               .quad            .Lx958_2_s
.Lx958_2_s:             .string          "thailand"
.Lx958_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n713_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n709_var_ref_α
n708_call_builtin_prolog_β:
                                                                              jmp   n713_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n710_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:     mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n711_call_builtin_prolog_α
.Lx961_0:               .quad            410
#-----------------------------------------------------------------------------------------------------------------------
n711_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n713_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n712_suspend_α
n711_call_builtin_prolog_β:
                                                                              jmp   n713_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n712_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx964_61
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
.Lx964_61:              mov              rdi, qword ptr [rsp + 48]
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
n712_suspend_β:                                                               jmp   n713_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n713_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n714_var_ref_α
n713_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n714_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 6
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n716_call_builtin_prolog_α
.Lx968_0:               .quad            .Lx968_0_s
.Lx968_0_s:             .string          "turkey"
#-----------------------------------------------------------------------------------------------------------------------
n716_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              rsi, qword ptr [rip + .Lx969_2];     jmp   .Lx969_3
.Lx969_2:               .quad            .Lx969_2_s
.Lx969_2_s:             .string          "turkey"
.Lx969_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n721_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n717_var_ref_α
n716_call_builtin_prolog_β:
                                                                              jmp   n721_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n717_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n718_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n719_call_builtin_prolog_α
.Lx972_0:               .quad            383
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n721_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n720_suspend_α
n719_call_builtin_prolog_β:
                                                                              jmp   n721_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n720_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx975_61
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
.Lx975_61:              mov              rdi, qword ptr [rsp + 48]
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
n720_suspend_β:                                                               jmp   n721_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n721_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n722_var_ref_α
n721_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n722_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n723_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 5
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n724_call_builtin_prolog_α
.Lx979_0:               .quad            .Lx979_0_s
.Lx979_0_s:             .string          "egypt"
#-----------------------------------------------------------------------------------------------------------------------
n724_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              rsi, qword ptr [rip + .Lx980_2];     jmp   .Lx980_3
.Lx980_2:               .quad            .Lx980_2_s
.Lx980_2_s:             .string          "egypt"
.Lx980_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n729_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n725_var_ref_α
n724_call_builtin_prolog_β:
                                                                              jmp   n729_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n726_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n727_call_builtin_prolog_α
.Lx983_0:               .quad            364
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n729_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n728_suspend_α
n727_call_builtin_prolog_β:
                                                                              jmp   n729_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n728_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx986_61
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
.Lx986_61:              mov              rdi, qword ptr [rsp + 48]
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
n728_suspend_β:                                                               jmp   n729_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n729_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n730_var_ref_α
n729_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n732_call_builtin_prolog_α
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "spain"
#-----------------------------------------------------------------------------------------------------------------------
n732_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              rsi, qword ptr [rip + .Lx991_2];     jmp   .Lx991_3
.Lx991_2:               .quad            .Lx991_2_s
.Lx991_2_s:             .string          "spain"
.Lx991_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 104;                            je    n737_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n733_var_ref_α
n732_call_builtin_prolog_β:
                                                                              jmp   n737_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n734_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n735_call_builtin_prolog_α
.Lx994_0:               .quad            352
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n737_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n736_suspend_α
n735_call_builtin_prolog_β:
                                                                              jmp   n737_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n736_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx997_61
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
.Lx997_61:              mov              rdi, qword ptr [rsp + 48]
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
n736_suspend_β:                                                               jmp   n737_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n738_var_ref_α
n737_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n740_call_builtin_prolog_α
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          "poland"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lx1002_2];    jmp   .Lx1002_3
.Lx1002_2:              .quad            .Lx1002_2_s
.Lx1002_2_s:            .string          "poland"
.Lx1002_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n745_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n741_var_ref_α
n740_call_builtin_prolog_β:
                                                                              jmp   n745_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n741_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n742_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_integer_α:     mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n743_call_builtin_prolog_α
.Lx1005_0:              .quad            337
#-----------------------------------------------------------------------------------------------------------------------
n743_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n745_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n744_suspend_α
n743_call_builtin_prolog_β:
                                                                              jmp   n745_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n744_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1008_61
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
.Lx1008_61:             mov              rdi, qword ptr [rsp + 48]
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
n744_suspend_β:                                                               jmp   n745_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n745_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n746_var_ref_α
n745_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n746_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:      mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 7
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n748_call_builtin_prolog_α
.Lx1012_0:              .quad            .Lx1012_0_s
.Lx1012_0_s:            .string          "s_korea"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lx1013_2];    jmp   .Lx1013_3
.Lx1013_2:              .quad            .Lx1013_2_s
.Lx1013_2_s:            .string          "s_korea"
.Lx1013_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n753_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n749_var_ref_α
n748_call_builtin_prolog_β:
                                                                              jmp   n753_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n749_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n750_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:     mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx1016_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n751_call_builtin_prolog_α
.Lx1016_0:              .quad            335
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n753_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n752_suspend_α
n751_call_builtin_prolog_β:
                                                                              jmp   n753_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n752_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1019_61
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
.Lx1019_61:             mov              rdi, qword ptr [rsp + 48]
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
n752_suspend_β:                                                               jmp   n753_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n754_var_ref_α
n753_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n756_call_builtin_prolog_α
.Lx1023_0:              .quad            .Lx1023_0_s
.Lx1023_0_s:            .string          "iran"
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx1024_2];    jmp   .Lx1024_3
.Lx1024_2:              .quad            .Lx1024_2_s
.Lx1024_2_s:            .string          "iran"
.Lx1024_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n761_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n757_var_ref_α
n756_call_builtin_prolog_β:
                                                                              jmp   n761_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n757_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n758_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n759_call_builtin_prolog_α
.Lx1027_0:              .quad            320
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n761_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n760_suspend_α
n759_call_builtin_prolog_β:
                                                                              jmp   n761_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n760_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1030_61
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
.Lx1030_61:             mov              rdi, qword ptr [rsp + 48]
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
n760_suspend_β:                                                               jmp   n761_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n761_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n762_var_ref_α
n761_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n762_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n763_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n764_call_builtin_prolog_α
.Lx1034_0:              .quad            .Lx1034_0_s
.Lx1034_0_s:            .string          "ethiopia"
#-----------------------------------------------------------------------------------------------------------------------
n764_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx1035_2];    jmp   .Lx1035_3
.Lx1035_2:              .quad            .Lx1035_2_s
.Lx1035_2_s:            .string          "ethiopia"
.Lx1035_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n769_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n765_var_ref_α
n764_call_builtin_prolog_β:
                                                                              jmp   n769_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n766_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n767_call_builtin_prolog_α
.Lx1038_0:              .quad            272
#-----------------------------------------------------------------------------------------------------------------------
n767_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n769_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n768_suspend_α
n767_call_builtin_prolog_β:
                                                                              jmp   n769_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n768_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1041_61
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
.Lx1041_61:             mov              rdi, qword ptr [rsp + 48]
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
n768_suspend_β:                                                               jmp   n769_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n770_var_ref_α
n769_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n770_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n771_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 9
                        mov              rax, qword ptr [rip + .Lx1045_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n772_call_builtin_prolog_α
.Lx1045_0:              .quad            .Lx1045_0_s
.Lx1045_0_s:            .string          "argentina"
#-----------------------------------------------------------------------------------------------------------------------
n772_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx1046_2];    jmp   .Lx1046_3
.Lx1046_2:              .quad            .Lx1046_2_s
.Lx1046_2_s:            .string          "argentina"
.Lx1046_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n777_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n773_var_ref_α
n772_call_builtin_prolog_β:
                                                                              jmp   n777_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n773_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n774_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n775_call_builtin_prolog_α
.Lx1049_0:              .quad            251
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n777_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n776_suspend_α
n775_call_builtin_prolog_β:
                                                                              jmp   n777_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n776_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1052_61
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
.Lx1052_61:             mov              rdi, qword ptr [rsp + 48]
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
n776_suspend_β:                                                               jmp   n777_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n777_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    pop$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pop$2F2_ω
n777_call_builtin_prolog_β:
                                                                              jmp   pop$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_β:
                                                                              jmp   n584_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1053_50
                        mov              qword ptr [rsp + 5280], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5280];         jmp   rax
.Lx1053_50:             mov              rdi, rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
density$2F2_α_body:
                        lea              rax, [rip + n1074_suspend_β]
                        mov              qword ptr [rsp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1076_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx1076_101
.Lx1076_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1076_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1076_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1076_101
.Lx1076_100:            lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1076_101:            mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    density$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1055_var_ref_α
n1054_call_builtin_prolog_β:
                                                                              jmp   density$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n1056_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n1057_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_call_builtin_prolog_α:
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
.Lx1081_40:             mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx1081_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx1081_41
                        cmp              esi, 1;                              jne   .Lx1081_55
                        mov              r8, rax;                             jmp   .Lx1081_40
.Lx1081_55:             cmp              esi, 2;                              jne   .Lx1081_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx1081_41
                        mov              r8, rax;                             jmp   .Lx1081_40
.Lx1081_56:             cmp              eax, 72;                             jne   .Lx1081_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx1081_41
                        cmp              rax, r8;                             je    .Lx1081_41
                        mov              r8, rax;                             jmp   .Lx1081_40
.Lx1081_41:             lea              r9, [rsp + 688]
.Lx1081_42:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx1081_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx1081_43
                        cmp              esi, 1;                              jne   .Lx1081_57
                        mov              r9, rax;                             jmp   .Lx1081_42
.Lx1081_57:             cmp              esi, 2;                              jne   .Lx1081_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx1081_43
                        mov              r9, rax;                             jmp   .Lx1081_42
.Lx1081_58:             cmp              eax, 72;                             jne   .Lx1081_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx1081_43
                        cmp              rax, r9;                             je    .Lx1081_43
                        mov              r9, rax;                             jmp   .Lx1081_42
.Lx1081_43:             cmp              r8, r9;                              je    .Lx1081_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx1081_44
                        cmp              eax, 104;                            je    .Lx1081_44
                        cmp              eax, 72;                             jne   .Lx1081_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx1081_44
                                                                              jmp   .Lx1081_45
.Lx1081_44:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx1081_53
                        cmp              eax, 104;                            je    .Lx1081_53
                        cmp              eax, 72;                             jne   .Lx1081_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx1081_53
                                                                              jmp   .Lx1081_46
.Lx1081_46:             lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx1081_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx1081_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx1081_51
.Lx1081_45:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx1081_47
                        cmp              eax, 104;                            je    .Lx1081_47
                        cmp              eax, 72;                             jne   .Lx1081_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx1081_47
                                                                              jmp   .Lx1081_48
.Lx1081_47:             lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx1081_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx1081_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx1081_51
.Lx1081_48:             mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx1081_49
                        cmp              edx, 80;                             je    .Lx1081_53
                                                                              jmp   .Lx1081_52
.Lx1081_49:             cmp              edx, 80;                             je    .Lx1081_52
                        cmp              ecx, 5;                              je    .Lx1081_53
                        cmp              edx, 5;                              je    .Lx1081_53
                        cmp              ecx, 3;                              jne   .Lx1081_50
                        cmp              edx, 3;                              jne   .Lx1081_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx1081_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx1081_51
                                                                              jmp   .Lx1081_52
.Lx1081_50:             mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx1081_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx1081_53
.Lx1081_51:             mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx1081_54
.Lx1081_52:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx1081_54
.Lx1081_53:             mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1081_54:             mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1058_var_ref_α
n1057_call_builtin_prolog_β:
                                                                              jmp   n1075_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n1059_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n1060_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_builtin_prolog_α:
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
.Lx1086_40:             mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx1086_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx1086_41
                        cmp              esi, 1;                              jne   .Lx1086_55
                        mov              r8, rax;                             jmp   .Lx1086_40
.Lx1086_55:             cmp              esi, 2;                              jne   .Lx1086_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx1086_41
                        mov              r8, rax;                             jmp   .Lx1086_40
.Lx1086_56:             cmp              eax, 72;                             jne   .Lx1086_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx1086_41
                        cmp              rax, r8;                             je    .Lx1086_41
                        mov              r8, rax;                             jmp   .Lx1086_40
.Lx1086_41:             lea              r9, [rsp + 608]
.Lx1086_42:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx1086_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx1086_43
                        cmp              esi, 1;                              jne   .Lx1086_57
                        mov              r9, rax;                             jmp   .Lx1086_42
.Lx1086_57:             cmp              esi, 2;                              jne   .Lx1086_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx1086_43
                        mov              r9, rax;                             jmp   .Lx1086_42
.Lx1086_58:             cmp              eax, 72;                             jne   .Lx1086_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx1086_43
                        cmp              rax, r9;                             je    .Lx1086_43
                        mov              r9, rax;                             jmp   .Lx1086_42
.Lx1086_43:             cmp              r8, r9;                              je    .Lx1086_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx1086_44
                        cmp              eax, 104;                            je    .Lx1086_44
                        cmp              eax, 72;                             jne   .Lx1086_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx1086_44
                                                                              jmp   .Lx1086_45
.Lx1086_44:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx1086_53
                        cmp              eax, 104;                            je    .Lx1086_53
                        cmp              eax, 72;                             jne   .Lx1086_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx1086_53
                                                                              jmp   .Lx1086_46
.Lx1086_46:             lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx1086_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx1086_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx1086_51
.Lx1086_45:             mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx1086_47
                        cmp              eax, 104;                            je    .Lx1086_47
                        cmp              eax, 72;                             jne   .Lx1086_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx1086_47
                                                                              jmp   .Lx1086_48
.Lx1086_47:             lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx1086_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx1086_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx1086_51
.Lx1086_48:             mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx1086_49
                        cmp              edx, 80;                             je    .Lx1086_53
                                                                              jmp   .Lx1086_52
.Lx1086_49:             cmp              edx, 80;                             je    .Lx1086_52
                        cmp              ecx, 5;                              je    .Lx1086_53
                        cmp              edx, 5;                              je    .Lx1086_53
                        cmp              ecx, 3;                              jne   .Lx1086_50
                        cmp              edx, 3;                              jne   .Lx1086_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx1086_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx1086_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx1086_51
                                                                              jmp   .Lx1086_52
.Lx1086_50:             mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx1086_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx1086_53
.Lx1086_51:             mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx1086_54
.Lx1086_52:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx1086_54
.Lx1086_53:             mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1086_54:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1061_var_ref_α
n1060_call_builtin_prolog_β:
                                                                              jmp   n1075_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n1062_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 768]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n1063_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_proc_staged_α:
                        mov              qword ptr [rsp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1092_20
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1092_21
.Lx1092_20:             mov              edi, 0
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
.Lx1092_21:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1092_22
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx1092_23
.Lx1092_22:             mov              edi, 1
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
.Lx1092_23:             lea              rax, [rip + .Lx1092_7]
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
                        test             rax, rax;                            je    .Lx1092_1
                        lea              rcx, [rip + .Lx1092_3]
                        lea              rdx, [rip + .Lx1092_4];              jmp   rax
.Lx1092_3:              mov              qword ptr [rsp + 520], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lx1092_5
                        mov              qword ptr [rsp + 512], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1092_2
.Lx1092_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx1092_2
.Lx1092_4:              mov              rax, qword ptr [rsp + 512]
                        test             rax, rax;                            jne   .Lx1092_6
                        mov              qword ptr [rsp + 512], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1092_2
.Lx1092_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx1092_2
.Lx1092_1:              call             rt_faildescr@PLT
.Lx1092_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1092_29
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
.Lx1092_29:             mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                                                                              jmp   n1064_var_ref_α
n1063_call_proc_staged_β:
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
                        test             rax, rax;                            je    n1075_call_builtin_prolog_α
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
                        test             rax, rax;                            je    n1075_call_builtin_prolog_α
                        lea              r11, [rip + .Lx1092_7]
                        push             r11
                        lea              rcx, [rip + .Lx1092_3]
                        lea              rdx, [rip + .Lx1092_4];              jmp   rax
.Lx1092_7:              add              rsp, 8
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                                                                              jmp   n1064_var_ref_α
.Lx1092_0:              .quad            .Lx1092_0_s
.Lx1092_0_s:            .string          "pop/2"
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n1065_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1066_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_call_proc_staged_α:
                        mov              qword ptr [rsp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1098_20
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1098_21
.Lx1098_20:             mov              edi, 0
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
.Lx1098_21:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1098_22
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx1098_23
.Lx1098_22:             mov              edi, 1
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
.Lx1098_23:             lea              rax, [rip + .Lx1098_7]
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
                        test             rax, rax;                            je    .Lx1098_1
                        lea              rcx, [rip + .Lx1098_3]
                        lea              rdx, [rip + .Lx1098_4];              jmp   rax
.Lx1098_3:              mov              qword ptr [rsp + 408], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx1098_5
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1098_2
.Lx1098_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx1098_2
.Lx1098_4:              mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx1098_6
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1098_2
.Lx1098_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx1098_2
.Lx1098_1:              call             rt_faildescr@PLT
.Lx1098_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1098_29
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
.Lx1098_29:             mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n1063_call_proc_staged_β
                                                                              jmp   n1067_var_ref_α
n1066_call_proc_staged_β:
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
                        lea              r11, [rip + .Lx1098_7]
                        push             r11
                        lea              rcx, [rip + .Lx1098_3]
                        lea              rdx, [rip + .Lx1098_4];              jmp   rax
.Lx1098_7:              add              rsp, 8
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n1063_call_proc_staged_β
                                                                              jmp   n1067_var_ref_α
.Lx1098_0:              .quad            .Lx1098_0_s
.Lx1098_0_s:            .string          "area/2"
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n1068_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_α:            mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1069_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_lit_integer_α:    mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1070_call_builtin_prolog_α
.Lx1103_0:              .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n1070_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1071_var_α
n1070_call_builtin_prolog_β:
                                                                              jmp   n1075_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_α:            mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1072_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n1075_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1073_call_builtin_prolog_α
n1072_call_builtin_prolog_β:
                                                                              jmp   n1075_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1073_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n1066_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1074_suspend_α
n1073_call_builtin_prolog_β:
                                                                              jmp   n1066_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1074_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1110_61
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
.Lx1110_61:             mov              rdi, qword ptr [rsp + 48]
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
n1074_suspend_β:                                                              jmp   n1066_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    density$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   density$2F2_ω
n1075_call_builtin_prolog_β:
                                                                              jmp   density$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_β:
                                                                              jmp   n1074_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1111_50
                        mov              qword ptr [rsp + 736], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lx1111_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 840]
                        add              rsp, 864;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ω:
                        mov              rcx, qword ptr [rsp + 848]
                        add              rsp, 864;                            jmp   rcx
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
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rcx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              qword ptr [rsp + 1096], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1072
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1112_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1142_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx1142_101
.Lx1142_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1142_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1142_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1142_101
.Lx1142_100:            lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1142_101:            mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1113_lit_string_α
n1112_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1113_lit_string_α:     mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n1114_var_ref_α
.Lx1143_0:              .quad            .Lx1143_0_s
.Lx1143_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1114_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_lit_string_α:     mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1116_var_ref_α
.Lx1146_0:              .quad            .Lx1146_0_s
.Lx1146_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1116_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1040]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n1117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1117_lit_string_α:     mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lx1149_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1118_var_ref_α
.Lx1149_0:              .quad            .Lx1149_0_s
.Lx1149_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1118_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n1119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1119_lit_string_α:     mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1120_var_ref_α
.Lx1152_0:              .quad            .Lx1152_0_s
.Lx1152_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1120_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n1121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:     mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1122_call_builtin_prolog_α
.Lx1155_0:              .quad            .Lx1155_0_s
.Lx1155_0_s:            .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 3
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1123_call_builtin_prolog_α
n1122_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 664]
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1124_call_builtin_prolog_α
n1123_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 680]
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1125_call_builtin_prolog_α
n1124_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1125_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 792]
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
                        cmp              eax, 104;                            je    n1135_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1126_call_proc_staged_α
n1125_call_builtin_prolog_β:
                                                                              jmp   n1135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1126_call_proc_staged_α:
                        mov              qword ptr [rsp + 496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1161_20
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1161_21
.Lx1161_20:             mov              edi, 0
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
.Lx1161_21:             lea              rax, [rip + .Lx1161_7]
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
                        test             rax, rax;                            je    .Lx1161_1
                        lea              rcx, [rip + .Lx1161_3]
                        lea              rdx, [rip + .Lx1161_4];              jmp   rax
.Lx1161_3:              mov              qword ptr [rsp + 504], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx1161_5
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1161_2
.Lx1161_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx1161_2
.Lx1161_4:              mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx1161_6
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1161_2
.Lx1161_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx1161_2
.Lx1161_1:              call             rt_faildescr@PLT
.Lx1161_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1161_29
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
.Lx1161_29:             mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n1135_lit_string_α
                                                                              jmp   n1127_lit_string_α
n1126_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 496], 0
                        lea              rdi, [rsp + 512]
                        lea              rsi, [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n1135_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
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
                        test             rax, rax;                            je    n1135_lit_string_α
                        lea              r11, [rip + .Lx1161_7]
                        push             r11
                        lea              rcx, [rip + .Lx1161_3]
                        lea              rdx, [rip + .Lx1161_4];              jmp   rax
.Lx1161_7:              add              rsp, 8
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n1135_lit_string_α
                                                                              jmp   n1127_lit_string_α
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "query/1"
#-----------------------------------------------------------------------------------------------------------------------
n1127_lit_string_α:     mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n1128_var_ref_α
.Lx1162_0:              .quad            .Lx1162_0_s
.Lx1162_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1128_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n1129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_string_α:     mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx1165_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1130_var_ref_α
.Lx1165_0:              .quad            .Lx1165_0_s
.Lx1165_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1130_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_string_α:     mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1132_call_builtin_prolog_α
.Lx1168_0:              .quad            .Lx1168_0_s
.Lx1168_0_s:            .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1133_call_builtin_prolog_α
n1132_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 312]
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
                        cmp              eax, 104;                            je    n1141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1134_call_builtin_prolog_α
n1133_call_builtin_prolog_β:
                                                                              jmp   n1141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn1172:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1172]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n1141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1137_lit_string_α
n1134_call_builtin_prolog_β:
                                                                              jmp   n1141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:     mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 4
                        mov              rax, qword ptr [rip + .Lx1173_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1136_call_builtin_prolog_α
.Lx1173_0:              .quad            .Lx1173_0_s
.Lx1173_0_s:            .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn1175:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1175]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n1141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1137_lit_string_α
n1136_call_builtin_prolog_β:
                                                                              jmp   n1141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx1176_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1138_call_builtin_prolog_α
.Lx1176_0:              .quad            .Lx1176_0_s
.Lx1176_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn1178:             .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1178]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n1141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1139_move_label_α
n1138_call_builtin_prolog_β:
                                                                              jmp   n1141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_move_label_α:     lea              rax, [rip + n1141_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1140_disjunction_α:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n1140_disjunction_β:                                                          jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n1141_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n1140_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1080]
                        add              rsp, 1104;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1088]
                        add              rsp, 1104;                           jmp   rcx
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
