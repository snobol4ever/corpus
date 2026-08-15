                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setpos_α
proc_setpos_α:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_setpos_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1_var_α
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          "p := "
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn19:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    n6_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_integer_α
n2_call_builtin_icon_β:                                                       jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n4_call_builtin_icon_α
.Lx20_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn22:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n6_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_call_builtin_icon_α
n4_call_builtin_icon_β:                                                       jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn24:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n6_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_α
n5_call_builtin_icon_β:                                                       jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n9_var_α
n6_disjunction_as:      mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx26_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n13_call_proc_staged_α
.Lx26_0:                cmp              eax, 1;                              jne   .Lx26_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax;           jmp   n13_call_proc_staged_α
.Lx26_1:                                                                      jmp   n13_call_proc_staged_α
n6_disjunction_β:       mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n13_call_proc_staged_α
                                                                              jmp   n13_call_proc_staged_α
n6_disjunction_af:      add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n7_lit_string_α
                                                                              jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 7
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n8_call_builtin_icon_α
n7_lit_string_β:                                                              jmp   n13_call_proc_staged_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn29:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n13_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_as
n8_call_builtin_icon_β:                                                       jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n10_keyword_assign_α
n9_var_β:                                                                     jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_keyword_assign_α:   mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n6_disjunction_af
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 7
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n12_call_builtin_icon_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn35:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n13_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_as
n12_call_builtin_icon_β:
                                                                              jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α: call             proc_ws_dcα;                         jmp   .Lx37_2
.Lx37_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx37_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx37_29:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n14_return_α
                                                                              jmp   n14_return_α
n13_call_proc_staged_β:                                                       jmp   n14_return_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n14_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_setpos_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_β:
                                                                              jmp   proc_setpos_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx39_2]
                        lea              rdx, [rip + .Lx39_3];                jmp   proc_setpos_α
.Lx39_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx39_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setsubj_α
proc_setsubj_α:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_setsubj_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n41_var_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "s := "
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn59:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    n46_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_lit_integer_α
n42_call_builtin_icon_β:
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n44_call_builtin_icon_α
.Lx60_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn62:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n46_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_call_builtin_icon_α
n44_call_builtin_icon_β:
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn64:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n46_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n49_var_α
n46_disjunction_as:     mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx66_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n53_call_proc_staged_α
.Lx66_0:                cmp              eax, 1;                              jne   .Lx66_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax;           jmp   n53_call_proc_staged_α
.Lx66_1:                                                                      jmp   n53_call_proc_staged_α
n46_disjunction_β:      mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n53_call_proc_staged_α
                                                                              jmp   n53_call_proc_staged_α
n46_disjunction_af:     add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n47_lit_string_α
                                                                              jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 7
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n48_call_builtin_icon_α
n47_lit_string_β:                                                             jmp   n53_call_proc_staged_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn69:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n53_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_as
n48_call_builtin_icon_β:
                                                                              jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n50_keyword_assign_α
n49_var_β:                                                                    jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_assign_α:   mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n46_disjunction_af
                        mov              qword ptr [rsp + 160], 2
                        mov              qword ptr [rsp + 168], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 7
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n52_call_builtin_icon_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn75:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n53_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_disjunction_as
n52_call_builtin_icon_β:
                                                                              jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α: call             proc_ws_dcα;                         jmp   .Lx77_2
.Lx77_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx77_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx77_29:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n54_return_α
                                                                              jmp   n54_return_α
n53_call_proc_staged_β:                                                       jmp   n54_return_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_setsubj_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_β:
                                                                              jmp   proc_setsubj_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx79_2]
                        lea              rdx, [rip + .Lx79_3];                jmp   proc_setsubj_α
.Lx79_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx79_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ws_α
proc_ws_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_ws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 7
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n81_keyword_icon_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "  &pos="
#-----------------------------------------------------------------------------------------------------------------------
n81_keyword_icon_α:     mov              qword ptr [rsp + 176], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 184], rax;          jmp   n82_call_builtin_icon_α
n81_keyword_icon_β:                                                           jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn91:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n87_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_lit_string_α
n82_call_builtin_icon_β:
                                                                              jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 12
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n84_keyword_icon_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "   &subject="
#-----------------------------------------------------------------------------------------------------------------------
n84_keyword_icon_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n85_call_builtin_icon_α
n84_keyword_icon_β:                                                           jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn95:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n87_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_call_builtin_icon_α
n85_call_builtin_icon_β:
                                                                              jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn97:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rsp + 32]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n87_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_return_α
