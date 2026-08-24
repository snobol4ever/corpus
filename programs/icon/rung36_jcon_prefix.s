                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__prefix:
                        sub              rsp, 464
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
prefix_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:  mov              r11, 2
                        lea              rsi, [rsp + 384]
                        call             strip_dcα;                           jmp   .Lx17_2
.Lx17_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx17_29
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
.Lx17_29:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n3_disjunction_α
                                                                              jmp   n2_assign_α
n1_call_proc_staged_β:  mov              r11, 2;                              jmp   n3_disjunction_α
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "strip"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              r11, 4
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n9_var_α
n3_disjunction_as:      mov              r11, 4
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx20_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   n4_return_α
.Lx20_0:                cmp              eax, 1;                              jne   .Lx20_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 40], rax;           jmp   n4_return_α
.Lx20_1:                cmp              eax, 2;                              jne   .Lx20_2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n4_return_α
.Lx20_2:                                                                      jmp   n4_return_α
n3_disjunction_β:       mov              r11, 4
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n10_disjunction_β
                        cmp              eax, 1;                              je    n3_disjunction_af
                                                                              jmp   n3_disjunction_af
n3_disjunction_af:      mov              r11, 4
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n6_var_α
                        cmp              eax, 2;                              je    n5_var_α
                                                                              jmp   prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_return_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   prefix_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n3_disjunction_as
n5_var_β:               mov              r11, 6;                              jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n7_lit_charset_α
n6_var_β:               mov              r11, 7;                              jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_charset_α:       mov              r11, 8
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], -1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n8_call_proc_staged_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:  mov              r11, 9
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 288]
                        call             rassoc_dcα;                          jmp   .Lx28_2
.Lx28_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx28_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx28_29:               mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n3_disjunction_af
                                                                              jmp   n3_disjunction_as
n8_call_proc_staged_β:  mov              r11, 9;                              jmp   n3_disjunction_af
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "rassoc"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_disjunction_α
n9_var_β:               mov              r11, 10;                             jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n13_lit_charset_α
n10_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n11_call_proc_staged_α
.Lx32_0:                cmp              eax, 1;                              jne   .Lx32_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n11_call_proc_staged_α
.Lx32_1:                                                                      jmp   n11_call_proc_staged_α
n10_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n12_lit_charset_α
                                                                              jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α: mov              r11, 12
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        call             lassoc_dcα;                          jmp   .Lx34_2
.Lx34_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx34_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx34_29:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n10_disjunction_β
                                                                              jmp   n3_disjunction_as
n11_call_proc_staged_β: mov              r11, 12;                             jmp   n10_disjunction_β
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "lassoc"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:      mov              r11, 13
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n10_disjunction_as
n12_lit_charset_β:      mov              r11, 13;                             jmp   n10_disjunction_af
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "*/"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_charset_α:      mov              r11, 14
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], -1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n10_disjunction_as
n13_lit_charset_β:      mov              r11, 14;                             jmp   n10_disjunction_af
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "+-"
#-----------------------------------------------------------------------------------------------------------------------
prefix_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
prefix_β:
                                                                              jmp   prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
prefix_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 464;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
prefix_ω:
                        add              rsp, 464;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
prefix_dcα:
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
                        lea              rcx, [rip + .Lx37_3]
                        push             rcx
                        lea              rcx, [rip + .Lx37_2]
                        push             rcx;                                 jmp   FN__prefix
.Lx37_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx37_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__strip:
                        sub              rsp, 464
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
strip_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n39_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n39_scan_enter_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
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
                        mov              r14, 0;                              jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n41_scan_match_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_match_α:       mov              r11, 18
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n52_scan_α
                        mov              rdi, qword ptr [rip + .Lx61_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n52_scan_α
                        mov              qword ptr [rsp + 336], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 344], rax;          jmp   n42_scan_tab_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_tab_α:         mov              r11, 19
                        mov              rax, qword ptr [rsp + 344]
                        cmp              rax, 1;                              jge   .Lx63_0
                        add              rax, r15
                        add              rax, 1
.Lx63_0:                cmp              rax, 1;                              jl    n52_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n52_scan_α
                        mov              qword ptr [rsp + 320], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n43_var_α
