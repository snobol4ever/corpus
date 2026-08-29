                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__zebra$2F1:
                        sub              rsp, 8160
                        mov              qword ptr [rsp + 8136], rcx
                        mov              qword ptr [rsp + 8144], rdx
                        mov              qword ptr [rsp + 8152], rsp
                        mov              rdi, rsp
                        mov              esi, 6848
                        mov              edx, 8128
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
zebra$2F1_α_body:
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rsp + 6848], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_196_102
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_196_101
.Lcall_prolog_α_196_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_196_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_196_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_196_101
.Lcall_prolog_α_196_100:
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
.Lcall_prolog_α_196_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   zebra$2F1_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6816], rax
                        mov              qword ptr [rsp + 6824], rdx;         jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 6832], rax
                        mov              qword ptr [rsp + 6840], rdx;         jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
                        mov              rax, qword ptr [rsp + 6832]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6840]
                        mov              qword ptr [rsp + 6808], rax
                        mov              rax, qword ptr [rsp + 6816]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 6824]
                        mov              qword ptr [rsp + 6792], rax
                        lea              rdi, [rsp + 6784]
                        lea              r8, [rsp + 6784]
.Lcall_prolog_α_201_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_201_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_201_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_40
.Lcall_prolog_α_201_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_201_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_40
.Lcall_prolog_α_201_56: cmp              al, 72;                              jne   .Lcall_prolog_α_201_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_201_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_40
.Lcall_prolog_α_201_41: lea              r9, [rsp + 6800]
.Lcall_prolog_α_201_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_201_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_201_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_201_42
.Lcall_prolog_α_201_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_201_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_201_42
.Lcall_prolog_α_201_58: cmp              al, 72;                              jne   .Lcall_prolog_α_201_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_201_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_201_42
.Lcall_prolog_α_201_43: cmp              r8, r9;                              je    .Lcall_prolog_α_201_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_201_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_201_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_201_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_201_44
                                                                              jmp   .Lcall_prolog_α_201_45
.Lcall_prolog_α_201_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_201_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_201_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_201_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_201_53
                                                                              jmp   .Lcall_prolog_α_201_46
.Lcall_prolog_α_201_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_201_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_201_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_201_51
.Lcall_prolog_α_201_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_201_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_201_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_201_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_201_47
                                                                              jmp   .Lcall_prolog_α_201_48
.Lcall_prolog_α_201_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_201_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_201_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_201_51
.Lcall_prolog_α_201_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_201_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_201_53
                                                                              jmp   .Lcall_prolog_α_201_52
.Lcall_prolog_α_201_49: cmp              dl, 80;                              je    .Lcall_prolog_α_201_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_201_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_201_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_201_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_201_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_201_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_201_51
                                                                              jmp   .Lcall_prolog_α_201_52
.Lcall_prolog_α_201_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_201_53
.Lcall_prolog_α_201_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_201_54
.Lcall_prolog_α_201_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_201_54
.Lcall_prolog_α_201_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_201_54: mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n195_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n5_call_proc_staged_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_proc_staged_bx, @function
n5_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        lea              rsi, [rsp + 6752]
                        call             houses$2F1_dcα;                      jmp   .Lcall_proc_staged_α_205_2
.Lcall_proc_staged_α_205_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_205_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6704], rax
                        mov              qword ptr [rsp + 6712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6704]
                        mov              rdx, qword ptr [rsp + 6712]
.Lcall_proc_staged_α_205_29:
                        mov              qword ptr [rsp + 6704], rax
                        mov              qword ptr [rsp + 6712], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n6_lit_string_α
n5_call_proc_staged_β:  mov              r11, 6;                              jmp   n195_call_prolog_α
.Lcall_proc_staged_β_205_0:
                        .quad            .Lcall_proc_staged_β_205_0_s
.Lcall_proc_staged_β_205_0_s:
                        .string          "houses/1"
                        .size            n5_call_proc_staged_bx, .-n5_call_proc_staged_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 6672], 2            # result
                        mov              dword ptr [rsp + 6676], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rsp + 6680], rax;         jmp   n7_lit_string_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          "house"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 6464], 2            # result
                        mov              dword ptr [rsp + 6468], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_207_0]
                        mov              qword ptr [rsp + 6472], rax;         jmp   n8_lit_string_α
.Llit_string_α_207_0:   .quad            .Llit_string_α_207_0_s
.Llit_string_α_207_0_s: .string          "red"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 6480], 2            # result
                        mov              dword ptr [rsp + 6484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rsp + 6488], rax;         jmp   n9_var_ref_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "english"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8064]
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8080]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8096]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n12_call_prolog_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
                        mov              rax, qword ptr [rsp + 6528]
                        mov              qword ptr [rsp + 6640], rax
                        mov              rax, qword ptr [rsp + 6536]
                        mov              qword ptr [rsp + 6648], rax
                        mov              rax, qword ptr [rsp + 6512]
                        mov              qword ptr [rsp + 6624], rax
                        mov              rax, qword ptr [rsp + 6520]
                        mov              qword ptr [rsp + 6632], rax
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6608], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6616], rax
                        mov              rax, qword ptr [rsp + 6480]
                        mov              qword ptr [rsp + 6592], rax
                        mov              rax, qword ptr [rsp + 6488]
                        mov              qword ptr [rsp + 6600], rax
                        mov              rax, qword ptr [rsp + 6464]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6472]
                        mov              qword ptr [rsp + 6584], rax
                        mov              rax, qword ptr [rsp + 6672]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6680]
                        mov              qword ptr [rsp + 6568], rax
                        lea              rdi, [rsp + 6560]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n13_var_ref_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   n195_call_prolog_α
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx;         jmp   n14_call_proc_staged_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_proc_staged_bx, @function
n14_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_proc_staged_α: mov              r11, 15
                        mov              qword ptr [rsp + 6432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_219_200
                        mov              rax, qword ptr [rsp + 6544]
                        mov              rdx, qword ptr [rsp + 6552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_219_201
.Lcall_proc_staged_α_219_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 6544]
                        mov              rdx, qword ptr [rsp + 6552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_219_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_219_202
                        mov              rax, qword ptr [rsp + 6688]
                        mov              rdx, qword ptr [rsp + 6696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_219_203
.Lcall_proc_staged_α_219_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6688]
                        mov              rdx, qword ptr [rsp + 6696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_219_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_219_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_219_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_219_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_219_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_219_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_219_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 6440], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 6432]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_219_5
                        mov              qword ptr [rsp + 6432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_219_2
.Lcall_proc_staged_α_219_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_219_2
.Lcall_proc_staged_α_219_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 6432]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_219_6
                        mov              qword ptr [rsp + 6432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_219_2
.Lcall_proc_staged_α_219_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_219_2
.Lcall_proc_staged_α_219_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_219_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_219_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6384]
                        mov              rdx, qword ptr [rsp + 6392]
.Lcall_proc_staged_α_219_29:
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        cmp              al, 104;                             je    n5_call_proc_staged_β
                                                                              jmp   n15_lit_string_α
n14_call_proc_staged_β: mov              r11, 15
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 6432], 0
                        lea              rdi, [rsp + 6448]
                        lea              rsi, [rsp + 6456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n5_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 6448]
                        mov              rdx, qword ptr [rsp + 6456]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 6544]
                        mov              rdx, qword ptr [rsp + 6552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6688]
                        mov              rdx, qword ptr [rsp + 6696]
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
                        test             rax, rax;                            je    n5_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_219_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_219_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_219_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_219_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_219_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        cmp              al, 104;                             je    n5_call_proc_staged_β
                                                                              jmp   n15_lit_string_α
.Lcall_proc_staged_β_219_0:
                        .quad            .Lcall_proc_staged_β_219_0_s
.Lcall_proc_staged_β_219_0_s:
                        .string          "my_member/2"
                        .size            n14_call_proc_staged_bx, .-n14_call_proc_staged_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 6352], 2            # result
                        mov              dword ptr [rsp + 6356], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_220_0]
                        mov              qword ptr [rsp + 6360], rax;         jmp   n16_var_ref_α
.Llit_string_α_220_0:   .quad            .Llit_string_α_220_0_s
.Llit_string_α_220_0_s: .string          "house"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8016]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n17_lit_string_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 6160], 2            # result
                        mov              dword ptr [rsp + 6164], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_223_0]
                        mov              qword ptr [rsp + 6168], rax;         jmp   n18_lit_string_α
.Llit_string_α_223_0:   .quad            .Llit_string_α_223_0_s
.Llit_string_α_223_0_s: .string          "spanish"
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 6176], 2            # result
                        mov              dword ptr [rsp + 6180], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rsp + 6184], rax;         jmp   n19_var_ref_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          "dog"
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8032]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx;         jmp   n20_var_ref_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8048]
                        mov              qword ptr [rsp + 6208], rax
                        mov              qword ptr [rsp + 6216], rdx;         jmp   n21_call_prolog_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 6328], rax
                        mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6312], rax
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6296], rax
                        mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6280], rax
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6264], rax
                        mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 6248], rax
                        lea              rdi, [rsp + 6240]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6224], rax
                        mov              qword ptr [rsp + 6232], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n22_var_ref_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n195_call_prolog_α
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 6368], rax
                        mov              qword ptr [rsp + 6376], rdx;         jmp   n23_call_proc_staged_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_proc_staged_bx, @function
n23_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α: mov              r11, 24
                        mov              qword ptr [rsp + 6112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_233_200
                        mov              rax, qword ptr [rsp + 6224]
                        mov              rdx, qword ptr [rsp + 6232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_233_201
.Lcall_proc_staged_α_233_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 6224]
                        mov              rdx, qword ptr [rsp + 6232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_233_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_233_202
                        mov              rax, qword ptr [rsp + 6368]
                        mov              rdx, qword ptr [rsp + 6376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_233_203
.Lcall_proc_staged_α_233_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6368]
                        mov              rdx, qword ptr [rsp + 6376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_233_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_233_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_233_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_233_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_233_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_233_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_233_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 6120], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 6112]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_233_5
                        mov              qword ptr [rsp + 6112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_233_2
.Lcall_proc_staged_α_233_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_233_2
.Lcall_proc_staged_α_233_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 6112]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_233_6
                        mov              qword ptr [rsp + 6112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_233_2
.Lcall_proc_staged_α_233_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_233_2
.Lcall_proc_staged_α_233_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_233_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_233_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6064]
                        mov              rdx, qword ptr [rsp + 6072]
.Lcall_proc_staged_α_233_29:
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx
                        cmp              al, 104;                             je    n14_call_proc_staged_β
                                                                              jmp   n24_lit_string_α
n23_call_proc_staged_β: mov              r11, 24
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 6112], 0
                        lea              rdi, [rsp + 6128]
                        lea              rsi, [rsp + 6136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n14_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 6128]
                        mov              rdx, qword ptr [rsp + 6136]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 6224]
                        mov              rdx, qword ptr [rsp + 6232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6368]
                        mov              rdx, qword ptr [rsp + 6376]
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
                        test             rax, rax;                            je    n14_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_233_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_233_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_233_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_233_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_233_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx
                        cmp              al, 104;                             je    n14_call_proc_staged_β
                                                                              jmp   n24_lit_string_α
.Lcall_proc_staged_β_233_0:
                        .quad            .Lcall_proc_staged_β_233_0_s
.Lcall_proc_staged_β_233_0_s:
                        .string          "my_member/2"
                        .size            n23_call_proc_staged_bx, .-n23_call_proc_staged_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 6032], 2            # result
                        mov              dword ptr [rsp + 6036], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_234_0]
                        mov              qword ptr [rsp + 6040], rax;         jmp   n25_lit_string_α
.Llit_string_α_234_0:   .quad            .Llit_string_α_234_0_s
.Llit_string_α_234_0_s: .string          "house"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_lit_string_bx, @function
n25_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 5824], 2            # result
                        mov              dword ptr [rsp + 5828], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_235_0]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n26_var_ref_α
.Llit_string_α_235_0:   .quad            .Llit_string_α_235_0_s
.Llit_string_α_235_0_s: .string          "green"
                        .size            n25_lit_string_bx, .-n25_lit_string_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7968]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7984]
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx;         jmp   n28_lit_string_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_lit_string_bx, @function
n28_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 5872], 2            # result
                        mov              dword ptr [rsp + 5876], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rsp + 5880], rax;         jmp   n29_var_ref_α
.Llit_string_α_240_0:   .quad            .Llit_string_α_240_0_s
.Llit_string_α_240_0_s: .string          "coffee"
                        .size            n28_lit_string_bx, .-n28_lit_string_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8000]
                        mov              qword ptr [rsp + 5888], rax
                        mov              qword ptr [rsp + 5896], rdx;         jmp   n30_call_prolog_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_call_prolog_bx, @function
n30_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_prolog_α:      mov              r11, 31
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 6000], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 6008], rax
                        mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5984], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5992], rax
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5976], rax
                        mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5944], rax
                        mov              rax, qword ptr [rsp + 6032]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 6040]
                        mov              qword ptr [rsp + 5928], rax
                        lea              rdi, [rsp + 5920]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n31_var_ref_α
n30_call_prolog_β:      mov              r11, 31;                             jmp   n195_call_prolog_α
                        .size            n30_call_prolog_bx, .-n30_call_prolog_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 6048], rax
                        mov              qword ptr [rsp + 6056], rdx;         jmp   n32_call_proc_staged_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_call_proc_staged_bx, @function
n32_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α: mov              r11, 33
                        mov              qword ptr [rsp + 5792], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_247_200
                        mov              rax, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_247_201
.Lcall_proc_staged_α_247_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_247_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_247_202
                        mov              rax, qword ptr [rsp + 6048]
                        mov              rdx, qword ptr [rsp + 6056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_247_203
.Lcall_proc_staged_α_247_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6048]
                        mov              rdx, qword ptr [rsp + 6056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_247_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_247_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_247_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_247_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_247_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_247_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_247_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 5800], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 5792]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_247_5
                        mov              qword ptr [rsp + 5792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_247_2
.Lcall_proc_staged_α_247_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_247_2
.Lcall_proc_staged_α_247_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 5792]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_247_6
                        mov              qword ptr [rsp + 5792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_247_2
.Lcall_proc_staged_α_247_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_247_2
.Lcall_proc_staged_α_247_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_247_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_247_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5744]
                        mov              rdx, qword ptr [rsp + 5752]
.Lcall_proc_staged_α_247_29:
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        cmp              al, 104;                             je    n23_call_proc_staged_β
                                                                              jmp   n33_lit_string_α
n32_call_proc_staged_β: mov              r11, 33
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 5792], 0
                        lea              rdi, [rsp + 5808]
                        lea              rsi, [rsp + 5816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n23_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 5808]
                        mov              rdx, qword ptr [rsp + 5816]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 6048]
                        mov              rdx, qword ptr [rsp + 6056]
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
                        test             rax, rax;                            je    n23_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_247_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_247_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_247_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_247_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_247_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        cmp              al, 104;                             je    n23_call_proc_staged_β
                                                                              jmp   n33_lit_string_α
.Lcall_proc_staged_β_247_0:
                        .quad            .Lcall_proc_staged_β_247_0_s
.Lcall_proc_staged_β_247_0_s:
                        .string          "my_member/2"
                        .size            n32_call_proc_staged_bx, .-n32_call_proc_staged_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 5712], 2            # result
                        mov              dword ptr [rsp + 5716], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n34_var_ref_α
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          "house"
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7920]
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx;         jmp   n35_lit_string_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 5520], 2            # result
                        mov              dword ptr [rsp + 5524], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_251_0]
                        mov              qword ptr [rsp + 5528], rax;         jmp   n36_var_ref_α
.Llit_string_α_251_0:   .quad            .Llit_string_α_251_0_s
.Llit_string_α_251_0_s: .string          "ukrainian"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7936]
                        mov              qword ptr [rsp + 5536], rax
                        mov              qword ptr [rsp + 5544], rdx;         jmp   n37_lit_string_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 5552], 2            # result
                        mov              dword ptr [rsp + 5556], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_254_0]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n38_var_ref_α
.Llit_string_α_254_0:   .quad            .Llit_string_α_254_0_s
.Llit_string_α_254_0_s: .string          "tea"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7952]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n39_call_prolog_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_call_prolog_bx, @function
n39_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_prolog_α:      mov              r11, 40
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5688], rax
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5664], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5672], rax
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5656], rax
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5624], rax
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 5608], rax
                        lea              rdi, [rsp + 5600]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n40_var_ref_α
n39_call_prolog_β:      mov              r11, 40;                             jmp   n195_call_prolog_α
                        .size            n39_call_prolog_bx, .-n39_call_prolog_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx;         jmp   n41_call_proc_staged_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_call_proc_staged_bx, @function
n41_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 42
                        mov              qword ptr [rsp + 5472], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_261_200
                        mov              rax, qword ptr [rsp + 5584]
                        mov              rdx, qword ptr [rsp + 5592]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_261_201