n86_call_builtin_icon_β:
                                                                              jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n87_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_ws_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_β:
                                                                              jmp   proc_ws_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx99_2]
                        lea              rdx, [rip + .Lx99_3];                jmp   proc_ws_α
.Lx99_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx99_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "setpos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_setpos_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_setpos_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "setsubj"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_setsubj_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_setsubj_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ws"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ws_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ws_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 4224
                        mov              qword ptr [rsp + 4200], rcx
                        mov              qword ptr [rsp + 4208], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        call             proc_ws_dcα;                         jmp   .Lx261_2
.Lx261_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx261_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4048]
                        mov              rdx, qword ptr [rsp + 4056]
.Lx261_29:              mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                        cmp              eax, 104;                            je    n101_call_builtin_icon_α
                                                                              jmp   n101_call_builtin_icon_α
n100_call_proc_staged_β:
                                                                              jmp   n101_call_builtin_icon_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn263:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rsp + 4032]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              eax, 104;                            je    n102_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_disjunction_α
n101_call_builtin_icon_β:
                                                                              jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:     mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              dword ptr [rsp + 3552], 0;           jmp   n128_lit_string_α
n102_disjunction_as:    mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 0;                              jne   .Lx265_0
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n103_assign_α
.Lx265_0:               cmp              eax, 1;                              jne   .Lx265_1
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n103_assign_α
.Lx265_1:               cmp              eax, 2;                              jne   .Lx265_2
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n103_assign_α
.Lx265_2:               cmp              eax, 3;                              jne   .Lx265_3
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n103_assign_α
.Lx265_3:                                                                     jmp   n103_assign_α
n102_disjunction_β:     mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 0;                              je    n102_disjunction_af
                        cmp              eax, 1;                              je    n102_disjunction_af
                        cmp              eax, 2;                              je    n102_disjunction_af
                                                                              jmp   n102_disjunction_af
n102_disjunction_af:    add              dword ptr [rsp + 3552], 1
                        mov              eax, dword ptr [rsp + 3552]
                        cmp              eax, 1;                              je    n127_lit_string_α
                        cmp              eax, 2;                              je    n126_lit_string_α
                        cmp              eax, 3;                              je    n125_lit_string_α
                                                                              jmp   n129_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              rax, qword ptr [rsp + 3536]
                        mov              rdx, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rsp + 3520]
                        call             proc_setsubj_dcα;                    jmp   .Lx268_2
.Lx268_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx268_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3472]
                        mov              rdx, qword ptr [rsp + 3480]
.Lx268_29:              mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              eax, 104;                            je    n102_disjunction_β
                                                                              jmp   n105_bound_α