n42_scan_tab_β:         mov              r11, 19
                        mov              r14, qword ptr [rsp + 320];          jmp   n52_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_charset_α:      mov              r11, 21
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], -1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n45_scan_bal_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_bal_α:         mov              r11, 22
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n46_scan_tab_α:         mov              r11, 23
                        mov              rax, qword ptr [rsp + 264]
                        cmp              rax, 1;                              jge   .Lx70_0
                        add              rax, r15
                        add              rax, 1
.Lx70_0:                cmp              rax, 1;                              jl    n45_scan_bal_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n45_scan_bal_β
                        mov              qword ptr [rsp + 240], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n47_rev_assign_α
n46_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rsp + 240];          jmp   n45_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n47_rev_assign_α:       mov              r11, 24
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              rcx, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], rsi
                        mov              qword ptr [rsp + 176], rcx
                        mov              qword ptr [rsp + 184], rsi;          jmp   n48_lit_integer_α
n47_rev_assign_β:       mov              r11, 24
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n45_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n49_scan_pos_α
.Lx72_0:                .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_pos_α:         mov              r11, 26
                        mov              rax, -1
                        cmp              rax, 1;                              jge   .Lx74_0
                        add              rax, r15
                        add              rax, 1
.Lx74_0:                cmp              rax, 1;                              jl    n47_rev_assign_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n47_rev_assign_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n47_rev_assign_β
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n50_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_conjunction_α:      mov              r11, 27
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n51_scan_α
n50_conjunction_β:      mov              r11, 27;                             jmp   n52_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_α:             mov              r11, 28
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n38_var_α
n51_scan_β:             mov              r11, 28;                             jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_scan_α:             mov              r11, 29
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n53_var_α
n52_scan_β:             mov              r11, 29;                             jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n54_return_α
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   strip_γ
#-----------------------------------------------------------------------------------------------------------------------
strip_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
strip_β:
                                                                              jmp   strip_ω
#-----------------------------------------------------------------------------------------------------------------------
strip_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 464;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
strip_ω:
                        add              rsp, 464;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
strip_dcα:
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
                        lea              rcx, [rip + .Lx83_3]
                        push             rcx
                        lea              rcx, [rip + .Lx83_2]
                        push             rcx;                                 jmp   FN__strip
.Lx83_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx83_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__lassoc:
                        sub              rsp, 416
                        mov              rdi, rsp
                        add              rdi, 304
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
lassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n85_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:       mov              r11, 33
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
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
                        mov              r14, 0;                              jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 280], rax;          jmp   n87_scan_bal_α
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_bal_α:         mov              r11, 35
                        mov              qword ptr [rsp + 256], r14
                        mov              qword ptr [rsp + 264], 0
.Lx102_0:               mov              rax, qword ptr [rsp + 256]
                        cmp              rax, r15;                            jge   n89_scan_α
                        mov              rdx, qword ptr [rsp + 264]
                        cmp              rdx, 0;                              jne   .Lx102_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 280]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx102_1
                        mov              qword ptr [rsp + 240], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 248], rax;          jmp   n88_assign_α
.Lx102_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx102_2
                        inc              qword ptr [rsp + 264];               jmp   .Lx102_3
.Lx102_2:               cmp              rsi, 41;                             jne   .Lx102_3
                        mov              rdx, qword ptr [rsp + 264]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 264], rdx
                        cmp              rdx, 0;                              jl    n89_scan_α
.Lx102_3:               inc              qword ptr [rsp + 256];               jmp   .Lx102_0
n87_scan_bal_β:         mov              r11, 35
                        inc              qword ptr [rsp + 256];               jmp   .Lx102_0
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n87_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_α:             mov              r11, 37
                        lea              rdi, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 176]
                        mov              r14, qword ptr [rsp + 184]
                        mov              r15, qword ptr [rsp + 192];          jmp   n90_var_α
n89_scan_β:             mov              r11, 37;                             jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 152], rax;          jmp   n92_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n92_unop_test_α:        mov              r11, 40
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 104;                             je    lassoc_ω
                        cmp              eax, 0;                              je    lassoc_ω
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 136], rax;          jmp   n93_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α: mov              r11, 41
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 128]
                        call             form_dcα;                            jmp   .Lx112_2