.Lcall_proc_staged_α_261_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5584]
                        mov              rdx, qword ptr [rsp + 5592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_261_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_261_202
                        mov              rax, qword ptr [rsp + 5728]
                        mov              rdx, qword ptr [rsp + 5736]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_261_203
.Lcall_proc_staged_α_261_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5728]
                        mov              rdx, qword ptr [rsp + 5736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_261_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_261_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_261_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_261_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_261_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_261_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_261_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 5480], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 5472]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_261_5
                        mov              qword ptr [rsp + 5472], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_261_2
.Lcall_proc_staged_α_261_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_261_2
.Lcall_proc_staged_α_261_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 5472]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_261_6
                        mov              qword ptr [rsp + 5472], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_261_2
.Lcall_proc_staged_α_261_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_261_2
.Lcall_proc_staged_α_261_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_261_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_261_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5424]
                        mov              rdx, qword ptr [rsp + 5432]
.Lcall_proc_staged_α_261_29:
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n32_call_proc_staged_β
                                                                              jmp   n42_lit_string_α
n41_call_proc_staged_β: mov              r11, 42
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 5472], 0
                        lea              rdi, [rsp + 5488]
                        lea              rsi, [rsp + 5496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n32_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 5488]
                        mov              rdx, qword ptr [rsp + 5496]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5584]
                        mov              rdx, qword ptr [rsp + 5592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5728]
                        mov              rdx, qword ptr [rsp + 5736]
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
                        test             rax, rax;                            je    n32_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_261_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_261_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_261_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_261_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_261_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n32_call_proc_staged_β
                                                                              jmp   n42_lit_string_α
.Lcall_proc_staged_β_261_0:
                        .quad            .Lcall_proc_staged_β_261_0_s
.Lcall_proc_staged_β_261_0_s:
                        .string          "my_member/2"
                        .size            n41_call_proc_staged_bx, .-n41_call_proc_staged_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 5168], 2            # result
                        mov              dword ptr [rsp + 5172], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_262_0]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n43_lit_string_α
.Llit_string_α_262_0:   .quad            .Llit_string_α_262_0_s
.Llit_string_α_262_0_s: .string          "house"
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 4960], 2            # result
                        mov              dword ptr [rsp + 4964], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_263_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n44_var_ref_α
.Llit_string_α_263_0:   .quad            .Llit_string_α_263_0_s
.Llit_string_α_263_0_s: .string          "green"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7792]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7808]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7824]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx;         jmp   n47_var_ref_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7840]
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx;         jmp   n48_call_prolog_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_call_prolog_bx, @function
n48_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_prolog_α:      mov              r11, 49
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 5128], rax
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 5112], rax
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 5096], rax
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 5080], rax
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5064], rax
                        lea              rdi, [rsp + 5056]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n49_lit_string_α
n48_call_prolog_β:      mov              r11, 49;                             jmp   n195_call_prolog_α
                        .size            n48_call_prolog_bx, .-n48_call_prolog_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 5392], 2            # result
                        mov              dword ptr [rsp + 5396], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_273_0]
                        mov              qword ptr [rsp + 5400], rax;         jmp   n50_lit_string_α
.Llit_string_α_273_0:   .quad            .Llit_string_α_273_0_s
.Llit_string_α_273_0_s: .string          "house"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_274_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n51_var_ref_α
.Llit_string_α_274_0:   .quad            .Llit_string_α_274_0_s
.Llit_string_α_274_0_s: .string          "ivory"
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7856]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx;         jmp   n52_var_ref_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7872]
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7888]
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx;         jmp   n54_var_ref_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7904]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n55_call_prolog_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_call_prolog_bx, @function
n55_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_prolog_α:      mov              r11, 56
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5360], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5368], rax
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5352], rax
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5336], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5320], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5392]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5400]
                        mov              qword ptr [rsp + 5288], rax
                        lea              rdi, [rsp + 5280]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n56_var_ref_α
n55_call_prolog_β:      mov              r11, 56;                             jmp   n195_call_prolog_α
                        .size            n55_call_prolog_bx, .-n55_call_prolog_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 5408], rax
                        mov              qword ptr [rsp + 5416], rdx;         jmp   n57_call_proc_staged_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_call_proc_staged_bx, @function
n57_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α: mov              r11, 58
                        mov              qword ptr [rsp + 4928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_287_200
                        mov              rax, qword ptr [rsp + 5040]
                        mov              rdx, qword ptr [rsp + 5048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_287_201
.Lcall_proc_staged_α_287_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5040]
                        mov              rdx, qword ptr [rsp + 5048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_287_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_287_202
                        mov              rax, qword ptr [rsp + 5264]
                        mov              rdx, qword ptr [rsp + 5272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_287_203
.Lcall_proc_staged_α_287_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5264]
                        mov              rdx, qword ptr [rsp + 5272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_287_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_287_204
                        mov              rax, qword ptr [rsp + 5408]
                        mov              rdx, qword ptr [rsp + 5416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_287_205
.Lcall_proc_staged_α_287_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 5408]
                        mov              rdx, qword ptr [rsp + 5416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_287_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_287_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_287_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_287_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_287_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_287_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_287_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4936], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4928]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_287_5
                        mov              qword ptr [rsp + 4928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_287_2
.Lcall_proc_staged_α_287_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_287_2
.Lcall_proc_staged_α_287_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4928]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_287_6
                        mov              qword ptr [rsp + 4928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_287_2
.Lcall_proc_staged_α_287_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_287_2
.Lcall_proc_staged_α_287_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_287_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_287_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4864]
                        mov              rdx, qword ptr [rsp + 4872]
.Lcall_proc_staged_α_287_29:
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    n41_call_proc_staged_β
                                                                              jmp   n58_lit_string_α
n57_call_proc_staged_β: mov              r11, 58
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 4928], 0
                        lea              rdi, [rsp + 4944]
                        lea              rsi, [rsp + 4952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n41_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 4944]
                        mov              rdx, qword ptr [rsp + 4952]
                        mov              ecx, 64
                        mov              r8d, 1056
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5040]
                        mov              rdx, qword ptr [rsp + 5048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5264]
                        mov              rdx, qword ptr [rsp + 5272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 5408]
                        mov              rdx, qword ptr [rsp + 5416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n41_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_287_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_287_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_287_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_287_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_287_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    n41_call_proc_staged_β
                                                                              jmp   n58_lit_string_α
.Lcall_proc_staged_β_287_0:
                        .quad            .Lcall_proc_staged_β_287_0_s
.Lcall_proc_staged_β_287_0_s:
                        .string          "right_of/3"
                        .size            n57_call_proc_staged_bx, .-n57_call_proc_staged_bx
                        .type            n58_lit_string_bx, @function
n58_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 4832], 2            # result
                        mov              dword ptr [rsp + 4836], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_288_0]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n59_var_ref_α
.Llit_string_α_288_0:   .quad            .Llit_string_α_288_0_s
.Llit_string_α_288_0_s: .string          "house"
                        .size            n58_lit_string_bx, .-n58_lit_string_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7744]
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n60_var_ref_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7760]
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx;         jmp   n61_lit_string_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_293_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n62_var_ref_α
.Llit_string_α_293_0:   .quad            .Llit_string_α_293_0_s
.Llit_string_α_293_0_s: .string          "snails"
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7776]
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx;         jmp   n63_lit_string_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n64_call_prolog_α
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          "winstons"
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_call_prolog_bx, @function
n64_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_prolog_α:      mov              r11, 65
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4808], rax
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4776], rax
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4760], rax
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4744], rax
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4728], rax
                        lea              rdi, [rsp + 4720]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n65_var_ref_α
n64_call_prolog_β:      mov              r11, 65;                             jmp   n195_call_prolog_α
                        .size            n64_call_prolog_bx, .-n64_call_prolog_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx;         jmp   n66_call_proc_staged_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_call_proc_staged_bx, @function
n66_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α: mov              r11, 67
                        mov              qword ptr [rsp + 4592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_301_200
                        mov              rax, qword ptr [rsp + 4704]
                        mov              rdx, qword ptr [rsp + 4712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_301_201
.Lcall_proc_staged_α_301_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4704]
                        mov              rdx, qword ptr [rsp + 4712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_301_202
                        mov              rax, qword ptr [rsp + 4848]
                        mov              rdx, qword ptr [rsp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_301_203
.Lcall_proc_staged_α_301_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 4848]
                        mov              rdx, qword ptr [rsp + 4856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_301_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_301_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_301_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_301_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4600], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4592]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_301_5
                        mov              qword ptr [rsp + 4592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4592]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_301_6
                        mov              qword ptr [rsp + 4592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_301_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4544]
                        mov              rdx, qword ptr [rsp + 4552]
.Lcall_proc_staged_α_301_29:
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              al, 104;                             je    n57_call_proc_staged_β
                                                                              jmp   n67_lit_string_α
n66_call_proc_staged_β: mov              r11, 67
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 4592], 0
                        lea              rdi, [rsp + 4608]
                        lea              rsi, [rsp + 4616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n57_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 4608]
                        mov              rdx, qword ptr [rsp + 4616]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4704]
                        mov              rdx, qword ptr [rsp + 4712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 4848]
                        mov              rdx, qword ptr [rsp + 4856]
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
                        test             rax, rax;                            je    n57_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_301_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_301_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_301_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              al, 104;                             je    n57_call_proc_staged_β
                                                                              jmp   n67_lit_string_α
.Lcall_proc_staged_β_301_0:
                        .quad            .Lcall_proc_staged_β_301_0_s
.Lcall_proc_staged_β_301_0_s:
                        .string          "my_member/2"
                        .size            n66_call_proc_staged_bx, .-n66_call_proc_staged_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_302_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n68_lit_string_α
.Llit_string_α_302_0:   .quad            .Llit_string_α_302_0_s
.Llit_string_α_302_0_s: .string          "house"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 4304], 2            # result
                        mov              dword ptr [rsp + 4308], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_303_0]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n69_var_ref_α
.Llit_string_α_303_0:   .quad            .Llit_string_α_303_0_s
.Llit_string_α_303_0_s: .string          "yellow"
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7696]
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx;         jmp   n70_var_ref_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7712]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7728]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n72_lit_string_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_lit_string_bx, @function
n72_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 4368], 2            # result
                        mov              dword ptr [rsp + 4372], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n73_call_prolog_α
.Llit_string_α_310_0:   .quad            .Llit_string_α_310_0_s
.Llit_string_α_310_0_s: .string          "kools"
                        .size            n72_lit_string_bx, .-n72_lit_string_bx
                        .type            n73_call_prolog_bx, @function
n73_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_prolog_α:      mov              r11, 74
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4488], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4456], rax
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4408], rax
                        lea              rdi, [rsp + 4400]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n74_var_ref_α
n73_call_prolog_β:      mov              r11, 74;                             jmp   n195_call_prolog_α
                        .size            n73_call_prolog_bx, .-n73_call_prolog_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx;         jmp   n75_call_proc_staged_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_call_proc_staged_bx, @function
n75_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_proc_staged_α: mov              r11, 76
                        mov              qword ptr [rsp + 4272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_315_200
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_315_201
.Lcall_proc_staged_α_315_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_315_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_315_202
                        mov              rax, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_315_203
.Lcall_proc_staged_α_315_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_315_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_315_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_315_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_315_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_315_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_315_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_315_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4280], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4272]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_315_5
                        mov              qword ptr [rsp + 4272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 4272]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_315_6
                        mov              qword ptr [rsp + 4272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4224]
                        mov              rdx, qword ptr [rsp + 4232]
.Lcall_proc_staged_α_315_29:
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n66_call_proc_staged_β
                                                                              jmp   n76_var_ref_α
n75_call_proc_staged_β: mov              r11, 76
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 4272], 0
                        lea              rdi, [rsp + 4288]
                        lea              rsi, [rsp + 4296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n66_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 4288]
                        mov              rdx, qword ptr [rsp + 4296]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
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
                        test             rax, rax;                            je    n66_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_315_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_315_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_315_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_315_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_315_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n66_call_proc_staged_β
                                                                              jmp   n76_var_ref_α
.Lcall_proc_staged_β_315_0:
                        .quad            .Lcall_proc_staged_β_315_0_s
.Lcall_proc_staged_β_315_0_s:
                        .string          "my_member/2"
                        .size            n75_call_proc_staged_bx, .-n75_call_proc_staged_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n77_lit_string_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 78
                        mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_318_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n78_var_ref_α
.Llit_string_α_318_0:   .quad            .Llit_string_α_318_0_s
.Llit_string_α_318_0_s: .string          "."
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7680]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n79_lit_string_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 4096], 2            # result
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_321_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n80_var_ref_α
.Llit_string_α_321_0:   .quad            .Llit_string_α_321_0_s
.Llit_string_α_321_0_s: .string          "."
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7664]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx;         jmp   n81_lit_string_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_324_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n82_lit_string_α
.Llit_string_α_324_0:   .quad            .Llit_string_α_324_0_s
.Llit_string_α_324_0_s: .string          "."
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_325_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n83_var_ref_α
.Llit_string_α_325_0:   .quad            .Llit_string_α_325_0_s
.Llit_string_α_325_0_s: .string          "house"
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7600]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7616]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx;         jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7632]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n86_lit_string_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 87
                        mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_332_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n87_var_ref_α
.Llit_string_α_332_0:   .quad            .Llit_string_α_332_0_s
.Llit_string_α_332_0_s: .string          "milk"
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7648]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n88_call_prolog_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_call_prolog_bx, @function
n88_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_prolog_α:      mov              r11, 89
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3784], rax
                        lea              rdi, [rsp + 3776]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n89_lit_string_α
n88_call_prolog_β:      mov              r11, 89;                             jmp   zebra$2F1_ω
                        .size            n88_call_prolog_bx, .-n88_call_prolog_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_336_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n90_var_ref_α
.Llit_string_α_336_0:   .quad            .Llit_string_α_336_0_s
.Llit_string_α_336_0_s: .string          "."
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7584]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n91_lit_string_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 92
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_339_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n92_var_ref_α
.Llit_string_α_339_0:   .quad            .Llit_string_α_339_0_s
.Llit_string_α_339_0_s: .string          "."
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7568]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n93_lit_string_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_lit_string_bx, @function
n93_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 94
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_342_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n94_call_prolog_α
.Llit_string_α_342_0:   .quad            .Llit_string_α_342_0_s
.Llit_string_α_342_0_s: .string          "[]"
                        .size            n93_lit_string_bx, .-n93_lit_string_bx
                        .type            n94_call_prolog_bx, @function
n94_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_prolog_α:      mov              r11, 95
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3496], rax
                        lea              rdi, [rsp + 3488]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n95_call_prolog_α
n94_call_prolog_β:      mov              r11, 95;                             jmp   zebra$2F1_ω
                        .size            n94_call_prolog_bx, .-n94_call_prolog_bx
                        .type            n95_call_prolog_bx, @function
n95_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_prolog_α:      mov              r11, 96
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3608], rax
                        lea              rdi, [rsp + 3600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n96_call_prolog_α
n95_call_prolog_β:      mov              r11, 96;                             jmp   zebra$2F1_ω
                        .size            n95_call_prolog_bx, .-n95_call_prolog_bx
                        .type            n96_call_prolog_bx, @function
n96_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_prolog_α:      mov              r11, 97
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3928], rax
                        lea              rdi, [rsp + 3920]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n97_call_prolog_α
n96_call_prolog_β:      mov              r11, 97;                             jmp   zebra$2F1_ω
                        .size            n96_call_prolog_bx, .-n96_call_prolog_bx
                        .type            n97_call_prolog_bx, @function
n97_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_prolog_α:      mov              r11, 98
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 4072], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4040], rax
                        lea              rdi, [rsp + 4032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n98_call_prolog_α
n97_call_prolog_β:      mov              r11, 98;                             jmp   zebra$2F1_ω
                        .size            n97_call_prolog_bx, .-n97_call_prolog_bx
                        .type            n98_call_prolog_bx, @function
n98_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_prolog_α:      mov              r11, 99
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4120]
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n99_call_prolog_α
n98_call_prolog_β:      mov              r11, 99;                             jmp   n195_call_prolog_α
                        .size            n98_call_prolog_bx, .-n98_call_prolog_bx
                        .type            n99_call_prolog_bx, @function
n99_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_prolog_α:      mov              r11, 100
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3400], rax
                        lea              rdi, [rsp + 3392]
                        lea              r8, [rsp + 3392]