n104_call_proc_staged_β:
                                                                              jmp   n102_disjunction_β
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "setsubj"
#-----------------------------------------------------------------------------------------------------------------------
n105_bound_α:           mov              qword ptr [rsp + 3632], rsp;         jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n107_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_unop_α:            mov              rdi, qword ptr [rsp + 4096]
                        mov              rsi, qword ptr [rsp + 4104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n108_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:  mov              eax, dword ptr [rsp + 3776]
                        cmp              eax, 5;                              je    .Lx275_1
                        cmp              eax, 3;                              jne   .Lx275_0
                        mov              eax, dword ptr [rsp + 3776]
                        cmp              eax, 3;                              jne   .Lx275_0
.Lx275_1:               mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n109_unop_α
.Lx275_0:               lea              rdi, [rsp + 3776]
                        lea              rsi, [rsp + 3776]
                        lea              rdx, [rsp + 3760]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_unop_α:            mov              rdi, qword ptr [rsp + 3760]
                        mov              rsi, qword ptr [rsp + 3768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     mov              qword ptr [rsp + 3808], 3            # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n111_coerce_numeric_α
.Lx277_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n111_coerce_numeric_α:  mov              eax, dword ptr [rsp + 3744]
                        cmp              eax, 5;                              je    .Lx279_1
                        cmp              eax, 3;                              jne   .Lx279_0
                        mov              eax, dword ptr [rsp + 3808]
                        cmp              eax, 3;                              jne   .Lx279_0
.Lx279_1:               mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n112_binop_α
.Lx279_0:               lea              rdi, [rsp + 3744]
                        lea              rsi, [rsp + 3808]
                        lea              rdx, [rsp + 3728]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           mov              eax, dword ptr [rsp + 3728]
                        cmp              eax, 3;                              jne   .Lx280_0
                        mov              rax, qword ptr [rsp + 3736]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rsp + 3712], 3
                        mov              qword ptr [rsp + 3720], rax;         jmp   n113_var_α
.Lx280_0:               mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              rdx, qword ptr [rsp + 3808]
                        mov              rcx, qword ptr [rsp + 3816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n124_unmark_α
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n114_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:            mov              rdi, qword ptr [rsp + 4096]
                        mov              rsi, qword ptr [rsp + 4104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              qword ptr [rsp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n116_coerce_numeric_α
.Lx284_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n116_coerce_numeric_α:  mov              eax, dword ptr [rsp + 3856]
                        cmp              eax, 5;                              je    .Lx286_1
                        cmp              eax, 3;                              jne   .Lx286_0
                        mov              eax, dword ptr [rsp + 3888]
                        cmp              eax, 3;                              jne   .Lx286_0
.Lx286_1:               mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n117_binop_α
.Lx286_0:               lea              rdi, [rsp + 3856]
                        lea              rsi, [rsp + 3888]
                        lea              rdx, [rsp + 3840]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:           mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 3;                              jne   .Lx287_0
                        mov              rax, qword ptr [rsp + 3848]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rsp + 3824], 3
                        mov              qword ptr [rsp + 3832], rax;         jmp   n118_to_α
.Lx287_0:               mov              rdi, qword ptr [rsp + 3840]
                        mov              rsi, qword ptr [rsp + 3848]
                        mov              rdx, qword ptr [rsp + 3888]
                        mov              rcx, qword ptr [rsp + 3896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n124_unmark_α
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_to_α
#-----------------------------------------------------------------------------------------------------------------------
n118_to_α:              mov              rdi, qword ptr [rsp + 3712]
                        mov              rsi, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3712], 3
                        mov              qword ptr [rsp + 3720], rax
                        mov              rdi, qword ptr [rsp + 3824]
                        mov              rsi, qword ptr [rsp + 3832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3824], 3
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3696], rax
.Lx289_0:               mov              rax, qword ptr [rsp + 3696]
                        mov              rcx, qword ptr [rsp + 3832]
                        cmp              rax, rcx;                            jg    n124_unmark_α
                        mov              qword ptr [rsp + 3680], 3
                        mov              qword ptr [rsp + 3688], rax;         jmp   n119_assign_α
n118_to_β:              inc              qword ptr [rsp + 3696];              jmp   .Lx289_0
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 3680]
                        mov              rdx, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n120_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n120_bound_α:           mov              qword ptr [rsp + 3904], rsp;         jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              rsi, [rsp + 4000]
                        call             proc_setpos_dcα;                     jmp   .Lx296_2
.Lx296_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx296_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3952]
                        mov              rdx, qword ptr [rsp + 3960]
.Lx296_29:              mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              eax, 104;                            je    n123_unmark_α
                                                                              jmp   n123_unmark_α
n122_call_proc_staged_β:
                                                                              jmp   n123_unmark_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "setpos"
#-----------------------------------------------------------------------------------------------------------------------
n123_unmark_α:          mov              rsp, qword ptr [rsp + 3904];         jmp   n118_to_β
#-----------------------------------------------------------------------------------------------------------------------
n124_unmark_α:          mov              rsp, qword ptr [rsp + 3632];         jmp   n102_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n102_disjunction_as
n125_lit_string_β:                                                            jmp   n102_disjunction_af
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 5
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n102_disjunction_as
n126_lit_string_β:                                                            jmp   n102_disjunction_af
.Lx302_0:               .quad            .Lx302_0_s
.Lx302_0_s:             .string          "donut"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 3584], 2            # result
                        mov              dword ptr [rsp + 3588], 0
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n102_disjunction_as
n127_lit_string_β:                                                            jmp   n102_disjunction_af
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 3
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n102_disjunction_as
n128_lit_string_β:                                                            jmp   n102_disjunction_af
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn306:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rsp + 3456]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              eax, 104;                            je    n130_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_lit_string_α
n129_call_builtin_icon_β:
                                                                              jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 5
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n131_scan_enter_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n131_scan_enter_α:      mov              rdi, qword ptr [rsp + 3424]
                        mov              rsi, qword ptr [rsp + 3432]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n132_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_ws_dcα;                         jmp   .Lx311_2
.Lx311_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx311_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
.Lx311_29:              mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104;                            je    n133_lit_integer_α
                                                                              jmp   n133_lit_integer_α