.Lx112_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx112_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    lassoc_ω
                                                                              jmp   n94_return_α
n93_call_proc_staged_β: mov              r11, 41;                             jmp   lassoc_ω
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "form"
#-----------------------------------------------------------------------------------------------------------------------
n94_return_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   lassoc_γ
#-----------------------------------------------------------------------------------------------------------------------
lassoc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lassoc_β:
                                                                              jmp   lassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
lassoc_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 416;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
lassoc_ω:
                        add              rsp, 416;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
lassoc_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx114_3]
                        push             rcx
                        lea              rcx, [rip + .Lx114_2]
                        push             rcx;                                 jmp   FN__lassoc
.Lx114_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx114_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__rassoc:
                        sub              rsp, 368
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
rassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             mov              r11, 43
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 44
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n117_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n117_scan_enter_α:      mov              r11, 45
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
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
                        mov              r14, 0;                              jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 248], rax;          jmp   n119_scan_bal_α
#-----------------------------------------------------------------------------------------------------------------------
n119_scan_bal_α:        mov              r11, 47
                        mov              qword ptr [rsp + 224], r14
                        mov              qword ptr [rsp + 232], 0
.Lx133_0:               mov              rax, qword ptr [rsp + 224]
                        cmp              rax, r15;                            jge   n123_scan_α
                        mov              rdx, qword ptr [rsp + 232]
                        cmp              rdx, 0;                              jne   .Lx133_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 248]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx133_1
                        mov              qword ptr [rsp + 208], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 216], rax;          jmp   n120_scan_α
.Lx133_1:               mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40;                             jne   .Lx133_2
                        inc              qword ptr [rsp + 232];               jmp   .Lx133_3
.Lx133_2:               cmp              rsi, 41;                             jne   .Lx133_3
                        mov              rdx, qword ptr [rsp + 232]
                        sub              rdx, 1
                        mov              qword ptr [rsp + 232], rdx
                        cmp              rdx, 0;                              jl    n123_scan_α
.Lx133_3:               inc              qword ptr [rsp + 224];               jmp   .Lx133_0
n119_scan_bal_β:        mov              r11, 47
                        inc              qword ptr [rsp + 224];               jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n120_scan_α:            mov              r11, 48
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 144]
                        mov              r14, qword ptr [rsp + 152]
                        mov              r15, qword ptr [rsp + 160];          jmp   n121_call_proc_staged_α
n120_scan_β:            mov              r11, 48
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n119_scan_bal_β
                                                                              jmp   rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              r11, 49
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 176]
                        call             form_dcα;                            jmp   .Lx137_2
.Lx137_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx137_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx137_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n120_scan_β
                                                                              jmp   n122_return_α
n121_call_proc_staged_β:
                        mov              r11, 49;                             jmp   n120_scan_β
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "form"
#-----------------------------------------------------------------------------------------------------------------------
n122_return_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   rassoc_γ
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:            mov              r11, 51
                        lea              rdi, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 144]
                        mov              r14, qword ptr [rsp + 152]
                        mov              r15, qword ptr [rsp + 160];          jmp   rassoc_ω
n123_scan_β:            mov              r11, 51;                             jmp   rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
rassoc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rassoc_β:
                                                                              jmp   rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
rassoc_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 368;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
rassoc_ω:
                        add              rsp, 368;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
rassoc_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx141_3]
                        push             rcx
                        lea              rcx, [rip + .Lx141_2]
                        push             rcx;                                 jmp   FN__rassoc
.Lx141_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx141_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__form:
                        sub              rsp, 784
                        mov              rdi, rsp
                        add              rdi, 608
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
form_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              r11, 52
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n143_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_enter_α:      mov              r11, 53
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
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
                        mov              r14, 0;                              jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 54
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 584], rax;          jmp   n145_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n145_scan_tab_α:        mov              r11, 55
                        mov              rax, qword ptr [rsp + 584]
                        cmp              rax, 1;                              jge   .Lx177_0
                        add              rax, r15
                        add              rax, 1