.Lcall_prolog_α_348_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_348_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_348_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_348_40
.Lcall_prolog_α_348_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_348_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_348_40
.Lcall_prolog_α_348_56: cmp              al, 72;                              jne   .Lcall_prolog_α_348_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_348_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_348_40
.Lcall_prolog_α_348_41: lea              r9, [rsp + 3408]
.Lcall_prolog_α_348_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_348_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_348_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_348_42
.Lcall_prolog_α_348_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_348_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_348_42
.Lcall_prolog_α_348_58: cmp              al, 72;                              jne   .Lcall_prolog_α_348_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_348_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_348_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_348_42
.Lcall_prolog_α_348_43: cmp              r8, r9;                              je    .Lcall_prolog_α_348_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_348_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_348_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_348_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_348_44
                                                                              jmp   .Lcall_prolog_α_348_45
.Lcall_prolog_α_348_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_348_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_348_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_348_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_348_53
                                                                              jmp   .Lcall_prolog_α_348_46
.Lcall_prolog_α_348_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_348_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_348_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_348_51
.Lcall_prolog_α_348_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_348_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_348_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_348_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_348_47
                                                                              jmp   .Lcall_prolog_α_348_48
.Lcall_prolog_α_348_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_348_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_348_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_348_51
.Lcall_prolog_α_348_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_348_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_348_53
                                                                              jmp   .Lcall_prolog_α_348_52
.Lcall_prolog_α_348_49: cmp              dl, 80;                              je    .Lcall_prolog_α_348_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_348_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_348_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_348_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_348_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_348_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_348_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_348_51
                                                                              jmp   .Lcall_prolog_α_348_52
.Lcall_prolog_α_348_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_348_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_348_53
.Lcall_prolog_α_348_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_348_54
.Lcall_prolog_α_348_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_348_54
.Lcall_prolog_α_348_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_348_54: mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        cmp              al, 104;                             je    n75_call_proc_staged_β
                                                                              jmp   n100_var_ref_α
n99_call_prolog_β:      mov              r11, 100;                            jmp   n75_call_proc_staged_β
                        .size            n99_call_prolog_bx, .-n99_call_prolog_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n101_lit_string_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 3344], 2            # result
                        mov              dword ptr [rsp + 3348], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n102_var_ref_α
.Llit_string_α_351_0:   .quad            .Llit_string_α_351_0_s
.Llit_string_α_351_0_s: .string          "house"
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7488]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx;         jmp   n103_lit_string_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_354_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n104_var_ref_α
.Llit_string_α_354_0:   .quad            .Llit_string_α_354_0_s
.Llit_string_α_354_0_s: .string          "norwegian"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7504]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7520]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n106_var_ref_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7536]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx;         jmp   n107_call_prolog_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_call_prolog_bx, @function
n107_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3320], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3304], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3240], rax
                        lea              rdi, [rsp + 3232]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n108_var_ref_α
n107_call_prolog_β:     mov              r11, 108;                            jmp   n195_call_prolog_α
                        .size            n107_call_prolog_bx, .-n107_call_prolog_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7552]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n109_call_prolog_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3128], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3096], rax
                        lea              rdi, [rsp + 3088]
                        lea              r8, [rsp + 3088]
.Lcall_prolog_α_364_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_364_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_364_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_364_60
.Lcall_prolog_α_364_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_364_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_364_60
.Lcall_prolog_α_364_63: cmp              al, 72;                              jne   .Lcall_prolog_α_364_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_364_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_364_60
.Lcall_prolog_α_364_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_364_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_364_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_364_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_364_80
                                                                              jmp   .Lcall_prolog_α_364_74
.Lcall_prolog_α_364_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_364_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_364_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_364_73
                        lea              r9, [rsp + 3104]
.Lcall_prolog_α_364_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_364_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_364_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_64
.Lcall_prolog_α_364_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_364_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_64
.Lcall_prolog_α_364_67: cmp              al, 72;                              jne   .Lcall_prolog_α_364_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_364_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_64
.Lcall_prolog_α_364_65: lea              rcx, [rsp + 3120]
.Lcall_prolog_α_364_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_364_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_364_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_68
.Lcall_prolog_α_364_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_364_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_68
.Lcall_prolog_α_364_71: cmp              al, 72;                              jne   .Lcall_prolog_α_364_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_364_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_68
.Lcall_prolog_α_364_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_364_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_364_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_364_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_364_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_364_75
                                                                              jmp   .Lcall_prolog_α_364_72
.Lcall_prolog_α_364_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_364_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_364_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_364_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_364_76
                                                                              jmp   .Lcall_prolog_α_364_72
.Lcall_prolog_α_364_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_364_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_364_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_364_77
.Lcall_prolog_α_364_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_364_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_364_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_364_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_364_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_364_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 3104]
.Lcall_prolog_α_364_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_364_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_364_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_81
.Lcall_prolog_α_364_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_364_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_81
.Lcall_prolog_α_364_84: cmp              al, 72;                              jne   .Lcall_prolog_α_364_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_364_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_364_81
.Lcall_prolog_α_364_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_364_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_364_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_364_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_364_85
                                                                              jmp   .Lcall_prolog_α_364_86
.Lcall_prolog_α_364_85: mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_364_87
.Lcall_prolog_α_364_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_364_87: lea              rcx, [rsp + 3120]
.Lcall_prolog_α_364_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_364_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_364_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_88
.Lcall_prolog_α_364_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_364_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_88
.Lcall_prolog_α_364_91: cmp              al, 72;                              jne   .Lcall_prolog_α_364_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_364_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_364_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_364_88
.Lcall_prolog_α_364_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_364_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_364_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_364_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_364_92
                                                                              jmp   .Lcall_prolog_α_364_93
.Lcall_prolog_α_364_92: mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_364_94
.Lcall_prolog_α_364_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_364_94: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_364_77
.Lcall_prolog_α_364_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_364_77
.Lcall_prolog_α_364_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_364_77: mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n75_call_proc_staged_β
                                                                              jmp   n110_lit_string_α
n109_call_prolog_β:     mov              r11, 110;                            jmp   n75_call_proc_staged_β
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n111_var_ref_α
.Llit_string_α_365_0:   .quad            .Llit_string_α_365_0_s
.Llit_string_α_365_0_s: .string          "house"
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7360]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n112_var_ref_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7376]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n113_var_ref_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7392]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n114_var_ref_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7408]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n115_lit_string_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_374_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n116_call_prolog_α
.Llit_string_α_374_0:   .quad            .Llit_string_α_374_0_s
.Llit_string_α_374_0_s: .string          "chesterfields"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_call_prolog_bx, @function
n116_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_prolog_α:     mov              r11, 117
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2696], rax
                        lea              rdi, [rsp + 2688]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n117_lit_string_α
n116_call_prolog_β:     mov              r11, 117;                            jmp   n195_call_prolog_α
                        .size            n116_call_prolog_bx, .-n116_call_prolog_bx
                        .type            n117_lit_string_bx, @function
n117_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_376_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n118_var_ref_α
.Llit_string_α_376_0:   .quad            .Llit_string_α_376_0_s
.Llit_string_α_376_0_s: .string          "house"
                        .size            n117_lit_string_bx, .-n117_lit_string_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7424]
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n119_var_ref_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7440]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n120_lit_string_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_lit_string_bx, @function
n120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_381_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n121_var_ref_α
.Llit_string_α_381_0:   .quad            .Llit_string_α_381_0_s
.Llit_string_α_381_0_s: .string          "fox"
                        .size            n120_lit_string_bx, .-n120_lit_string_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7456]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n122_var_ref_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7472]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n123_call_prolog_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_call_prolog_bx, @function
n123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 124
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 2920], rax
                        lea              rdi, [rsp + 2912]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n124_var_ref_α
n123_call_prolog_β:     mov              r11, 124;                            jmp   n195_call_prolog_α
                        .size            n123_call_prolog_bx, .-n123_call_prolog_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n125_call_proc_staged_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_call_proc_staged_bx, @function
n125_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 126
                        mov              qword ptr [rsp + 2560], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_200
                        mov              rax, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_390_201
.Lcall_proc_staged_α_390_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_202
                        mov              rax, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_390_203
.Lcall_proc_staged_α_390_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_204
                        mov              rax, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_390_205
.Lcall_proc_staged_α_390_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_390_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_390_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_390_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_390_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 2568], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2560]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_390_5
                        mov              qword ptr [rsp + 2560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2560]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_390_6
                        mov              qword ptr [rsp + 2560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_390_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
.Lcall_proc_staged_α_390_29:
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n75_call_proc_staged_β
                                                                              jmp   n126_lit_string_α
n125_call_proc_staged_β:
                        mov              r11, 126
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2560], 0
                        lea              rdi, [rsp + 2576]
                        lea              rsi, [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n75_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              ecx, 64
                        mov              r8d, 1568
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n75_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_390_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_390_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_390_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n75_call_proc_staged_β
                                                                              jmp   n126_lit_string_α
.Lcall_proc_staged_β_390_0:
                        .quad            .Lcall_proc_staged_β_390_0_s
.Lcall_proc_staged_β_390_0_s:
                        .string          "next_to/3"
                        .size            n125_call_proc_staged_bx, .-n125_call_proc_staged_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n127_var_ref_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "house"
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_var_ref_bx, @function
n127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7232]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n128_var_ref_α
                        .size            n127_var_ref_bx, .-n127_var_ref_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7248]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n129_var_ref_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7264]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n130_var_ref_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7280]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n131_lit_string_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_lit_string_bx, @function
n131_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_400_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n132_call_prolog_α
.Llit_string_α_400_0:   .quad            .Llit_string_α_400_0_s
.Llit_string_α_400_0_s: .string          "kools"
                        .size            n131_lit_string_bx, .-n131_lit_string_bx
                        .type            n132_call_prolog_bx, @function
n132_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_prolog_α:     mov              r11, 133
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n133_lit_string_α
n132_call_prolog_β:     mov              r11, 133;                            jmp   n195_call_prolog_α
                        .size            n132_call_prolog_bx, .-n132_call_prolog_bx
                        .type            n133_lit_string_bx, @function
n133_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n134_var_ref_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "house"
                        .size            n133_lit_string_bx, .-n133_lit_string_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7296]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n135_var_ref_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7312]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n136_lit_string_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_407_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n137_var_ref_α
.Llit_string_α_407_0:   .quad            .Llit_string_α_407_0_s
.Llit_string_α_407_0_s: .string          "horse"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7328]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n138_var_ref_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7344]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n139_call_prolog_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_call_prolog_bx, @function
n139_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 140
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n140_var_ref_α
n139_call_prolog_β:     mov              r11, 140;                            jmp   n195_call_prolog_α
                        .size            n139_call_prolog_bx, .-n139_call_prolog_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n141_call_proc_staged_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_call_proc_staged_bx, @function
n141_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              r11, 142
                        mov              qword ptr [rsp + 2000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_200
                        mov              rax, qword ptr [rsp + 2112]
                        mov              rdx, qword ptr [rsp + 2120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_416_201
.Lcall_proc_staged_α_416_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2112]
                        mov              rdx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_202
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_416_203
.Lcall_proc_staged_α_416_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_204
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_416_205
.Lcall_proc_staged_α_416_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_416_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_416_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_416_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_416_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 2008], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_416_5
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_416_6
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_416_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
.Lcall_proc_staged_α_416_29:
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n125_call_proc_staged_β
                                                                              jmp   n142_lit_string_α
n141_call_proc_staged_β:
                        mov              r11, 142
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2000], 0
                        lea              rdi, [rsp + 2016]
                        lea              rsi, [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n125_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              ecx, 64
                        mov              r8d, 1568
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2112]
                        mov              rdx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n125_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_416_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_416_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_416_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n125_call_proc_staged_β
                                                                              jmp   n142_lit_string_α
.Lcall_proc_staged_β_416_0:
                        .quad            .Lcall_proc_staged_β_416_0_s
.Lcall_proc_staged_β_416_0_s:
                        .string          "next_to/3"
                        .size            n141_call_proc_staged_bx, .-n141_call_proc_staged_bx
                        .type            n142_lit_string_bx, @function
n142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_417_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n143_var_ref_α
.Llit_string_α_417_0:   .quad            .Llit_string_α_417_0_s
.Llit_string_α_417_0_s: .string          "house"
                        .size            n142_lit_string_bx, .-n142_lit_string_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7184]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n144_var_ref_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7200]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7216]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n146_lit_string_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_lit_string_bx, @function
n146_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_424_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n147_lit_string_α
.Llit_string_α_424_0:   .quad            .Llit_string_α_424_0_s
.Llit_string_α_424_0_s: .string          "orange_juice"
                        .size            n146_lit_string_bx, .-n146_lit_string_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n148_call_prolog_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "lucky_strikes"
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_call_prolog_bx, @function
n148_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_prolog_α:     mov              r11, 149
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1800], rax
                        lea              rdi, [rsp + 1792]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n149_var_ref_α
n148_call_prolog_β:     mov              r11, 149;                            jmp   n195_call_prolog_α
                        .size            n148_call_prolog_bx, .-n148_call_prolog_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n150_call_proc_staged_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_call_proc_staged_bx, @function
n150_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              r11, 151
                        mov              qword ptr [rsp + 1664], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_430_200
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_430_201
.Lcall_proc_staged_α_430_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_430_202
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_430_203
.Lcall_proc_staged_α_430_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_430_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_430_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_430_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_430_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1672], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1664]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_430_5
                        mov              qword ptr [rsp + 1664], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1664]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_430_6
                        mov              qword ptr [rsp + 1664], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_430_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
.Lcall_proc_staged_α_430_29:
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n141_call_proc_staged_β
                                                                              jmp   n151_lit_string_α
n150_call_proc_staged_β:
                        mov              r11, 151
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1664], 0
                        lea              rdi, [rsp + 1680]
                        lea              rsi, [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n141_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
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
                        test             rax, rax;                            je    n141_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_430_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_430_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_430_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n141_call_proc_staged_β
                                                                              jmp   n151_lit_string_α
.Lcall_proc_staged_β_430_0:
                        .quad            .Lcall_proc_staged_β_430_0_s
.Lcall_proc_staged_β_430_0_s:
                        .string          "my_member/2"
                        .size            n150_call_proc_staged_bx, .-n150_call_proc_staged_bx
                        .type            n151_lit_string_bx, @function
n151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_431_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n152_var_ref_α
.Llit_string_α_431_0:   .quad            .Llit_string_α_431_0_s
.Llit_string_α_431_0_s: .string          "house"
                        .size            n151_lit_string_bx, .-n151_lit_string_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7136]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n153_lit_string_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_string_bx, @function
n153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n154_var_ref_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "japanese"
                        .size            n153_lit_string_bx, .-n153_lit_string_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7152]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n155_var_ref_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7168]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n156_lit_string_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n157_call_prolog_α
.Llit_string_α_439_0:   .quad            .Llit_string_α_439_0_s
.Llit_string_α_439_0_s: .string          "parliaments"
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 158
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n158_var_ref_α
n157_call_prolog_β:     mov              r11, 158;                            jmp   n195_call_prolog_α
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n159_call_proc_staged_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_call_proc_staged_bx, @function
n159_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_proc_staged_α:
                        mov              r11, 160
                        mov              qword ptr [rsp + 1344], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_444_200
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_444_201
.Lcall_proc_staged_α_444_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_444_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_444_202
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_444_203
.Lcall_proc_staged_α_444_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_444_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_444_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_444_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_444_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_444_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1352], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1344]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_444_5
                        mov              qword ptr [rsp + 1344], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1344]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_444_6
                        mov              qword ptr [rsp + 1344], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_444_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_444_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
.Lcall_proc_staged_α_444_29:
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n150_call_proc_staged_β
                                                                              jmp   n160_lit_string_α
n159_call_proc_staged_β:
                        mov              r11, 160
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1344], 0
                        lea              rdi, [rsp + 1360]
                        lea              rsi, [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n150_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
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
                        test             rax, rax;                            je    n150_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_444_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_444_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_444_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n150_call_proc_staged_β
                                                                              jmp   n160_lit_string_α
.Lcall_proc_staged_β_444_0:
                        .quad            .Lcall_proc_staged_β_444_0_s
.Lcall_proc_staged_β_444_0_s:
                        .string          "my_member/2"
                        .size            n159_call_proc_staged_bx, .-n159_call_proc_staged_bx
                        .type            n160_lit_string_bx, @function
n160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n161_var_ref_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "house"
                        .size            n160_lit_string_bx, .-n160_lit_string_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7008]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n162_lit_string_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n163_var_ref_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "norwegian"
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7024]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n164_var_ref_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7040]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n165_var_ref_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7056]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n166_call_prolog_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_call_prolog_bx, @function
n166_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_prolog_α:     mov              r11, 167
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n167_lit_string_α
n166_call_prolog_β:     mov              r11, 167;                            jmp   n195_call_prolog_α
                        .size            n166_call_prolog_bx, .-n166_call_prolog_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_456_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n168_lit_string_α