n132_call_proc_staged_β:
                                                                              jmp   n133_lit_integer_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 3376], 3            # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n134_keyword_assign_α
.Lx312_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n134_keyword_assign_α:  mov              rdi, qword ptr [rsp + 3376]
                        mov              rsi, qword ptr [rsp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n135_call_proc_staged_α
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n135_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_ws_dcα;                         jmp   .Lx315_2
.Lx315_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx315_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3328]
                        mov              rdx, qword ptr [rsp + 3336]
.Lx315_29:              mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              eax, 104;                            je    n136_lit_string_α
                                                                              jmp   n136_lit_string_α
n135_call_proc_staged_β:
                                                                              jmp   n136_lit_string_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              qword ptr [rsp + 3312], 2            # result
                        mov              dword ptr [rsp + 3316], 5
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n137_scan_enter_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "inner"
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_enter_α:      mov              rdi, qword ptr [rsp + 3312]
                        mov              rsi, qword ptr [rsp + 3320]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_ws_dcα;                         jmp   .Lx320_2
.Lx320_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx320_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
.Lx320_29:              mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              eax, 104;                            je    n139_lit_integer_α
                                                                              jmp   n139_lit_integer_α
n138_call_proc_staged_β:
                                                                              jmp   n139_lit_integer_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              qword ptr [rsp + 3264], 3            # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n140_keyword_assign_α
.Lx321_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n140_keyword_assign_α:  mov              rdi, qword ptr [rsp + 3264]
                        mov              rsi, qword ptr [rsp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n141_call_proc_staged_α
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_ws_dcα;                         jmp   .Lx324_2
.Lx324_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx324_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
.Lx324_29:              mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              eax, 104;                            je    n144_scan_α
                                                                              jmp   n142_conjunction_α
n141_call_proc_staged_β:
                                                                              jmp   n144_scan_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n142_conjunction_α:     mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n143_scan_α
n142_conjunction_β:                                                           jmp   n144_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_α:            mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3176], rax
                        lea              rdi, [rsp + 3136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3136]
                        mov              r14, qword ptr [rsp + 3144]
                        mov              r15, qword ptr [rsp + 3152];         jmp   n145_call_proc_staged_α
n143_scan_β:                                                                  jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n144_scan_α:            lea              rdi, [rsp + 3136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3136]
                        mov              r14, qword ptr [rsp + 3144]
                        mov              r15, qword ptr [rsp + 3152];         jmp   n145_call_proc_staged_α
n144_scan_β:                                                                  jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_ws_dcα;                         jmp   .Lx331_2
.Lx331_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx331_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
.Lx331_29:              mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        cmp              eax, 104;                            je    n148_scan_α
                                                                              jmp   n146_conjunction_α
n145_call_proc_staged_β:
                                                                              jmp   n148_scan_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:     mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n147_scan_α
n146_conjunction_β:                                                           jmp   n148_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n147_scan_α:            mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3008]
                        mov              r14, qword ptr [rsp + 3016]
                        mov              r15, qword ptr [rsp + 3024];         jmp   n149_lit_string_α
n147_scan_β:                                                                  jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_α:            lea              rdi, [rsp + 3008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 3008]
                        mov              r14, qword ptr [rsp + 3016]
                        mov              r15, qword ptr [rsp + 3024];         jmp   n149_lit_string_α
n148_scan_β:                                                                  jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 6
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n150_scan_enter_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_enter_α:      mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              qword ptr [rsp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n152_keyword_assign_α
.Lx340_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n152_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2960]
                        mov              rsi, qword ptr [rsp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n153_lit_integer_α
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n154_assign_α
.Lx342_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              rax, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 5
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n156_keyword_icon_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n156_keyword_icon_α:    mov              qword ptr [rsp + 2864], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2872], rax;         jmp   n157_lit_string_α
n156_keyword_icon_β:                                                          jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 3
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n158_var_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn350:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 104;                            je    n160_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_keyword_icon_α
n159_call_builtin_icon_β:
                                                                              jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_keyword_icon_α:    mov              qword ptr [rsp + 2688], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2696], rax;         jmp   n161_var_α
n160_keyword_icon_β:                                                          jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n162_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n164_lit_string_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 5
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n165_keyword_icon_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n165_keyword_icon_α:    mov              qword ptr [rsp + 2624], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2632], rax;         jmp   n166_lit_string_α
n165_keyword_icon_β:                                                          jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 3
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n167_var_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn362:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rsp + 2528]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              eax, 104;                            je    n169_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_lit_integer_α
n168_call_builtin_icon_β:
                                                                              jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n170_keyword_assign_α