.Lx177_0:               cmp              rax, 1;                              jl    n147_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n147_lit_integer_α
                        mov              qword ptr [rsp + 560], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n146_assign_α
n145_scan_tab_β:        mov              r11, 55
                        mov              r14, qword ptr [rsp + 560];          jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 56
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 57
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n148_scan_move_α
.Lx179_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_move_α:       mov              r11, 58
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n150_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n150_lit_integer_α
                        mov              qword ptr [rsp + 512], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n149_assign_α
n148_scan_move_β:       mov              r11, 58
                        mov              r14, qword ptr [rsp + 512];          jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              r11, 59
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n151_scan_tab_α
.Lx183_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n151_scan_tab_α:        mov              r11, 61
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx185_0
                        add              rax, r15
                        add              rax, 1
.Lx185_0:               cmp              rax, 1;                              jl    n155_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n155_scan_α
                        mov              qword ptr [rsp + 448], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n152_assign_α
n151_scan_tab_β:        mov              r11, 61
                        mov              r14, qword ptr [rsp + 448];          jmp   n155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              r11, 62
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n153_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n153_conjunction_α:     mov              r11, 63
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n154_scan_α
n153_conjunction_β:     mov              r11, 63;                             jmp   n155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n154_scan_α:            mov              r11, 64
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352];          jmp   n156_var_α
n154_scan_β:            mov              r11, 64;                             jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_scan_α:            mov              r11, 65
                        lea              rdi, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352];          jmp   n156_var_α
n155_scan_β:            mov              r11, 65;                             jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              r11, 66
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 136], rax;          jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 67
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n158_binop_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:           mov              r11, 68
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             mov              r11, 69
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 216], rax;          jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              r11, 70
                        lea              rsi, [rsp + 208]
                        call             prefix_dcα;                          jmp   .Lx199_2
.Lx199_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx199_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx199_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    form_ω
                                                                              jmp   n161_binop_α
n160_call_proc_staged_β:
                        mov              r11, 70;                             jmp   form_ω
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:           mov              r11, 71
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n163_binop_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n163_binop_α:           mov              r11, 73
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 74
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 296], rax;          jmp   n165_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        mov              r11, 75
                        lea              rsi, [rsp + 288]
                        call             prefix_dcα;                          jmp   .Lx206_2
.Lx206_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx206_29
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
.Lx206_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    form_ω
                                                                              jmp   n166_binop_α
n165_call_proc_staged_β:
                        mov              r11, 75;                             jmp   form_ω
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           mov              r11, 76
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n168_binop_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           mov              r11, 78
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_return_α
#-----------------------------------------------------------------------------------------------------------------------
n169_return_α:          mov              r11, 79
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   form_γ
#-----------------------------------------------------------------------------------------------------------------------
form_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
form_β:
                                                                              jmp   form_ω
#-----------------------------------------------------------------------------------------------------------------------
form_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 784;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
form_ω:
                        add              rsp, 784;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
form_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx211_3]
                        push             rcx
                        lea              rcx, [rip + .Lx211_2]
                        push             rcx;                                 jmp   FN__form
.Lx211_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx211_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 176
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        mov              r11, 80
                        .section         .rodata
.Lrkfn216:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 112]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_call_proc_staged_α
n212_call_builtin_icon_β:
                        mov              r11, 80;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              r11, 81
                        lea              rsi, [rsp + 96]
                        call             prefix_dcα;                          jmp   .Lx218_2
.Lx218_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx218_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx218_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n214_call_builtin_icon_α
n213_call_proc_staged_β:
                        mov              r11, 81;                             jmp   main_ω
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_call_builtin_icon_α
n214_call_builtin_icon_β:
                        mov              r11, 82;                             jmp   main_ω
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "prefix"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__prefix
                        .quad            prefix_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "strip"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__strip
                        .quad            strip_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "lassoc"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__lassoc
                        .quad            lassoc_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            320
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "rassoc"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__rassoc
                        .quad            rassoc_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "form"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__form
                        .quad            form_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            656
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
                        .text
                        .section         .note.GNU-stack,"",@progbits