.Llit_string_α_456_0:   .quad            .Llit_string_α_456_0_s
.Llit_string_α_456_0_s: .string          "house"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_lit_string_bx, @function
n168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n169_var_ref_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "blue"
                        .size            n168_lit_string_bx, .-n168_lit_string_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7072]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n170_var_ref_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7088]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7104]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n172_var_ref_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7120]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n173_call_prolog_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_call_prolog_bx, @function
n173_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_prolog_α:     mov              r11, 174
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n174_var_ref_α
n173_call_prolog_β:     mov              r11, 174;                            jmp   n195_call_prolog_α
                        .size            n173_call_prolog_bx, .-n173_call_prolog_bx
                        .type            n174_var_ref_bx, @function
n174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n175_call_proc_staged_α
                        .size            n174_var_ref_bx, .-n174_var_ref_bx
                        .type            n175_call_proc_staged_bx, @function
n175_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 176
                        mov              qword ptr [rsp + 800], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_200
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_470_201
.Lcall_proc_staged_α_470_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_202
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_470_203
.Lcall_proc_staged_α_470_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_204
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_470_205
.Lcall_proc_staged_α_470_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_470_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_470_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_470_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_470_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 808], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 800]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_470_5
                        mov              qword ptr [rsp + 800], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 800]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_470_6
                        mov              qword ptr [rsp + 800], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_470_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
.Lcall_proc_staged_α_470_29:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n159_call_proc_staged_β
                                                                              jmp   n176_lit_string_α
n175_call_proc_staged_β:
                        mov              r11, 176
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 800], 0
                        lea              rdi, [rsp + 816]
                        lea              rsi, [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n159_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              ecx, 64
                        mov              r8d, 1568
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n159_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_470_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_470_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_470_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n159_call_proc_staged_β
                                                                              jmp   n176_lit_string_α
.Lcall_proc_staged_β_470_0:
                        .quad            .Lcall_proc_staged_β_470_0_s
.Lcall_proc_staged_β_470_0_s:
                        .string          "next_to/3"
                        .size            n175_call_proc_staged_bx, .-n175_call_proc_staged_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n177_var_ref_α
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "house"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6944]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n178_var_ref_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6960]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n179_lit_string_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n180_var_ref_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "zebra"
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6976]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6992]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n182_call_prolog_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_prolog_bx, @function
n182_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_prolog_α:     mov              r11, 183
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n183_var_ref_α
n182_call_prolog_β:     mov              r11, 183;                            jmp   n195_call_prolog_α
                        .size            n182_call_prolog_bx, .-n182_call_prolog_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n184_call_proc_staged_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_call_proc_staged_bx, @function
n184_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        mov              r11, 185
                        mov              qword ptr [rsp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_485_200
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_485_201
.Lcall_proc_staged_α_485_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_485_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_485_202
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_485_203
.Lcall_proc_staged_α_485_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_485_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_485_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_485_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_485_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_485_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 472], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 464]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_485_5
                        mov              qword ptr [rsp + 464], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 464]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_485_6
                        mov              qword ptr [rsp + 464], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_485_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_485_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
.Lcall_proc_staged_α_485_29:
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n175_call_proc_staged_β
                                                                              jmp   n185_lit_string_α
n184_call_proc_staged_β:
                        mov              r11, 185
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 464], 0
                        lea              rdi, [rsp + 480]
                        lea              rsi, [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n175_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
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
                        test             rax, rax;                            je    n175_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_485_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_485_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_485_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n175_call_proc_staged_β
                                                                              jmp   n185_lit_string_α
.Lcall_proc_staged_β_485_0:
                        .quad            .Lcall_proc_staged_β_485_0_s
.Lcall_proc_staged_β_485_0_s:
                        .string          "my_member/2"
                        .size            n184_call_proc_staged_bx, .-n184_call_proc_staged_bx
                        .type            n185_lit_string_bx, @function
n185_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n186_var_ref_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "house"
                        .size            n185_lit_string_bx, .-n185_lit_string_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6864]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n187_var_ref_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6880]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6896]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n189_lit_string_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_lit_string_bx, @function
n189_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n190_var_ref_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "water"
                        .size            n189_lit_string_bx, .-n189_lit_string_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6912]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n191_call_prolog_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_call_prolog_bx, @function
n191_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_prolog_α:     mov              r11, 192
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n192_var_ref_α
n191_call_prolog_β:     mov              r11, 192;                            jmp   n195_call_prolog_α
                        .size            n191_call_prolog_bx, .-n191_call_prolog_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 6928]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n193_call_proc_staged_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_call_proc_staged_bx, @function
n193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 194
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_200
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_500_201
.Lcall_proc_staged_α_500_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_500_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_202
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_500_203
.Lcall_proc_staged_α_500_202:
                        mov              edi, 1
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
.Lcall_proc_staged_α_500_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_500_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_500_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_500_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_500_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 152], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_500_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_500_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_500_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_500_29
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
.Lcall_proc_staged_α_500_29:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n184_call_proc_staged_β
                                                                              jmp   n194_suspend_α
n193_call_proc_staged_β:
                        mov              r11, 194
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n184_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
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
                        test             rax, rax;                            je    n184_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_500_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_500_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_500_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n184_call_proc_staged_β
                                                                              jmp   n194_suspend_α
.Lcall_proc_staged_β_500_0:
                        .quad            .Lcall_proc_staged_β_500_0_s
.Lcall_proc_staged_β_500_0_s:
                        .string          "my_member/2"
                        .size            n193_call_proc_staged_bx, .-n193_call_proc_staged_bx
                        .type            n194_suspend_bx, @function
n194_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_suspend_α:         mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_502_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6848];         jmp   rax
.Lsuspend_α_502_61:     mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n194_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rsp + 6848], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   zebra$2F1_γ
n194_suspend_β:         mov              r11, 195;                            jmp   n193_call_proc_staged_β
                        .size            n194_suspend_bx, .-n194_suspend_bx
                        .type            n195_call_prolog_bx, @function
n195_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_prolog_α:     mov              r11, 196
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
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   zebra$2F1_ω
n195_call_prolog_β:     mov              r11, 196;                            jmp   zebra$2F1_ω
                        .size            n195_call_prolog_bx, .-n195_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_β:
                                                                              jmp   n194_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lzebra$2F1_α_503_50
                        mov              qword ptr [rsp + 6848], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6848];         jmp   rax
.Lzebra$2F1_α_503_50:   mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8136]
                        add              rsp, 8160;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_ω:
                        mov              rcx, qword ptr [rsp + 8144]
                        add              rsp, 8160;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__right_of$2F3:
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1160], rcx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rsp
                        mov              rdi, rsp
                        mov              esi, 1056
                        mov              edx, 1152
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
right_of$2F3_α_body:
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rsp + 1056], rax
                        .type            n504_call_prolog_bx, @function
n504_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_call_prolog_α:     mov              r11, 197
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_538_102
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_538_101
.Lcall_prolog_α_538_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_538_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_538_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_538_101
.Lcall_prolog_α_538_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_538_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    right_of$2F3_ω
                                                                              jmp   n505_var_ref_α
n504_call_prolog_β:     mov              r11, 197;                            jmp   right_of$2F3_ω
                        .size            n504_call_prolog_bx, .-n504_call_prolog_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n506_var_ref_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_var_ref_bx, @function
n506_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n507_call_prolog_α
                        .size            n506_var_ref_bx, .-n506_var_ref_bx
                        .type            n507_call_prolog_bx, @function
n507_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_prolog_α:     mov              r11, 200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lcall_prolog_α_543_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_543_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_543_40
.Lcall_prolog_α_543_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_543_40
.Lcall_prolog_α_543_56: cmp              al, 72;                              jne   .Lcall_prolog_α_543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_543_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_543_40
.Lcall_prolog_α_543_41: lea              r9, [rsp + 1008]
.Lcall_prolog_α_543_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_543_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_543_42
.Lcall_prolog_α_543_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_543_42
.Lcall_prolog_α_543_58: cmp              al, 72;                              jne   .Lcall_prolog_α_543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_543_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_543_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_543_42
.Lcall_prolog_α_543_43: cmp              r8, r9;                              je    .Lcall_prolog_α_543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_543_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_543_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_543_44
                                                                              jmp   .Lcall_prolog_α_543_45
.Lcall_prolog_α_543_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_543_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_543_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_543_53
                                                                              jmp   .Lcall_prolog_α_543_46
.Lcall_prolog_α_543_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_543_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_543_51
.Lcall_prolog_α_543_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_543_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_543_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_543_47
                                                                              jmp   .Lcall_prolog_α_543_48
.Lcall_prolog_α_543_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_543_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_543_51
.Lcall_prolog_α_543_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_543_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_543_53
                                                                              jmp   .Lcall_prolog_α_543_52
.Lcall_prolog_α_543_49: cmp              dl, 80;                              je    .Lcall_prolog_α_543_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_543_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_543_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_543_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_543_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_543_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_543_51
                                                                              jmp   .Lcall_prolog_α_543_52
.Lcall_prolog_α_543_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_543_53
.Lcall_prolog_α_543_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_543_54
.Lcall_prolog_α_543_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_543_54
.Lcall_prolog_α_543_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_543_54: mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n521_call_prolog_α
                                                                              jmp   n508_var_ref_α
n507_call_prolog_β:     mov              r11, 200;                            jmp   n521_call_prolog_α
                        .size            n507_call_prolog_bx, .-n507_call_prolog_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n509_var_ref_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n510_call_prolog_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_call_prolog_bx, @function
n510_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_prolog_α:     mov              r11, 203
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
.Lcall_prolog_α_548_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_548_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_56: cmp              al, 72;                              jne   .Lcall_prolog_α_548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_548_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_41: lea              r9, [rsp + 928]
.Lcall_prolog_α_548_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_548_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_58: cmp              al, 72;                              jne   .Lcall_prolog_α_548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_43: cmp              r8, r9;                              je    .Lcall_prolog_α_548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_548_44
                                                                              jmp   .Lcall_prolog_α_548_45
.Lcall_prolog_α_548_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_53
                                                                              jmp   .Lcall_prolog_α_548_46
.Lcall_prolog_α_548_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_548_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_548_51
.Lcall_prolog_α_548_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_47
                                                                              jmp   .Lcall_prolog_α_548_48
.Lcall_prolog_α_548_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_548_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_548_51
.Lcall_prolog_α_548_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_548_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_548_53
                                                                              jmp   .Lcall_prolog_α_548_52
.Lcall_prolog_α_548_49: cmp              dl, 80;                              je    .Lcall_prolog_α_548_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_548_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_548_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_548_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_548_51
                                                                              jmp   .Lcall_prolog_α_548_52
.Lcall_prolog_α_548_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_548_53
.Lcall_prolog_α_548_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_548_54
.Lcall_prolog_α_548_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_548_54
.Lcall_prolog_α_548_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_548_54: mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n521_call_prolog_α
                                                                              jmp   n511_var_ref_α
n510_call_prolog_β:     mov              r11, 203;                            jmp   n521_call_prolog_α
                        .size            n510_call_prolog_bx, .-n510_call_prolog_bx
                        .type            n511_var_ref_bx, @function
n511_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n512_lit_string_α
                        .size            n511_var_ref_bx, .-n511_var_ref_bx
                        .type            n512_lit_string_bx, @function
n512_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_551_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n513_var_ref_α
.Llit_string_α_551_0:   .quad            .Llit_string_α_551_0_s
.Llit_string_α_551_0_s: .string          "."
                        .size            n512_lit_string_bx, .-n512_lit_string_bx
                        .type            n513_var_ref_bx, @function
n513_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n514_lit_string_α
                        .size            n513_var_ref_bx, .-n513_var_ref_bx
                        .type            n514_lit_string_bx, @function
n514_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_554_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n515_var_ref_α
.Llit_string_α_554_0:   .quad            .Llit_string_α_554_0_s
.Llit_string_α_554_0_s: .string          "."
                        .size            n514_lit_string_bx, .-n514_lit_string_bx
                        .type            n515_var_ref_bx, @function
n515_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n516_var_ref_α
                        .size            n515_var_ref_bx, .-n515_var_ref_bx
                        .type            n516_var_ref_bx, @function
n516_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n517_call_prolog_α
                        .size            n516_var_ref_bx, .-n516_var_ref_bx
                        .type            n517_call_prolog_bx, @function
n517_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_call_prolog_α:     mov              r11, 210
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    right_of$2F3_ω
                                                                              jmp   n518_call_prolog_α
n517_call_prolog_β:     mov              r11, 210;                            jmp   right_of$2F3_ω
                        .size            n517_call_prolog_bx, .-n517_call_prolog_bx
                        .type            n518_call_prolog_bx, @function
n518_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_call_prolog_α:     mov              r11, 211
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n521_call_prolog_α
                                                                              jmp   n519_call_prolog_α
n518_call_prolog_β:     mov              r11, 211;                            jmp   n521_call_prolog_α
                        .size            n518_call_prolog_bx, .-n518_call_prolog_bx
                        .type            n519_call_prolog_bx, @function
n519_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_prolog_α:     mov              r11, 212
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lcall_prolog_α_561_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_40
.Lcall_prolog_α_561_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_40
.Lcall_prolog_α_561_56: cmp              al, 72;                              jne   .Lcall_prolog_α_561_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_561_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_40
.Lcall_prolog_α_561_41: lea              r9, [rsp + 624]
.Lcall_prolog_α_561_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_42
.Lcall_prolog_α_561_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_42
.Lcall_prolog_α_561_58: cmp              al, 72;                              jne   .Lcall_prolog_α_561_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_42
.Lcall_prolog_α_561_43: cmp              r8, r9;                              je    .Lcall_prolog_α_561_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_561_44
                                                                              jmp   .Lcall_prolog_α_561_45
.Lcall_prolog_α_561_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_53
                                                                              jmp   .Lcall_prolog_α_561_46
.Lcall_prolog_α_561_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_561_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_561_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_561_51
.Lcall_prolog_α_561_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_47
                                                                              jmp   .Lcall_prolog_α_561_48
.Lcall_prolog_α_561_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_561_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_561_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_561_51
.Lcall_prolog_α_561_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_561_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_561_53
                                                                              jmp   .Lcall_prolog_α_561_52
.Lcall_prolog_α_561_49: cmp              dl, 80;                              je    .Lcall_prolog_α_561_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_561_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_561_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_561_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_561_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_561_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_561_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_561_51
                                                                              jmp   .Lcall_prolog_α_561_52
.Lcall_prolog_α_561_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_561_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_561_53
.Lcall_prolog_α_561_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_561_54
.Lcall_prolog_α_561_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_561_54
.Lcall_prolog_α_561_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_561_54: mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n521_call_prolog_α
                                                                              jmp   n520_suspend_α
n519_call_prolog_β:     mov              r11, 212;                            jmp   n521_call_prolog_α
                        .size            n519_call_prolog_bx, .-n519_call_prolog_bx
                        .type            n520_suspend_bx, @function
n520_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_suspend_α:         mov              r11, 213
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_563_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056];         jmp   rax
.Lsuspend_α_563_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n520_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   right_of$2F3_γ
n520_suspend_β:         mov              r11, 213;                            jmp   n521_call_prolog_α
                        .size            n520_suspend_bx, .-n520_suspend_bx
                        .type            n521_call_prolog_bx, @function
n521_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    right_of$2F3_ω
                                                                              jmp   n522_var_ref_α
n521_call_prolog_β:     mov              r11, 214;                            jmp   right_of$2F3_ω
                        .size            n521_call_prolog_bx, .-n521_call_prolog_bx
                        .type            n522_var_ref_bx, @function
n522_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n523_var_ref_α
                        .size            n522_var_ref_bx, .-n522_var_ref_bx
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n524_call_prolog_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_call_prolog_bx, @function
n524_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_call_prolog_α:     mov              r11, 217
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
.Lcall_prolog_α_569_41: lea              r9, [rsp + 496]
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
.Lcall_prolog_α_569_54: mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n537_call_prolog_α
                                                                              jmp   n525_var_ref_α
n524_call_prolog_β:     mov              r11, 217;                            jmp   n537_call_prolog_α
                        .size            n524_call_prolog_bx, .-n524_call_prolog_bx
                        .type            n525_var_ref_bx, @function
n525_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n526_var_ref_α
                        .size            n525_var_ref_bx, .-n525_var_ref_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n527_call_prolog_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_call_prolog_bx, @function
n527_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_call_prolog_α:     mov              r11, 220
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
.Lcall_prolog_α_574_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_574_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_574_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_574_40
.Lcall_prolog_α_574_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_574_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_574_40
.Lcall_prolog_α_574_56: cmp              al, 72;                              jne   .Lcall_prolog_α_574_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_574_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_574_40
.Lcall_prolog_α_574_41: lea              r9, [rsp + 416]
.Lcall_prolog_α_574_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_574_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_574_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_574_42
.Lcall_prolog_α_574_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_574_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_574_42
.Lcall_prolog_α_574_58: cmp              al, 72;                              jne   .Lcall_prolog_α_574_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_574_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_574_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_574_42
.Lcall_prolog_α_574_43: cmp              r8, r9;                              je    .Lcall_prolog_α_574_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_574_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_574_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_574_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_574_44
                                                                              jmp   .Lcall_prolog_α_574_45