.Lx363_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n170_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n171_lit_integer_α
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              qword ptr [rsp + 2464], 3            # result
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n172_assign_α
.Lx365_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n173_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n173_keyword_icon_α:    mov              qword ptr [rsp + 2400], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2408], rax;         jmp   n174_var_α
n173_keyword_icon_β:                                                          jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n175_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n177_lit_string_α
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n176_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              rax, qword ptr [rsp + 2400]
                        mov              rdx, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 5
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n178_keyword_icon_α
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n178_keyword_icon_α:    mov              qword ptr [rsp + 2336], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2344], rax;         jmp   n179_lit_string_α
n178_keyword_icon_β:                                                          jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n180_var_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn378:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              eax, 104;                            je    n182_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_lit_integer_α
n181_call_builtin_icon_β:
                                                                              jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n183_keyword_assign_α
.Lx379_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n183_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n184_lit_integer_α
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n185_assign_α
.Lx381_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n186_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n186_keyword_icon_α:    mov              qword ptr [rsp + 2112], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2120], rax;         jmp   n187_var_α
n186_keyword_icon_β:                                                          jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              rax, qword ptr [rsp + 2112]
                        mov              rdx, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n189_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n190_lit_string_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 5
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n191_keyword_icon_α
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n191_keyword_icon_α:    mov              qword ptr [rsp + 2048], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2056], rax;         jmp   n192_lit_string_α
n191_keyword_icon_β:                                                          jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 3
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n193_var_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n194_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn394:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104;                            je    n195_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_lit_integer_α
n194_call_builtin_icon_β:
                                                                              jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n196_keyword_assign_α
.Lx395_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n196_keyword_assign_α:  mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n197_lit_integer_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n198_assign_α
.Lx397_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n199_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n199_rev_swap_α:        mov              qword ptr [rsp + 1632], r14          # scan_δ
                        mov              qword ptr [rsp + 1640], r15          # scan_Δ
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rsp + 4080]
                        lea              r8, [rsp + 1600]
                        lea              r9, [rsp + 1632]                     # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_fwd@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 1632]
                        cmp              eax, 104;                            je    n207_lit_string_α
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n200_bound_α
n199_rev_swap_β:        mov              qword ptr [rsp + 1632], r14
                        mov              qword ptr [rsp + 1640], r15          # scan_Δ
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rsp + 4080]
                        lea              r8, [rsp + 1600]
                        lea              r9, [rsp + 1632]                     # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_undo@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 1632];         jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_bound_α:           mov              qword ptr [rsp + 1664], rsp;         jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 5
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n202_keyword_icon_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n202_keyword_icon_α:    mov              qword ptr [rsp + 1824], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 1832], rax;         jmp   n203_lit_string_α
n202_keyword_icon_β:                                                          jmp   n206_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 3
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n204_var_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n205_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn408:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n206_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_unmark_α
n205_call_builtin_icon_β:
                                                                              jmp   n206_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n206_unmark_α:          mov              rsp, qword ptr [rsp + 1664];         jmp   n199_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 5
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n208_keyword_icon_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n208_keyword_icon_α:    mov              qword ptr [rsp + 1520], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 1528], rax;         jmp   n209_lit_string_α
n208_keyword_icon_β:                                                          jmp   n212_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n210_var_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n211_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn417:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n212_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_lit_integer_α
n211_call_builtin_icon_β:
                                                                              jmp   n212_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n213_keyword_assign_α
.Lx418_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n213_keyword_assign_α:  mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n214_lit_integer_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n214_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n215_assign_α
.Lx420_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n216_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n216_rev_swap_α:        mov              qword ptr [rsp + 1104], r14          # scan_δ
                        mov              qword ptr [rsp + 1112], r15          # scan_Δ
                        mov              rdi, 0
                        lea              rsi, [rsp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rsp + 1072]
                        lea              r9, [rsp + 1104]                     # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_fwd@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 1104]
                        cmp              eax, 104;                            je    n224_lit_string_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n217_bound_α