.Lcall_prolog_α_574_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_574_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_574_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_574_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_574_53
                                                                              jmp   .Lcall_prolog_α_574_46
.Lcall_prolog_α_574_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_574_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_574_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_574_51
.Lcall_prolog_α_574_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_574_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_574_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_574_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_574_47
                                                                              jmp   .Lcall_prolog_α_574_48
.Lcall_prolog_α_574_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_574_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_574_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_574_51
.Lcall_prolog_α_574_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_574_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_574_53
                                                                              jmp   .Lcall_prolog_α_574_52
.Lcall_prolog_α_574_49: cmp              dl, 80;                              je    .Lcall_prolog_α_574_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_574_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_574_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_574_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_574_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_574_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_574_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_574_51
                                                                              jmp   .Lcall_prolog_α_574_52
.Lcall_prolog_α_574_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_574_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_574_53
.Lcall_prolog_α_574_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_574_54
.Lcall_prolog_α_574_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_574_54
.Lcall_prolog_α_574_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_574_54: mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n537_call_prolog_α
                                                                              jmp   n528_var_ref_α
n527_call_prolog_β:     mov              r11, 220;                            jmp   n537_call_prolog_α
                        .size            n527_call_prolog_bx, .-n527_call_prolog_bx
                        .type            n528_var_ref_bx, @function
n528_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n529_var_ref_α
                        .size            n528_var_ref_bx, .-n528_var_ref_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n531_call_prolog_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_prolog_bx, @function
n531_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_prolog_α:     mov              r11, 224
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
.Lcall_prolog_α_581_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_581_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_581_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_581_60
.Lcall_prolog_α_581_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_581_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_581_60
.Lcall_prolog_α_581_63: cmp              al, 72;                              jne   .Lcall_prolog_α_581_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_581_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_581_60
.Lcall_prolog_α_581_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_581_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_581_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_581_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_581_80
                                                                              jmp   .Lcall_prolog_α_581_74
.Lcall_prolog_α_581_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_581_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_581_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_581_73
                        lea              r9, [rsp + 320]
.Lcall_prolog_α_581_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_581_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_581_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_64
.Lcall_prolog_α_581_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_581_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_64
.Lcall_prolog_α_581_67: cmp              al, 72;                              jne   .Lcall_prolog_α_581_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_581_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_64
.Lcall_prolog_α_581_65: lea              rcx, [rsp + 336]
.Lcall_prolog_α_581_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_581_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_581_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_68
.Lcall_prolog_α_581_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_581_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_68
.Lcall_prolog_α_581_71: cmp              al, 72;                              jne   .Lcall_prolog_α_581_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_581_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_68
.Lcall_prolog_α_581_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_581_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_581_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_581_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_581_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_581_75
                                                                              jmp   .Lcall_prolog_α_581_72
.Lcall_prolog_α_581_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_581_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_581_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_581_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_581_76
                                                                              jmp   .Lcall_prolog_α_581_72
.Lcall_prolog_α_581_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_581_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_581_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_581_77
.Lcall_prolog_α_581_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_581_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_581_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_581_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_581_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_581_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 320]
.Lcall_prolog_α_581_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_581_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_581_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_81
.Lcall_prolog_α_581_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_581_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_81
.Lcall_prolog_α_581_84: cmp              al, 72;                              jne   .Lcall_prolog_α_581_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_581_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_581_81
.Lcall_prolog_α_581_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_581_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_581_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_581_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_581_85
                                                                              jmp   .Lcall_prolog_α_581_86
.Lcall_prolog_α_581_85: mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_581_87
.Lcall_prolog_α_581_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_581_87: lea              rcx, [rsp + 336]
.Lcall_prolog_α_581_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_581_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_581_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_88
.Lcall_prolog_α_581_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_581_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_88
.Lcall_prolog_α_581_91: cmp              al, 72;                              jne   .Lcall_prolog_α_581_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_581_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_581_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_581_88
.Lcall_prolog_α_581_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_581_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_581_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_581_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_581_92
                                                                              jmp   .Lcall_prolog_α_581_93
.Lcall_prolog_α_581_92: mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_581_94
.Lcall_prolog_α_581_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_581_94: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_581_77
.Lcall_prolog_α_581_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_581_77
.Lcall_prolog_α_581_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_581_77: mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n537_call_prolog_α
                                                                              jmp   n532_var_ref_α
n531_call_prolog_β:     mov              r11, 224;                            jmp   n537_call_prolog_α
                        .size            n531_call_prolog_bx, .-n531_call_prolog_bx
                        .type            n532_var_ref_bx, @function
n532_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n533_var_ref_α
                        .size            n532_var_ref_bx, .-n532_var_ref_bx
                        .type            n533_var_ref_bx, @function
n533_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n534_var_ref_α
                        .size            n533_var_ref_bx, .-n533_var_ref_bx
                        .type            n534_var_ref_bx, @function
n534_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n535_call_proc_staged_α
                        .size            n534_var_ref_bx, .-n534_var_ref_bx
                        .type            n535_call_proc_staged_bx, @function
n535_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_call_proc_staged_α:
                        mov              r11, 228
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_589_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_589_201
.Lcall_proc_staged_α_589_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_589_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_589_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_589_203
.Lcall_proc_staged_α_589_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_589_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_589_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_589_205
.Lcall_proc_staged_α_589_204:
                        mov              edi, 2
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
.Lcall_proc_staged_α_589_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_589_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_589_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_589_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_589_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_589_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_589_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_589_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_589_2
.Lcall_proc_staged_α_589_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_589_2
.Lcall_proc_staged_α_589_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_589_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_589_2
.Lcall_proc_staged_α_589_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_589_2
.Lcall_proc_staged_α_589_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_589_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_589_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lcall_proc_staged_α_589_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n537_call_prolog_α
                                                                              jmp   n536_suspend_α
n535_call_proc_staged_β:
                        mov              r11, 228
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n537_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1056
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n537_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_589_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_589_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_589_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_589_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_589_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n537_call_prolog_α
                                                                              jmp   n536_suspend_α
.Lcall_proc_staged_β_589_0:
                        .quad            .Lcall_proc_staged_β_589_0_s
.Lcall_proc_staged_β_589_0_s:
                        .string          "right_of/3"
                        .size            n535_call_proc_staged_bx, .-n535_call_proc_staged_bx
                        .type            n536_suspend_bx, @function
n536_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_suspend_α:         mov              r11, 229
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_591_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056];         jmp   rax
.Lsuspend_α_591_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n536_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   right_of$2F3_γ
n536_suspend_β:         mov              r11, 229;                            jmp   n535_call_proc_staged_β
                        .size            n536_suspend_bx, .-n536_suspend_bx
                        .type            n537_call_prolog_bx, @function
n537_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_prolog_α:     mov              r11, 230
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    right_of$2F3_ω
                                                                              jmp   right_of$2F3_ω
n537_call_prolog_β:     mov              r11, 230;                            jmp   right_of$2F3_ω
                        .size            n537_call_prolog_bx, .-n537_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_β:
                                                                              jmp   n520_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lright_of$2F3_α_592_50
                        mov              qword ptr [rsp + 1056], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056];         jmp   rax
.Lright_of$2F3_α_592_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1160]
                        add              rsp, 1184;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1168]
                        add              rsp, 1184;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__next_to$2F3:
                        sub              rsp, 1696
                        mov              qword ptr [rsp + 1672], rcx
                        mov              qword ptr [rsp + 1680], rdx
                        mov              qword ptr [rsp + 1688], rsp
                        mov              rdi, rsp
                        mov              esi, 1568
                        mov              edx, 1664
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
next_to$2F3_α_body:
                        lea              rax, [rip + n609_suspend_β]
                        mov              qword ptr [rsp + 1568], rax
                        .type            n593_call_prolog_bx, @function
n593_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_call_prolog_α:     mov              r11, 231
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_102
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_644_101
.Lcall_prolog_α_644_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_644_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_644_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_644_101
.Lcall_prolog_α_644_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_644_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n594_var_ref_α
n593_call_prolog_β:     mov              r11, 231;                            jmp   next_to$2F3_ω
                        .size            n593_call_prolog_bx, .-n593_call_prolog_bx
                        .type            n594_var_ref_bx, @function
n594_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n595_var_ref_α
                        .size            n594_var_ref_bx, .-n594_var_ref_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n596_call_prolog_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_call_prolog_bx, @function
n596_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_prolog_α:     mov              r11, 234
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        lea              rdi, [rsp + 1504]
                        lea              r8, [rsp + 1504]
.Lcall_prolog_α_649_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_649_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_649_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_649_40
.Lcall_prolog_α_649_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_649_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_649_40
.Lcall_prolog_α_649_56: cmp              al, 72;                              jne   .Lcall_prolog_α_649_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_649_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_649_40
.Lcall_prolog_α_649_41: lea              r9, [rsp + 1520]
.Lcall_prolog_α_649_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_649_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_649_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_649_42
.Lcall_prolog_α_649_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_649_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_649_42
.Lcall_prolog_α_649_58: cmp              al, 72;                              jne   .Lcall_prolog_α_649_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_649_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_649_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_649_42
.Lcall_prolog_α_649_43: cmp              r8, r9;                              je    .Lcall_prolog_α_649_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_649_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_649_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_649_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_649_44
                                                                              jmp   .Lcall_prolog_α_649_45
.Lcall_prolog_α_649_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_649_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_649_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_649_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_649_53
                                                                              jmp   .Lcall_prolog_α_649_46
.Lcall_prolog_α_649_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_649_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_649_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_649_51
.Lcall_prolog_α_649_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_649_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_649_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_649_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_649_47
                                                                              jmp   .Lcall_prolog_α_649_48
.Lcall_prolog_α_649_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_649_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_649_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_649_51
.Lcall_prolog_α_649_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_649_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_649_53
                                                                              jmp   .Lcall_prolog_α_649_52
.Lcall_prolog_α_649_49: cmp              dl, 80;                              je    .Lcall_prolog_α_649_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_649_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_649_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_649_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_649_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_649_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_649_51
                                                                              jmp   .Lcall_prolog_α_649_52
.Lcall_prolog_α_649_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_649_53
.Lcall_prolog_α_649_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_649_54
.Lcall_prolog_α_649_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_649_54
.Lcall_prolog_α_649_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_649_54: mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n610_call_prolog_α
                                                                              jmp   n597_var_ref_α
n596_call_prolog_β:     mov              r11, 234;                            jmp   n610_call_prolog_α
                        .size            n596_call_prolog_bx, .-n596_call_prolog_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n598_var_ref_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n599_call_prolog_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_call_prolog_bx, @function
n599_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_prolog_α:     mov              r11, 237
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        lea              rdi, [rsp + 1424]
                        lea              r8, [rsp + 1424]
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
.Lcall_prolog_α_654_41: lea              r9, [rsp + 1440]
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
.Lcall_prolog_α_654_54: mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n610_call_prolog_α
                                                                              jmp   n600_var_ref_α
n599_call_prolog_β:     mov              r11, 237;                            jmp   n610_call_prolog_α
                        .size            n599_call_prolog_bx, .-n599_call_prolog_bx
                        .type            n600_var_ref_bx, @function
n600_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n601_lit_string_α
                        .size            n600_var_ref_bx, .-n600_var_ref_bx
                        .type            n601_lit_string_bx, @function
n601_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_657_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n602_var_ref_α
.Llit_string_α_657_0:   .quad            .Llit_string_α_657_0_s
.Llit_string_α_657_0_s: .string          "."
                        .size            n601_lit_string_bx, .-n601_lit_string_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n603_lit_string_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_lit_string_bx, @function
n603_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_660_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n604_var_ref_α
.Llit_string_α_660_0:   .quad            .Llit_string_α_660_0_s
.Llit_string_α_660_0_s: .string          "."
                        .size            n603_lit_string_bx, .-n603_lit_string_bx
                        .type            n604_var_ref_bx, @function
n604_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n605_var_ref_α
                        .size            n604_var_ref_bx, .-n604_var_ref_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n606_call_prolog_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_call_prolog_bx, @function
n606_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_call_prolog_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        mov              esi, 3
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
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n607_call_prolog_α
n606_call_prolog_β:     mov              r11, 244;                            jmp   next_to$2F3_ω
                        .size            n606_call_prolog_bx, .-n606_call_prolog_bx
                        .type            n607_call_prolog_bx, @function
n607_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_prolog_α:     mov              r11, 245
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n610_call_prolog_α
                                                                              jmp   n608_call_prolog_α
n607_call_prolog_β:     mov              r11, 245;                            jmp   n610_call_prolog_α
                        .size            n607_call_prolog_bx, .-n607_call_prolog_bx
                        .type            n608_call_prolog_bx, @function
n608_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_call_prolog_α:     mov              r11, 246
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lcall_prolog_α_667_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_667_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_667_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_667_40
.Lcall_prolog_α_667_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_667_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_667_40
.Lcall_prolog_α_667_56: cmp              al, 72;                              jne   .Lcall_prolog_α_667_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_667_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_667_40
.Lcall_prolog_α_667_41: lea              r9, [rsp + 1136]
.Lcall_prolog_α_667_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_667_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_667_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_667_42
.Lcall_prolog_α_667_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_667_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_667_42
.Lcall_prolog_α_667_58: cmp              al, 72;                              jne   .Lcall_prolog_α_667_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_667_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_667_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_667_42
.Lcall_prolog_α_667_43: cmp              r8, r9;                              je    .Lcall_prolog_α_667_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_667_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_667_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_667_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_667_44
                                                                              jmp   .Lcall_prolog_α_667_45
.Lcall_prolog_α_667_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_667_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_667_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_667_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_667_53
                                                                              jmp   .Lcall_prolog_α_667_46
.Lcall_prolog_α_667_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_667_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_667_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_667_51
.Lcall_prolog_α_667_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_667_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_667_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_667_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_667_47
                                                                              jmp   .Lcall_prolog_α_667_48
.Lcall_prolog_α_667_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_667_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_667_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_667_51
.Lcall_prolog_α_667_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_667_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_667_53
                                                                              jmp   .Lcall_prolog_α_667_52
.Lcall_prolog_α_667_49: cmp              dl, 80;                              je    .Lcall_prolog_α_667_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_667_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_667_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_667_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_667_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_667_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_667_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_667_51
                                                                              jmp   .Lcall_prolog_α_667_52
.Lcall_prolog_α_667_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_667_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_667_53
.Lcall_prolog_α_667_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_667_54
.Lcall_prolog_α_667_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_667_54
.Lcall_prolog_α_667_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_667_54: mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n610_call_prolog_α
                                                                              jmp   n609_suspend_α
n608_call_prolog_β:     mov              r11, 246;                            jmp   n610_call_prolog_α
                        .size            n608_call_prolog_bx, .-n608_call_prolog_bx
                        .type            n609_suspend_bx, @function
n609_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_suspend_α:         mov              r11, 247
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_669_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568];         jmp   rax
.Lsuspend_α_669_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n609_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n609_suspend_β]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   next_to$2F3_γ
n609_suspend_β:         mov              r11, 247;                            jmp   n610_call_prolog_α
                        .size            n609_suspend_bx, .-n609_suspend_bx
                        .type            n610_call_prolog_bx, @function
n610_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_call_prolog_α:     mov              r11, 248
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n611_var_ref_α
n610_call_prolog_β:     mov              r11, 248;                            jmp   next_to$2F3_ω
                        .size            n610_call_prolog_bx, .-n610_call_prolog_bx
                        .type            n611_var_ref_bx, @function
n611_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n612_var_ref_α
                        .size            n611_var_ref_bx, .-n611_var_ref_bx
                        .type            n612_var_ref_bx, @function
n612_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n613_call_prolog_α
                        .size            n612_var_ref_bx, .-n612_var_ref_bx
                        .type            n613_call_prolog_bx, @function
n613_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_call_prolog_α:     mov              r11, 251
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lcall_prolog_α_675_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_675_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_56: cmp              al, 72;                              jne   .Lcall_prolog_α_675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_675_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_41: lea              r9, [rsp + 1008]
.Lcall_prolog_α_675_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_675_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_58: cmp              al, 72;                              jne   .Lcall_prolog_α_675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_43: cmp              r8, r9;                              je    .Lcall_prolog_α_675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_675_44
                                                                              jmp   .Lcall_prolog_α_675_45
.Lcall_prolog_α_675_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_53
                                                                              jmp   .Lcall_prolog_α_675_46
.Lcall_prolog_α_675_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_675_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_675_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_675_51
.Lcall_prolog_α_675_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_47
                                                                              jmp   .Lcall_prolog_α_675_48
.Lcall_prolog_α_675_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_675_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_675_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_675_51
.Lcall_prolog_α_675_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_675_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_675_53
                                                                              jmp   .Lcall_prolog_α_675_52
.Lcall_prolog_α_675_49: cmp              dl, 80;                              je    .Lcall_prolog_α_675_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_675_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_675_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_675_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_675_51
                                                                              jmp   .Lcall_prolog_α_675_52
.Lcall_prolog_α_675_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_675_53
.Lcall_prolog_α_675_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_675_54
.Lcall_prolog_α_675_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_675_54
.Lcall_prolog_α_675_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_675_54: mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n627_call_prolog_α
                                                                              jmp   n614_var_ref_α
n613_call_prolog_β:     mov              r11, 251;                            jmp   n627_call_prolog_α
                        .size            n613_call_prolog_bx, .-n613_call_prolog_bx
                        .type            n614_var_ref_bx, @function
n614_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n615_var_ref_α
                        .size            n614_var_ref_bx, .-n614_var_ref_bx
                        .type            n615_var_ref_bx, @function
n615_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n616_call_prolog_α
                        .size            n615_var_ref_bx, .-n615_var_ref_bx
                        .type            n616_call_prolog_bx, @function
n616_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_call_prolog_α:     mov              r11, 254
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
.Lcall_prolog_α_680_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_680_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_680_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_680_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_56: cmp              al, 72;                              jne   .Lcall_prolog_α_680_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_680_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_41: lea              r9, [rsp + 928]
.Lcall_prolog_α_680_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_680_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_680_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_680_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_58: cmp              al, 72;                              jne   .Lcall_prolog_α_680_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_43: cmp              r8, r9;                              je    .Lcall_prolog_α_680_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_680_44
                                                                              jmp   .Lcall_prolog_α_680_45
.Lcall_prolog_α_680_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_53
                                                                              jmp   .Lcall_prolog_α_680_46
.Lcall_prolog_α_680_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_680_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_680_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_680_51
.Lcall_prolog_α_680_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_47
                                                                              jmp   .Lcall_prolog_α_680_48
.Lcall_prolog_α_680_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_680_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_680_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_680_51
.Lcall_prolog_α_680_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_680_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_680_53
                                                                              jmp   .Lcall_prolog_α_680_52
.Lcall_prolog_α_680_49: cmp              dl, 80;                              je    .Lcall_prolog_α_680_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_680_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_680_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_680_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_680_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_680_51
                                                                              jmp   .Lcall_prolog_α_680_52
.Lcall_prolog_α_680_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_680_53
.Lcall_prolog_α_680_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_680_54
.Lcall_prolog_α_680_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_680_54
.Lcall_prolog_α_680_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_680_54: mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n627_call_prolog_α
                                                                              jmp   n617_var_ref_α
n616_call_prolog_β:     mov              r11, 254;                            jmp   n627_call_prolog_α
                        .size            n616_call_prolog_bx, .-n616_call_prolog_bx
                        .type            n617_var_ref_bx, @function
n617_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n618_lit_string_α
                        .size            n617_var_ref_bx, .-n617_var_ref_bx
                        .type            n618_lit_string_bx, @function
n618_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_683_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n619_var_ref_α
.Llit_string_α_683_0:   .quad            .Llit_string_α_683_0_s
.Llit_string_α_683_0_s: .string          "."
                        .size            n618_lit_string_bx, .-n618_lit_string_bx
                        .type            n619_var_ref_bx, @function
n619_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n620_lit_string_α
                        .size            n619_var_ref_bx, .-n619_var_ref_bx
                        .type            n620_lit_string_bx, @function
n620_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_686_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n621_var_ref_α
.Llit_string_α_686_0:   .quad            .Llit_string_α_686_0_s
.Llit_string_α_686_0_s: .string          "."
                        .size            n620_lit_string_bx, .-n620_lit_string_bx
                        .type            n621_var_ref_bx, @function
n621_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n622_var_ref_α
                        .size            n621_var_ref_bx, .-n621_var_ref_bx
                        .type            n622_var_ref_bx, @function
n622_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n623_call_prolog_α
                        .size            n622_var_ref_bx, .-n622_var_ref_bx
                        .type            n623_call_prolog_bx, @function
n623_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_prolog_α:     mov              r11, 261
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n624_call_prolog_α
n623_call_prolog_β:     mov              r11, 261;                            jmp   next_to$2F3_ω
                        .size            n623_call_prolog_bx, .-n623_call_prolog_bx
                        .type            n624_call_prolog_bx, @function
n624_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_call_prolog_α:     mov              r11, 262
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n627_call_prolog_α
                                                                              jmp   n625_call_prolog_α
n624_call_prolog_β:     mov              r11, 262;                            jmp   n627_call_prolog_α
                        .size            n624_call_prolog_bx, .-n624_call_prolog_bx
                        .type            n625_call_prolog_bx, @function
n625_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lcall_prolog_α_693_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_693_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_693_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_693_40
.Lcall_prolog_α_693_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_693_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_693_40
.Lcall_prolog_α_693_56: cmp              al, 72;                              jne   .Lcall_prolog_α_693_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_693_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_693_40
.Lcall_prolog_α_693_41: lea              r9, [rsp + 624]
.Lcall_prolog_α_693_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_693_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_693_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_693_42
.Lcall_prolog_α_693_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_693_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_693_42
.Lcall_prolog_α_693_58: cmp              al, 72;                              jne   .Lcall_prolog_α_693_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_693_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_693_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_693_42
.Lcall_prolog_α_693_43: cmp              r8, r9;                              je    .Lcall_prolog_α_693_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_693_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_693_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_693_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_693_44
                                                                              jmp   .Lcall_prolog_α_693_45
.Lcall_prolog_α_693_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_693_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_693_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_693_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_693_53
                                                                              jmp   .Lcall_prolog_α_693_46
.Lcall_prolog_α_693_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_693_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_693_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_693_51
.Lcall_prolog_α_693_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_693_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_693_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_693_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_693_47
                                                                              jmp   .Lcall_prolog_α_693_48
.Lcall_prolog_α_693_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_693_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_693_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_693_51
.Lcall_prolog_α_693_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_693_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_693_53
                                                                              jmp   .Lcall_prolog_α_693_52
.Lcall_prolog_α_693_49: cmp              dl, 80;                              je    .Lcall_prolog_α_693_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_693_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_693_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_693_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_693_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_693_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_693_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_693_51
                                                                              jmp   .Lcall_prolog_α_693_52
.Lcall_prolog_α_693_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_693_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_693_53
.Lcall_prolog_α_693_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_693_54
.Lcall_prolog_α_693_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_693_54
.Lcall_prolog_α_693_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_693_54: mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n627_call_prolog_α
                                                                              jmp   n626_suspend_α
n625_call_prolog_β:     mov              r11, 263;                            jmp   n627_call_prolog_α
                        .size            n625_call_prolog_bx, .-n625_call_prolog_bx
                        .type            n626_suspend_bx, @function
n626_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_suspend_α:         mov              r11, 264
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_695_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568];         jmp   rax
.Lsuspend_α_695_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n626_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n626_suspend_β]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   next_to$2F3_γ
n626_suspend_β:         mov              r11, 264;                            jmp   n627_call_prolog_α
                        .size            n626_suspend_bx, .-n626_suspend_bx
                        .type            n627_call_prolog_bx, @function
n627_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_call_prolog_α:     mov              r11, 265
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n628_var_ref_α
n627_call_prolog_β:     mov              r11, 265;                            jmp   next_to$2F3_ω
                        .size            n627_call_prolog_bx, .-n627_call_prolog_bx
                        .type            n628_var_ref_bx, @function
n628_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n629_var_ref_α
                        .size            n628_var_ref_bx, .-n628_var_ref_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n630_call_prolog_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_call_prolog_bx, @function
n630_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_call_prolog_α:     mov              r11, 268
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
.Lcall_prolog_α_701_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_701_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_701_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_701_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_56: cmp              al, 72;                              jne   .Lcall_prolog_α_701_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_701_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_41: lea              r9, [rsp + 496]
.Lcall_prolog_α_701_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_701_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_701_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_701_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_58: cmp              al, 72;                              jne   .Lcall_prolog_α_701_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_43: cmp              r8, r9;                              je    .Lcall_prolog_α_701_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_701_44
                                                                              jmp   .Lcall_prolog_α_701_45
.Lcall_prolog_α_701_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_53
                                                                              jmp   .Lcall_prolog_α_701_46
.Lcall_prolog_α_701_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_701_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_701_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_701_51
.Lcall_prolog_α_701_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_47
                                                                              jmp   .Lcall_prolog_α_701_48
.Lcall_prolog_α_701_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_701_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_701_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_701_51
.Lcall_prolog_α_701_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_701_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_701_53
                                                                              jmp   .Lcall_prolog_α_701_52
.Lcall_prolog_α_701_49: cmp              dl, 80;                              je    .Lcall_prolog_α_701_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_701_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_701_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_701_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_701_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_701_51
                                                                              jmp   .Lcall_prolog_α_701_52
.Lcall_prolog_α_701_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_701_53
.Lcall_prolog_α_701_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_701_54
.Lcall_prolog_α_701_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_701_54
.Lcall_prolog_α_701_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_701_54: mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n643_call_prolog_α
                                                                              jmp   n631_var_ref_α
n630_call_prolog_β:     mov              r11, 268;                            jmp   n643_call_prolog_α
                        .size            n630_call_prolog_bx, .-n630_call_prolog_bx
                        .type            n631_var_ref_bx, @function
n631_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n632_var_ref_α
                        .size            n631_var_ref_bx, .-n631_var_ref_bx
                        .type            n632_var_ref_bx, @function
n632_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n633_call_prolog_α
                        .size            n632_var_ref_bx, .-n632_var_ref_bx
                        .type            n633_call_prolog_bx, @function
n633_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_call_prolog_α:     mov              r11, 271
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
.Lcall_prolog_α_706_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_706_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_706_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_706_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_56: cmp              al, 72;                              jne   .Lcall_prolog_α_706_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_706_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_41: lea              r9, [rsp + 416]
.Lcall_prolog_α_706_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_706_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_706_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_706_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_58: cmp              al, 72;                              jne   .Lcall_prolog_α_706_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_43: cmp              r8, r9;                              je    .Lcall_prolog_α_706_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_706_44
                                                                              jmp   .Lcall_prolog_α_706_45
.Lcall_prolog_α_706_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_53
                                                                              jmp   .Lcall_prolog_α_706_46
.Lcall_prolog_α_706_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_706_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_706_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_706_51
.Lcall_prolog_α_706_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_47
                                                                              jmp   .Lcall_prolog_α_706_48
.Lcall_prolog_α_706_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_706_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_706_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_706_51
.Lcall_prolog_α_706_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_706_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_706_53
                                                                              jmp   .Lcall_prolog_α_706_52
.Lcall_prolog_α_706_49: cmp              dl, 80;                              je    .Lcall_prolog_α_706_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_706_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_706_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_706_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_706_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_706_51
                                                                              jmp   .Lcall_prolog_α_706_52
.Lcall_prolog_α_706_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_706_53
.Lcall_prolog_α_706_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_706_54
.Lcall_prolog_α_706_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_706_54
.Lcall_prolog_α_706_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_706_54: mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n643_call_prolog_α
                                                                              jmp   n634_var_ref_α
n633_call_prolog_β:     mov              r11, 271;                            jmp   n643_call_prolog_α
                        .size            n633_call_prolog_bx, .-n633_call_prolog_bx
                        .type            n634_var_ref_bx, @function
n634_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n635_var_ref_α
                        .size            n634_var_ref_bx, .-n634_var_ref_bx
                        .type            n635_var_ref_bx, @function
n635_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n636_var_ref_α
                        .size            n635_var_ref_bx, .-n635_var_ref_bx
                        .type            n636_var_ref_bx, @function
n636_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n637_call_prolog_α
                        .size            n636_var_ref_bx, .-n636_var_ref_bx
                        .type            n637_call_prolog_bx, @function
n637_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_call_prolog_α:     mov              r11, 275
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
.Lcall_prolog_α_713_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_713_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_713_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_713_60
.Lcall_prolog_α_713_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_713_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_713_60
.Lcall_prolog_α_713_63: cmp              al, 72;                              jne   .Lcall_prolog_α_713_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_713_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_713_60
.Lcall_prolog_α_713_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_713_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_713_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_713_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_713_80
                                                                              jmp   .Lcall_prolog_α_713_74
.Lcall_prolog_α_713_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_713_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_713_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_713_73
                        lea              r9, [rsp + 320]
.Lcall_prolog_α_713_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_713_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_713_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_64
.Lcall_prolog_α_713_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_713_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_64
.Lcall_prolog_α_713_67: cmp              al, 72;                              jne   .Lcall_prolog_α_713_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_713_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_64
.Lcall_prolog_α_713_65: lea              rcx, [rsp + 336]
.Lcall_prolog_α_713_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_713_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_713_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_68
.Lcall_prolog_α_713_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_713_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_68
.Lcall_prolog_α_713_71: cmp              al, 72;                              jne   .Lcall_prolog_α_713_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_713_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_68
.Lcall_prolog_α_713_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_713_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_713_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_713_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_713_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_713_75
                                                                              jmp   .Lcall_prolog_α_713_72
.Lcall_prolog_α_713_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_713_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_713_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_713_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_713_76
                                                                              jmp   .Lcall_prolog_α_713_72
.Lcall_prolog_α_713_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_713_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_713_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_713_77
.Lcall_prolog_α_713_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_713_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_713_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_713_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_713_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_713_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 320]
.Lcall_prolog_α_713_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_713_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_713_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_81
.Lcall_prolog_α_713_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_713_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_81
.Lcall_prolog_α_713_84: cmp              al, 72;                              jne   .Lcall_prolog_α_713_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_713_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_713_81
.Lcall_prolog_α_713_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_713_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_713_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_713_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_713_85
                                                                              jmp   .Lcall_prolog_α_713_86
.Lcall_prolog_α_713_85: mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_713_87
.Lcall_prolog_α_713_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_713_87: lea              rcx, [rsp + 336]
.Lcall_prolog_α_713_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_713_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_713_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_88
.Lcall_prolog_α_713_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_713_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_88
.Lcall_prolog_α_713_91: cmp              al, 72;                              jne   .Lcall_prolog_α_713_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_713_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_713_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_713_88
.Lcall_prolog_α_713_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_713_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_713_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_713_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_713_92
                                                                              jmp   .Lcall_prolog_α_713_93
.Lcall_prolog_α_713_92: mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_713_94
.Lcall_prolog_α_713_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_713_94: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_713_77
.Lcall_prolog_α_713_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_713_77
.Lcall_prolog_α_713_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_713_77: mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n643_call_prolog_α
                                                                              jmp   n638_var_ref_α
n637_call_prolog_β:     mov              r11, 275;                            jmp   n643_call_prolog_α
                        .size            n637_call_prolog_bx, .-n637_call_prolog_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n639_var_ref_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_var_ref_bx, @function
n639_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n640_var_ref_α
                        .size            n639_var_ref_bx, .-n639_var_ref_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n641_call_proc_staged_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_call_proc_staged_bx, @function
n641_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_proc_staged_α:
                        mov              r11, 279
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_721_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_721_201
.Lcall_proc_staged_α_721_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_721_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_721_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_721_203
.Lcall_proc_staged_α_721_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_721_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_721_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_721_205
.Lcall_proc_staged_α_721_204:
                        mov              edi, 2
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
.Lcall_proc_staged_α_721_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_721_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_721_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_721_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_721_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_721_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_721_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_721_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_721_2
.Lcall_proc_staged_α_721_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_721_2
.Lcall_proc_staged_α_721_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_721_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_721_2
.Lcall_proc_staged_α_721_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_721_2
.Lcall_proc_staged_α_721_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_721_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_721_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lcall_proc_staged_α_721_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n643_call_prolog_α
                                                                              jmp   n642_suspend_α
n641_call_proc_staged_β:
                        mov              r11, 279
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n643_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1568
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n643_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_721_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_721_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_721_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_721_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_721_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n643_call_prolog_α
                                                                              jmp   n642_suspend_α
.Lcall_proc_staged_β_721_0:
                        .quad            .Lcall_proc_staged_β_721_0_s
.Lcall_proc_staged_β_721_0_s:
                        .string          "next_to/3"
                        .size            n641_call_proc_staged_bx, .-n641_call_proc_staged_bx
                        .type            n642_suspend_bx, @function
n642_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_suspend_α:         mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_723_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568];         jmp   rax
.Lsuspend_α_723_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n642_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n642_suspend_β]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   next_to$2F3_γ
n642_suspend_β:         mov              r11, 280;                            jmp   n641_call_proc_staged_β
                        .size            n642_suspend_bx, .-n642_suspend_bx
                        .type            n643_call_prolog_bx, @function