n216_rev_swap_β:        mov              qword ptr [rsp + 1104], r14
                        mov              qword ptr [rsp + 1112], r15          # scan_Δ
                        mov              rdi, 0
                        lea              rsi, [rsp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rsp + 1072]
                        lea              r9, [rsp + 1104]                     # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_undo@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 1104];         jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_bound_α:           mov              qword ptr [rsp + 1136], rsp;         jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 5
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n219_keyword_icon_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n219_keyword_icon_α:    mov              qword ptr [rsp + 1296], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 1304], rax;         jmp   n220_lit_string_α
n219_keyword_icon_β:                                                          jmp   n223_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 3
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n221_var_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n222_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn431:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n223_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_unmark_α
n222_call_builtin_icon_β:
                                                                              jmp   n223_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n223_unmark_α:          mov              rsp, qword ptr [rsp + 1136];         jmp   n216_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 5
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n225_keyword_icon_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n225_keyword_icon_α:    mov              qword ptr [rsp + 992], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 1000], rax;         jmp   n226_lit_string_α
n225_keyword_icon_β:                                                          jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n227_var_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n228_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn440:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn440]
                        lea              rsi, [rsp + 896]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n229_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_lit_integer_α
n228_call_builtin_icon_β:
                                                                              jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n230_keyword_assign_α
.Lx441_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n230_keyword_assign_α:  mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n231_lit_integer_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n232_assign_α
.Lx443_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n233_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n233_rev_swap_α:        mov              qword ptr [rsp + 720], r14           # scan_δ
                        mov              qword ptr [rsp + 728], r15           # scan_Δ
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rsp + 4080]
                        lea              r8, [rsp + 688]
                        lea              r9, [rsp + 720]                      # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_fwd@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 720]
                        cmp              eax, 104;                            je    n238_lit_string_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n234_bound_α
n233_rev_swap_β:        mov              qword ptr [rsp + 720], r14
                        mov              qword ptr [rsp + 728], r15           # scan_Δ
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rsp + 4080]
                        lea              r8, [rsp + 688]
                        lea              r9, [rsp + 720]                      # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_undo@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 720];          jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_bound_α:           mov              qword ptr [rsp + 752], rsp;          jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n236_keyword_assign_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n236_keyword_assign_α:  mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n237_unmark_α
                        mov              qword ptr [rsp + 800], 2
                        mov              qword ptr [rsp + 808], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n237_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n237_unmark_α:          mov              rsp, qword ptr [rsp + 752];          jmp   n233_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 5
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n239_keyword_icon_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n239_keyword_icon_α:    mov              qword ptr [rsp + 608], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 616], rax;          jmp   n240_lit_string_α
n239_keyword_icon_β:                                                          jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 3
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n241_var_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 664], rax;          jmp   n242_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn458:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rsp + 512]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n243_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_lit_integer_α
n242_call_builtin_icon_β:
                                                                              jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n244_keyword_assign_α
.Lx459_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n244_keyword_assign_α:  mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n245_lit_integer_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n245_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n246_assign_α
.Lx461_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n247_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n247_rev_swap_α:        mov              qword ptr [rsp + 320], r14           # scan_δ
                        mov              qword ptr [rsp + 328], r15           # scan_Δ
                        mov              rdi, 0
                        lea              rsi, [rsp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rsp + 288]
                        lea              r9, [rsp + 320]                      # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_fwd@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 320]
                        cmp              eax, 104;                            je    n252_lit_string_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n248_bound_α
n247_rev_swap_β:        mov              qword ptr [rsp + 320], r14
                        mov              qword ptr [rsp + 328], r15           # scan_Δ
                        mov              rdi, 0
                        lea              rsi, [rsp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rsp + 288]
                        lea              r9, [rsp + 320]                      # scan_δ
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_rev_swap_undo@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, qword ptr [rsp + 320];          jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_bound_α:           mov              qword ptr [rsp + 352], rsp;          jmp   n249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n250_keyword_assign_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n250_keyword_assign_α:  mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n251_unmark_α
                        mov              qword ptr [rsp + 400], 2
                        mov              qword ptr [rsp + 408], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n251_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n251_unmark_α:          mov              rsp, qword ptr [rsp + 352];          jmp   n247_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 5
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n253_keyword_icon_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n253_keyword_icon_α:    mov              qword ptr [rsp + 208], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 216], rax;          jmp   n254_lit_string_α
n253_keyword_icon_β:                                                          jmp   n259_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 3
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n255_var_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 264], rax;          jmp   n256_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn476:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rsp + 112]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n259_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_conjunction_α
n256_call_builtin_icon_β:
                                                                              jmp   n259_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n257_conjunction_α:     mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n258_scan_α
n257_conjunction_β:                                                           jmp   n259_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n258_scan_α:            mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_γ
n258_scan_β:                                                                  jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n259_scan_α:            lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n259_scan_β:                                                                  jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