n643_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_prolog_α:     mov              r11, 281
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   next_to$2F3_ω
n643_call_prolog_β:     mov              r11, 281;                            jmp   next_to$2F3_ω
                        .size            n643_call_prolog_bx, .-n643_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_β:
                                                                              jmp   n609_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lnext_to$2F3_α_724_50
                        mov              qword ptr [rsp + 1568], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568];         jmp   rax
.Lnext_to$2F3_α_724_50: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1672]
                        add              rsp, 1696;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1680]
                        add              rsp, 1696;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__my_member$2F2:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
my_member$2F2_α_body:
                        lea              rax, [rip + n733_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        .type            n725_call_prolog_bx, @function
n725_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_call_prolog_α:     mov              r11, 282
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_747_102
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lcall_prolog_α_747_101
.Lcall_prolog_α_747_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_747_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_747_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_747_101
.Lcall_prolog_α_747_100:
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
.Lcall_prolog_α_747_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    my_member$2F2_ω
                                                                              jmp   n726_var_ref_α
n725_call_prolog_β:     mov              r11, 282;                            jmp   my_member$2F2_ω
                        .size            n725_call_prolog_bx, .-n725_call_prolog_bx
                        .type            n726_var_ref_bx, @function
n726_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n727_var_ref_α
                        .size            n726_var_ref_bx, .-n726_var_ref_bx
                        .type            n727_var_ref_bx, @function
n727_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n728_call_prolog_α
                        .size            n727_var_ref_bx, .-n727_var_ref_bx
                        .type            n728_call_prolog_bx, @function
n728_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_call_prolog_α:     mov              r11, 285
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
.Lcall_prolog_α_752_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_752_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_752_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_752_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_56: cmp              al, 72;                              jne   .Lcall_prolog_α_752_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_752_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_41: lea              r9, [rsp + 608]
.Lcall_prolog_α_752_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_752_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_752_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_752_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_58: cmp              al, 72;                              jne   .Lcall_prolog_α_752_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_43: cmp              r8, r9;                              je    .Lcall_prolog_α_752_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_752_44
                                                                              jmp   .Lcall_prolog_α_752_45
.Lcall_prolog_α_752_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_53
                                                                              jmp   .Lcall_prolog_α_752_46
.Lcall_prolog_α_752_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_752_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_752_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_752_51
.Lcall_prolog_α_752_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_47
                                                                              jmp   .Lcall_prolog_α_752_48
.Lcall_prolog_α_752_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_752_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_752_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_752_51
.Lcall_prolog_α_752_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_752_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_752_53
                                                                              jmp   .Lcall_prolog_α_752_52
.Lcall_prolog_α_752_49: cmp              dl, 80;                              je    .Lcall_prolog_α_752_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_752_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_752_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_752_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_752_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_752_51
                                                                              jmp   .Lcall_prolog_α_752_52
.Lcall_prolog_α_752_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_752_53
.Lcall_prolog_α_752_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_752_54
.Lcall_prolog_α_752_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_752_54
.Lcall_prolog_α_752_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_752_54: mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n734_call_prolog_α
                                                                              jmp   n729_var_ref_α
n728_call_prolog_β:     mov              r11, 285;                            jmp   n734_call_prolog_α
                        .size            n728_call_prolog_bx, .-n728_call_prolog_bx
                        .type            n729_var_ref_bx, @function
n729_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n730_var_ref_α
                        .size            n729_var_ref_bx, .-n729_var_ref_bx
                        .type            n730_var_ref_bx, @function
n730_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n731_var_ref_α
                        .size            n730_var_ref_bx, .-n730_var_ref_bx
                        .type            n731_var_ref_bx, @function
n731_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n732_call_prolog_α
                        .size            n731_var_ref_bx, .-n731_var_ref_bx
                        .type            n732_call_prolog_bx, @function
n732_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_call_prolog_α:     mov              r11, 289
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
.Lcall_prolog_α_759_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_759_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_759_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_759_60
.Lcall_prolog_α_759_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_759_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_759_60
.Lcall_prolog_α_759_63: cmp              al, 72;                              jne   .Lcall_prolog_α_759_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_759_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_759_60
.Lcall_prolog_α_759_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_759_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_759_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_759_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_759_80
                                                                              jmp   .Lcall_prolog_α_759_74
.Lcall_prolog_α_759_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_759_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_759_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_759_73
                        lea              r9, [rsp + 512]
.Lcall_prolog_α_759_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_759_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_759_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_64
.Lcall_prolog_α_759_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_759_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_64
.Lcall_prolog_α_759_67: cmp              al, 72;                              jne   .Lcall_prolog_α_759_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_759_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_64
.Lcall_prolog_α_759_65: lea              rcx, [rsp + 528]
.Lcall_prolog_α_759_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_759_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_759_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_68
.Lcall_prolog_α_759_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_759_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_68
.Lcall_prolog_α_759_71: cmp              al, 72;                              jne   .Lcall_prolog_α_759_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_759_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_68
.Lcall_prolog_α_759_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_759_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_759_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_759_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_759_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_759_75
                                                                              jmp   .Lcall_prolog_α_759_72
.Lcall_prolog_α_759_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_759_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_759_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_759_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_759_76
                                                                              jmp   .Lcall_prolog_α_759_72
.Lcall_prolog_α_759_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_759_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_759_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_759_77
.Lcall_prolog_α_759_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_759_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_759_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_759_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_759_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_759_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 512]
.Lcall_prolog_α_759_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_759_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_759_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_81
.Lcall_prolog_α_759_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_759_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_81
.Lcall_prolog_α_759_84: cmp              al, 72;                              jne   .Lcall_prolog_α_759_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_759_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_759_81
.Lcall_prolog_α_759_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_759_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_759_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_759_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_759_85
                                                                              jmp   .Lcall_prolog_α_759_86
.Lcall_prolog_α_759_85: mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_759_87
.Lcall_prolog_α_759_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_759_87: lea              rcx, [rsp + 528]
.Lcall_prolog_α_759_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_759_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_759_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_88
.Lcall_prolog_α_759_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_759_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_88
.Lcall_prolog_α_759_91: cmp              al, 72;                              jne   .Lcall_prolog_α_759_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_759_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_759_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_759_88
.Lcall_prolog_α_759_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_759_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_759_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_759_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_759_92
                                                                              jmp   .Lcall_prolog_α_759_93
.Lcall_prolog_α_759_92: mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_759_94
.Lcall_prolog_α_759_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_759_94: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_759_77
.Lcall_prolog_α_759_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_759_77
.Lcall_prolog_α_759_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_759_77: mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n734_call_prolog_α
                                                                              jmp   n733_suspend_α
n732_call_prolog_β:     mov              r11, 289;                            jmp   n734_call_prolog_α
                        .size            n732_call_prolog_bx, .-n732_call_prolog_bx
                        .type            n733_suspend_bx, @function
n733_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_suspend_α:         mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_761_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lsuspend_α_761_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n733_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n733_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   my_member$2F2_γ
n733_suspend_β:         mov              r11, 290;                            jmp   n734_call_prolog_α
                        .size            n733_suspend_bx, .-n733_suspend_bx
                        .type            n734_call_prolog_bx, @function
n734_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_call_prolog_α:     mov              r11, 291
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    my_member$2F2_ω
                                                                              jmp   n735_var_ref_α
n734_call_prolog_β:     mov              r11, 291;                            jmp   my_member$2F2_ω
                        .size            n734_call_prolog_bx, .-n734_call_prolog_bx
                        .type            n735_var_ref_bx, @function
n735_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_var_ref_α:         mov              r11, 292
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n736_var_ref_α
                        .size            n735_var_ref_bx, .-n735_var_ref_bx
                        .type            n736_var_ref_bx, @function
n736_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n737_call_prolog_α
                        .size            n736_var_ref_bx, .-n736_var_ref_bx
                        .type            n737_call_prolog_bx, @function
n737_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_call_prolog_α:     mov              r11, 294
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lcall_prolog_α_767_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_767_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_767_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_767_40
.Lcall_prolog_α_767_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_767_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_767_40
.Lcall_prolog_α_767_56: cmp              al, 72;                              jne   .Lcall_prolog_α_767_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_767_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_767_40
.Lcall_prolog_α_767_41: lea              r9, [rsp + 368]
.Lcall_prolog_α_767_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_767_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_767_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_767_42
.Lcall_prolog_α_767_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_767_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_767_42
.Lcall_prolog_α_767_58: cmp              al, 72;                              jne   .Lcall_prolog_α_767_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_767_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_767_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_767_42
.Lcall_prolog_α_767_43: cmp              r8, r9;                              je    .Lcall_prolog_α_767_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_767_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_767_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_767_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_767_44
                                                                              jmp   .Lcall_prolog_α_767_45
.Lcall_prolog_α_767_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_767_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_767_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_767_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_767_53
                                                                              jmp   .Lcall_prolog_α_767_46
.Lcall_prolog_α_767_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_767_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_767_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_767_51
.Lcall_prolog_α_767_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_767_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_767_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_767_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_767_47
                                                                              jmp   .Lcall_prolog_α_767_48
.Lcall_prolog_α_767_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_767_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_767_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_767_51
.Lcall_prolog_α_767_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_767_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_767_53
                                                                              jmp   .Lcall_prolog_α_767_52
.Lcall_prolog_α_767_49: cmp              dl, 80;                              je    .Lcall_prolog_α_767_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_767_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_767_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_767_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_767_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_767_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_767_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_767_51
                                                                              jmp   .Lcall_prolog_α_767_52
.Lcall_prolog_α_767_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_767_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_767_53
.Lcall_prolog_α_767_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_767_54
.Lcall_prolog_α_767_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_767_54
.Lcall_prolog_α_767_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_767_54: mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n746_call_prolog_α
                                                                              jmp   n738_var_ref_α
n737_call_prolog_β:     mov              r11, 294;                            jmp   n746_call_prolog_α
                        .size            n737_call_prolog_bx, .-n737_call_prolog_bx
                        .type            n738_var_ref_bx, @function
n738_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n739_var_ref_α
                        .size            n738_var_ref_bx, .-n738_var_ref_bx
                        .type            n739_var_ref_bx, @function
n739_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n740_var_ref_α
                        .size            n739_var_ref_bx, .-n739_var_ref_bx
                        .type            n740_var_ref_bx, @function
n740_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n741_call_prolog_α
                        .size            n740_var_ref_bx, .-n740_var_ref_bx
                        .type            n741_call_prolog_bx, @function
n741_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_prolog_α:     mov              r11, 298
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lcall_prolog_α_774_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_774_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_774_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_774_60
.Lcall_prolog_α_774_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_774_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_774_60
.Lcall_prolog_α_774_63: cmp              al, 72;                              jne   .Lcall_prolog_α_774_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_774_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_774_60
.Lcall_prolog_α_774_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_774_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_774_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_774_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_774_80
                                                                              jmp   .Lcall_prolog_α_774_74
.Lcall_prolog_α_774_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_774_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_774_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_774_73
                        lea              r9, [rsp + 272]
.Lcall_prolog_α_774_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_774_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_774_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_64
.Lcall_prolog_α_774_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_774_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_64
.Lcall_prolog_α_774_67: cmp              al, 72;                              jne   .Lcall_prolog_α_774_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_774_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_64
.Lcall_prolog_α_774_65: lea              rcx, [rsp + 288]
.Lcall_prolog_α_774_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_774_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_774_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_68
.Lcall_prolog_α_774_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_774_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_68
.Lcall_prolog_α_774_71: cmp              al, 72;                              jne   .Lcall_prolog_α_774_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_774_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_68
.Lcall_prolog_α_774_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_774_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_774_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_774_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_774_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_774_75
                                                                              jmp   .Lcall_prolog_α_774_72
.Lcall_prolog_α_774_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_774_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_774_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_774_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_774_76
                                                                              jmp   .Lcall_prolog_α_774_72
.Lcall_prolog_α_774_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_774_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_774_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_774_77
.Lcall_prolog_α_774_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_774_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_774_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_774_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_774_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_774_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 272]
.Lcall_prolog_α_774_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_774_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_774_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_81
.Lcall_prolog_α_774_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_774_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_81
.Lcall_prolog_α_774_84: cmp              al, 72;                              jne   .Lcall_prolog_α_774_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_774_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_774_81
.Lcall_prolog_α_774_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_774_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_774_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_774_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_774_85
                                                                              jmp   .Lcall_prolog_α_774_86
.Lcall_prolog_α_774_85: mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_774_87
.Lcall_prolog_α_774_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_774_87: lea              rcx, [rsp + 288]
.Lcall_prolog_α_774_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_774_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_774_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_88
.Lcall_prolog_α_774_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_774_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_88
.Lcall_prolog_α_774_91: cmp              al, 72;                              jne   .Lcall_prolog_α_774_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_774_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_774_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_774_88
.Lcall_prolog_α_774_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_774_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_774_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_774_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_774_92
                                                                              jmp   .Lcall_prolog_α_774_93
.Lcall_prolog_α_774_92: mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_774_94
.Lcall_prolog_α_774_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_774_94: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_774_77
.Lcall_prolog_α_774_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_774_77
.Lcall_prolog_α_774_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_774_77: mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n746_call_prolog_α
                                                                              jmp   n742_var_ref_α
n741_call_prolog_β:     mov              r11, 298;                            jmp   n746_call_prolog_α
                        .size            n741_call_prolog_bx, .-n741_call_prolog_bx
                        .type            n742_var_ref_bx, @function
n742_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n743_var_ref_α
                        .size            n742_var_ref_bx, .-n742_var_ref_bx
                        .type            n743_var_ref_bx, @function
n743_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n744_call_proc_staged_α
                        .size            n743_var_ref_bx, .-n743_var_ref_bx
                        .type            n744_call_proc_staged_bx, @function
n744_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        mov              r11, 301
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_780_201
.Lcall_proc_staged_α_780_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_780_203
.Lcall_proc_staged_α_780_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_780_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_780_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_780_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_780_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 168], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_780_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_780_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_780_29
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
.Lcall_proc_staged_α_780_29:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n746_call_prolog_α
                                                                              jmp   n745_suspend_α
n744_call_proc_staged_β:
                        mov              r11, 301
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n746_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
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
                        test             rax, rax;                            je    n746_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_780_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_780_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_780_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n746_call_prolog_α
                                                                              jmp   n745_suspend_α
.Lcall_proc_staged_β_780_0:
                        .quad            .Lcall_proc_staged_β_780_0_s
.Lcall_proc_staged_β_780_0_s:
                        .string          "my_member/2"
                        .size            n744_call_proc_staged_bx, .-n744_call_proc_staged_bx
                        .type            n745_suspend_bx, @function
n745_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_suspend_α:         mov              r11, 302
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_782_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lsuspend_α_782_61:     mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n745_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n745_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   my_member$2F2_γ
n745_suspend_β:         mov              r11, 302;                            jmp   n744_call_proc_staged_β
                        .size            n745_suspend_bx, .-n745_suspend_bx
                        .type            n746_call_prolog_bx, @function
n746_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_call_prolog_α:     mov              r11, 303
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
                        cmp              al, 104;                             je    my_member$2F2_ω
                                                                              jmp   my_member$2F2_ω
n746_call_prolog_β:     mov              r11, 303;                            jmp   my_member$2F2_ω
                        .size            n746_call_prolog_bx, .-n746_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_β:
                                                                              jmp   n733_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lmy_member$2F2_α_783_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lmy_member$2F2_α_783_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__houses$2F1:
                        sub              rsp, 2256
                        mov              qword ptr [rsp + 2232], rcx
                        mov              qword ptr [rsp + 2240], rdx
                        mov              qword ptr [rsp + 2248], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2224
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 26
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
houses$2F1_α_body:
                        .type            n784_call_prolog_bx, @function
n784_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_call_prolog_α:     mov              r11, 304
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_836_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lcall_prolog_α_836_101
.Lcall_prolog_α_836_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_836_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_836_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_836_101
.Lcall_prolog_α_836_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_836_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n785_var_ref_α
n784_call_prolog_β:     mov              r11, 304;                            jmp   houses$2F1_ω
                        .size            n784_call_prolog_bx, .-n784_call_prolog_bx
                        .type            n785_var_ref_bx, @function
n785_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n786_lit_string_α
                        .size            n785_var_ref_bx, .-n785_var_ref_bx
                        .type            n786_lit_string_bx, @function
n786_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n787_lit_string_α
.Llit_string_α_839_0:   .quad            .Llit_string_α_839_0_s
.Llit_string_α_839_0_s: .string          "."
                        .size            n786_lit_string_bx, .-n786_lit_string_bx
                        .type            n787_lit_string_bx, @function
n787_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_840_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n788_var_ref_α
.Llit_string_α_840_0:   .quad            .Llit_string_α_840_0_s
.Llit_string_α_840_0_s: .string          "house"
                        .size            n787_lit_string_bx, .-n787_lit_string_bx
                        .type            n788_var_ref_bx, @function
n788_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n789_var_ref_α
                        .size            n788_var_ref_bx, .-n788_var_ref_bx
                        .type            n789_var_ref_bx, @function
n789_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2144]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n790_var_ref_α
                        .size            n789_var_ref_bx, .-n789_var_ref_bx
                        .type            n790_var_ref_bx, @function
n790_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n791_var_ref_α
                        .size            n790_var_ref_bx, .-n790_var_ref_bx
                        .type            n791_var_ref_bx, @function
n791_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n792_var_ref_α
                        .size            n791_var_ref_bx, .-n791_var_ref_bx
                        .type            n792_var_ref_bx, @function
n792_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2192]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n793_call_prolog_α
                        .size            n792_var_ref_bx, .-n792_var_ref_bx
                        .type            n793_call_prolog_bx, @function
n793_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_call_prolog_α:     mov              r11, 313
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n794_lit_string_α
n793_call_prolog_β:     mov              r11, 313;                            jmp   houses$2F1_ω
                        .size            n793_call_prolog_bx, .-n793_call_prolog_bx
                        .type            n794_lit_string_bx, @function
n794_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_852_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n795_lit_string_α
.Llit_string_α_852_0:   .quad            .Llit_string_α_852_0_s
.Llit_string_α_852_0_s: .string          "."
                        .size            n794_lit_string_bx, .-n794_lit_string_bx
                        .type            n795_lit_string_bx, @function
n795_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_853_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n796_var_ref_α
.Llit_string_α_853_0:   .quad            .Llit_string_α_853_0_s
.Llit_string_α_853_0_s: .string          "house"
                        .size            n795_lit_string_bx, .-n795_lit_string_bx
                        .type            n796_var_ref_bx, @function
n796_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2048]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n797_var_ref_α
                        .size            n796_var_ref_bx, .-n796_var_ref_bx
                        .type            n797_var_ref_bx, @function
n797_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2064]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n798_var_ref_α
                        .size            n797_var_ref_bx, .-n797_var_ref_bx
                        .type            n798_var_ref_bx, @function
n798_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2080]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n799_var_ref_α
                        .size            n798_var_ref_bx, .-n798_var_ref_bx
                        .type            n799_var_ref_bx, @function
n799_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n800_var_ref_α
                        .size            n799_var_ref_bx, .-n799_var_ref_bx
                        .type            n800_var_ref_bx, @function
n800_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n801_call_prolog_α
                        .size            n800_var_ref_bx, .-n800_var_ref_bx
                        .type            n801_call_prolog_bx, @function
n801_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_call_prolog_α:     mov              r11, 321
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n802_lit_string_α
n801_call_prolog_β:     mov              r11, 321;                            jmp   houses$2F1_ω
                        .size            n801_call_prolog_bx, .-n801_call_prolog_bx
                        .type            n802_lit_string_bx, @function
n802_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_865_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n803_lit_string_α
.Llit_string_α_865_0:   .quad            .Llit_string_α_865_0_s
.Llit_string_α_865_0_s: .string          "."
                        .size            n802_lit_string_bx, .-n802_lit_string_bx
                        .type            n803_lit_string_bx, @function
n803_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n804_var_ref_α
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "house"
                        .size            n803_lit_string_bx, .-n803_lit_string_bx
                        .type            n804_var_ref_bx, @function
n804_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n805_var_ref_α
                        .size            n804_var_ref_bx, .-n804_var_ref_bx
                        .type            n805_var_ref_bx, @function
n805_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1984]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n806_var_ref_α
                        .size            n805_var_ref_bx, .-n805_var_ref_bx
                        .type            n806_var_ref_bx, @function
n806_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2000]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n807_var_ref_α
                        .size            n806_var_ref_bx, .-n806_var_ref_bx
                        .type            n807_var_ref_bx, @function
n807_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2016]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n808_var_ref_α
                        .size            n807_var_ref_bx, .-n807_var_ref_bx
                        .type            n808_var_ref_bx, @function
n808_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2032]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n809_call_prolog_α
                        .size            n808_var_ref_bx, .-n808_var_ref_bx
                        .type            n809_call_prolog_bx, @function
n809_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_call_prolog_α:     mov              r11, 329
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 6
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n810_lit_string_α
n809_call_prolog_β:     mov              r11, 329;                            jmp   houses$2F1_ω
                        .size            n809_call_prolog_bx, .-n809_call_prolog_bx
                        .type            n810_lit_string_bx, @function
n810_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_878_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n811_lit_string_α
.Llit_string_α_878_0:   .quad            .Llit_string_α_878_0_s
.Llit_string_α_878_0_s: .string          "."
                        .size            n810_lit_string_bx, .-n810_lit_string_bx
                        .type            n811_lit_string_bx, @function
n811_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_879_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n812_var_ref_α
.Llit_string_α_879_0:   .quad            .Llit_string_α_879_0_s
.Llit_string_α_879_0_s: .string          "house"
                        .size            n811_lit_string_bx, .-n811_lit_string_bx
                        .type            n812_var_ref_bx, @function
n812_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1888]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n813_var_ref_α
                        .size            n812_var_ref_bx, .-n812_var_ref_bx
                        .type            n813_var_ref_bx, @function
n813_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1904]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n814_var_ref_α
                        .size            n813_var_ref_bx, .-n813_var_ref_bx
                        .type            n814_var_ref_bx, @function
n814_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1920]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n815_var_ref_α
                        .size            n814_var_ref_bx, .-n814_var_ref_bx
                        .type            n815_var_ref_bx, @function
n815_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1936]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n816_var_ref_α
                        .size            n815_var_ref_bx, .-n815_var_ref_bx
                        .type            n816_var_ref_bx, @function
n816_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1952]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n817_call_prolog_α
                        .size            n816_var_ref_bx, .-n816_var_ref_bx
                        .type            n817_call_prolog_bx, @function
n817_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_call_prolog_α:     mov              r11, 337
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n818_lit_string_α
n817_call_prolog_β:     mov              r11, 337;                            jmp   houses$2F1_ω
                        .size            n817_call_prolog_bx, .-n817_call_prolog_bx
                        .type            n818_lit_string_bx, @function
n818_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:      mov              r11, 338
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n819_lit_string_α
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "."
                        .size            n818_lit_string_bx, .-n818_lit_string_bx
                        .type            n819_lit_string_bx, @function
n819_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_892_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n820_var_ref_α
.Llit_string_α_892_0:   .quad            .Llit_string_α_892_0_s
.Llit_string_α_892_0_s: .string          "house"
                        .size            n819_lit_string_bx, .-n819_lit_string_bx
                        .type            n820_var_ref_bx, @function
n820_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n820_var_ref_α:         mov              r11, 340
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1808]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n821_var_ref_α
                        .size            n820_var_ref_bx, .-n820_var_ref_bx
                        .type            n821_var_ref_bx, @function
n821_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n821_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n822_var_ref_α
                        .size            n821_var_ref_bx, .-n821_var_ref_bx
                        .type            n822_var_ref_bx, @function
n822_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1840]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n823_var_ref_α
                        .size            n822_var_ref_bx, .-n822_var_ref_bx
                        .type            n823_var_ref_bx, @function
n823_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n823_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1856]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n824_var_ref_α
                        .size            n823_var_ref_bx, .-n823_var_ref_bx
                        .type            n824_var_ref_bx, @function
n824_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n824_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1872]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n825_call_prolog_α
                        .size            n824_var_ref_bx, .-n824_var_ref_bx
                        .type            n825_call_prolog_bx, @function
n825_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n825_call_prolog_α:     mov              r11, 345
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n826_lit_string_α
n825_call_prolog_β:     mov              r11, 345;                            jmp   houses$2F1_ω
                        .size            n825_call_prolog_bx, .-n825_call_prolog_bx
                        .type            n826_lit_string_bx, @function
n826_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_904_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n827_call_prolog_α
.Llit_string_α_904_0:   .quad            .Llit_string_α_904_0_s
.Llit_string_α_904_0_s: .string          "[]"
                        .size            n826_lit_string_bx, .-n826_lit_string_bx
                        .type            n827_call_prolog_bx, @function
n827_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n827_call_prolog_α:     mov              r11, 347
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 296]
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n828_call_prolog_α
n827_call_prolog_β:     mov              r11, 347;                            jmp   houses$2F1_ω
                        .size            n827_call_prolog_bx, .-n827_call_prolog_bx
                        .type            n828_call_prolog_bx, @function
n828_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_call_prolog_α:     mov              r11, 348
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n829_call_prolog_α
n828_call_prolog_β:     mov              r11, 348;                            jmp   houses$2F1_ω
                        .size            n828_call_prolog_bx, .-n828_call_prolog_bx
                        .type            n829_call_prolog_bx, @function
n829_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_call_prolog_α:     mov              r11, 349
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n830_call_prolog_α
n829_call_prolog_β:     mov              r11, 349;                            jmp   houses$2F1_ω
                        .size            n829_call_prolog_bx, .-n829_call_prolog_bx
                        .type            n830_call_prolog_bx, @function
n830_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_call_prolog_α:     mov              r11, 350
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n831_call_prolog_α
n830_call_prolog_β:     mov              r11, 350;                            jmp   houses$2F1_ω
                        .size            n830_call_prolog_bx, .-n830_call_prolog_bx
                        .type            n831_call_prolog_bx, @function
n831_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_call_prolog_α:     mov              r11, 351
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1576]
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
                        cmp              al, 104;                             je    n835_call_prolog_α
                                                                              jmp   n832_call_prolog_α
n831_call_prolog_β:     mov              r11, 351;                            jmp   n835_call_prolog_α
                        .size            n831_call_prolog_bx, .-n831_call_prolog_bx
                        .type            n832_call_prolog_bx, @function
n832_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_call_prolog_α:     mov              r11, 352
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lcall_prolog_α_910_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_910_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_910_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_910_40
.Lcall_prolog_α_910_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_910_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_910_40
.Lcall_prolog_α_910_56: cmp              al, 72;                              jne   .Lcall_prolog_α_910_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_910_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_910_40
.Lcall_prolog_α_910_41: lea              r9, [rsp + 160]
.Lcall_prolog_α_910_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_910_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_910_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_910_42
.Lcall_prolog_α_910_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_910_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_910_42
.Lcall_prolog_α_910_58: cmp              al, 72;                              jne   .Lcall_prolog_α_910_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_910_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_910_42
.Lcall_prolog_α_910_43: cmp              r8, r9;                              je    .Lcall_prolog_α_910_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_910_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_910_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_910_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_910_44
                                                                              jmp   .Lcall_prolog_α_910_45
.Lcall_prolog_α_910_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_910_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_910_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_910_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_910_53
                                                                              jmp   .Lcall_prolog_α_910_46
.Lcall_prolog_α_910_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_910_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_910_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_910_51
.Lcall_prolog_α_910_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_910_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_910_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_910_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_910_47
                                                                              jmp   .Lcall_prolog_α_910_48
.Lcall_prolog_α_910_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_910_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_910_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_910_51
.Lcall_prolog_α_910_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_910_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_910_53
                                                                              jmp   .Lcall_prolog_α_910_52
.Lcall_prolog_α_910_49: cmp              dl, 80;                              je    .Lcall_prolog_α_910_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_910_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_910_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_910_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_910_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_910_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_910_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_910_51
                                                                              jmp   .Lcall_prolog_α_910_52
.Lcall_prolog_α_910_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_910_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_910_53
.Lcall_prolog_α_910_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_910_54
.Lcall_prolog_α_910_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_910_54
.Lcall_prolog_α_910_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_910_54: mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n835_call_prolog_α
                                                                              jmp   n833_move_label_α
n832_call_prolog_β:     mov              r11, 352;                            jmp   n835_call_prolog_α
                        .size            n832_call_prolog_bx, .-n832_call_prolog_bx
                        .type            n833_move_label_bx, @function
n833_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n833_move_label_α:      mov              r11, 353
                        lea              rax, [rip + n835_call_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   houses$2F1_γ
                        .size            n833_move_label_bx, .-n833_move_label_bx
                        .type            n834_disjunction_bx, @function
n834_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n834_disjunction_α:     mov              r11, 354
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    houses$2F1_ω
                                                                              jmp   rax
n834_disjunction_β:     mov              r11, 354;                            jmp   houses$2F1_ω
                        .size            n834_disjunction_bx, .-n834_disjunction_bx
                        .type            n835_call_prolog_bx, @function
n835_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n835_call_prolog_α:     mov              r11, 355
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   houses$2F1_ω
n835_call_prolog_β:     mov              r11, 355;                            jmp   houses$2F1_ω
                        .size            n835_call_prolog_bx, .-n835_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_β:
                                                                              jmp   n834_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2232]
                        add              rsp, 2256;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2240]
                        add              rsp, 2256;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lhouses$2F1_α_916_2]
                        lea              rdx, [rip + .Lhouses$2F1_α_916_3];   jmp   FN__houses$2F1
.Lhouses$2F1_α_916_2:   pop              r12
                        pop              r12;                                 jmp   r12
.Lhouses$2F1_α_916_3:   pop              r12
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
                        .type            n917_var_ref_bx, @function
n917_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n918_call_proc_staged_α
                        .size            n917_var_ref_bx, .-n917_var_ref_bx
                        .type            n918_call_proc_staged_bx, @function
n918_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_call_proc_staged_α:
                        mov              r11, 357
                        mov              qword ptr [rsp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_929_200
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_929_201
.Lcall_proc_staged_α_929_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_929_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_929_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_929_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_929_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_929_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 216], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_929_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_929_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_929_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_929_29
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
.Lcall_proc_staged_α_929_29:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n923_lit_string_α
                                                                              jmp   n919_var_α
n918_call_proc_staged_β:
                        mov              r11, 357
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 208], 0
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n923_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              ecx, 32
                        mov              r8d, 6848
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n923_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_929_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_929_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_929_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n923_lit_string_α
                                                                              jmp   n919_var_α
.Lcall_proc_staged_β_929_0:
                        .quad            .Lcall_proc_staged_β_929_0_s
.Lcall_proc_staged_β_929_0_s:
                        .string          "zebra/1"
                        .size            n918_call_proc_staged_bx, .-n918_call_proc_staged_bx
                        .type            n919_var_bx, @function
n919_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_var_α:             mov              r11, 358
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 168], rax;          jmp   n920_call_prolog_α
                        .size            n919_var_bx, .-n919_var_bx
                        .type            n920_call_prolog_bx, @function
n920_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_call_prolog_α:     mov              r11, 359
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn933: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn933]
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
                        cmp              al, 104;                             je    n918_call_proc_staged_β
                                                                              jmp   n921_lit_string_α
n920_call_prolog_β:     mov              r11, 359;                            jmp   n918_call_proc_staged_β
                        .size            n920_call_prolog_bx, .-n920_call_prolog_bx
                        .type            n921_lit_string_bx, @function
n921_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_934_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n922_call_prolog_α
.Llit_string_α_934_0:   .quad            .Llit_string_α_934_0_s
.Llit_string_α_934_0_s: .string          ""
                        .size            n921_lit_string_bx, .-n921_lit_string_bx
                        .type            n922_call_prolog_bx, @function
n922_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_call_prolog_α:     mov              r11, 361
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn936: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn936]
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
                        cmp              al, 104;                             je    n918_call_proc_staged_β
                                                                              jmp   main_γ
n922_call_prolog_β:     mov              r11, 361;                            jmp   n918_call_proc_staged_β
                        .size            n922_call_prolog_bx, .-n922_call_prolog_bx
                        .type            n923_lit_string_bx, @function
n923_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_937_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n924_lit_string_α
.Llit_string_α_937_0:   .quad            .Llit_string_α_937_0_s
.Llit_string_α_937_0_s: .string          "user_error"
                        .size            n923_lit_string_bx, .-n923_lit_string_bx
                        .type            n924_lit_string_bx, @function
n924_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:      mov              r11, 363
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_938_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n925_call_prolog_α
.Llit_string_α_938_0:   .quad            .Llit_string_α_938_0_s
.Llit_string_α_938_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n924_lit_string_bx, .-n924_lit_string_bx
                        .type            n925_call_prolog_bx, @function
n925_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_call_prolog_α:     mov              r11, 364
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn940: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn940]
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
n925_call_prolog_β:     mov              r11, 364;                            jmp   main_ω
                        .size            n925_call_prolog_bx, .-n925_call_prolog_bx
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
.Lstartup_pname0:       .string          "zebra/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__zebra$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            8112
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "right_of/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__right_of$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1136
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "next_to/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__next_to$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1648
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "my_member/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__my_member$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "houses/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__houses$2F1
                        .quad            houses$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
